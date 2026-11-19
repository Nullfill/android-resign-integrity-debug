"""Extract the original signing certificate (DER) from base.apk's v2/v3 APK Signing Block."""
import struct, sys, hashlib

APK = r"D:\appx_patch\base.apk"

with open(APK, "rb") as f:
    data = f.read()

# --- locate EOCD ---
eocd = data.rfind(b"\x50\x4b\x05\x06")
if eocd < 0:
    sys.exit("no EOCD")
cd_offset = struct.unpack_from("<I", data, eocd + 16)[0]

MAGIC = b"APK Sig Block 42"
# signing block ends 24 bytes before central directory start... actually:
# layout: [block][cd]. Block tail: size(8) + magic(16) immediately before cd_offset.
if data[cd_offset - 16:cd_offset] != MAGIC:
    sys.exit("no signing block magic at cd-16")
blk_size2 = struct.unpack_from("<Q", data, cd_offset - 24)[0]
blk_start = cd_offset - 8 - blk_size2  # first size field position
size1 = struct.unpack_from("<Q", data, blk_start)[0]
if size1 != blk_size2:
    sys.exit("size mismatch")

# pairs live between (blk_start+8) and (cd_offset-24)
off = blk_start + 8
end = cd_offset - 24
blocks = {}
while off < end:
    (plen,) = struct.unpack_from("<Q", data, off)
    off += 8
    (bid,) = struct.unpack_from("<I", data, off)
    blocks[bid] = data[off + 4: off + plen]
    off += plen

print("signing block ids found:", [hex(k) for k in blocks])

def u32(b, o): return struct.unpack_from("<I", b, o)[0]
def u64(b, o): return struct.unpack_from("<Q", b, o)[0]

def parse_v2(block):
    # block = sequence of signers (u32 count, then len-prefixed signers)
    o = 0
    n = u32(block, o); o += 4
    signer_len = u32(block, o); o += 4
    signer = block[o:o + signer_len]
    # signer = signed_data(len) | signatures(len) | public_key(len)
    sd_len = u32(signer, 0)
    sd = signer[4:4 + sd_len]
    # signed_data = digests(len) | certificates(u32 count, len-prefixed) | attributes(len)
    p = 0
    d_len = u32(sd, p); p += 4 + d_len
    cnt = u32(sd, p); p += 4
    cert_len = u32(sd, p); p += 4
    cert = sd[p:p + cert_len]
    return cert, cnt

def parse_v3(block):
    o = 0
    n = u32(block, o); o += 4   # min sdk
    o += 4                       # max sdk
    sigs_len = u32(block, o); o += 4 + sigs_len
    # level-collapsed: while more signers...
    out = None
    while o < len(block) - 3:
        signer_len = u32(block, o); o += 4
        signer = block[o:o + signer_len]; o += signer_len
        sd_len = u32(signer, 0)
        sd = signer[4:4 + sd_len]
        p = 0
        d_len = u32(sd, p); p += 4 + d_len
        cnt = u32(sd, p); p += 4
        cert_len = u32(sd, p); p += 4
        cert = sd[p:p + cert_len]
        if out is None:
            out = cert
    return out, 0

cert = None
if 0x7109871a in blocks:
    cert, cnt = parse_v2(blocks[0x7109871a])
    print(f"v2 block: cert {len(cert)} bytes (of {cnt} certs)")
elif 0xf05368c0 in blocks:
    cert, cnt = parse_v3(blocks[0xf05368c0])
    print(f"v3 block: cert {len(cert)} bytes")

if not cert:
    sys.exit("no cert extracted")

sha = hashlib.sha256(cert).hexdigest()
md5 = hashlib.md5(cert).hexdigest()
sha1 = hashlib.sha1(cert).hexdigest()
print("cert SHA-256:", sha)
print("cert SHA-1  :", sha1)
print("cert MD5    :", md5)

with open(r"D:\appx_patch\orig_cert.der", "wb") as f:
    f.write(cert)
with open(r"D:\appx_patch\orig_cert.hex", "w") as f:
    f.write(cert.hex())
print("saved orig_cert.der / orig_cert.hex")

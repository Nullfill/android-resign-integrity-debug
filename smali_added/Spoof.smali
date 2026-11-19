.class public final Lcom/appx/patcher/Spoof;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;
    .locals 3

    if-eqz p0, :ret

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.ourcompany.appx"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :ret

    :try_start_0
    invoke-static {}, Lcom/appx/patcher/Spoof;->signingInfo()Landroid/content/pm/SigningInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :sig

    :catch_0
    move-exception v0

    :sig
    invoke-static {p0}, Lcom/appx/patcher/OrigSig;->a(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    :ret
    return-object p0
.end method

.method public static appInfo(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    .locals 3

    if-eqz p0, :ret

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.ourcompany.appx"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :ret

    :try_start_0
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    const-string v2, "/data/local/tmp/orig_signed.apk"

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object p0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :ret

    :catch_0
    move-exception v1

    :ret
    return-object p0
.end method

.method public static signingInfo()Landroid/content/pm/SigningInfo;
    .locals 6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {}, Lcom/appx/patcher/OrigSig;->b()[Landroid/content/pm/Signature;

    move-result-object v2

    array-length v3, v2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    array-length v5, v4

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    array-length v3, v2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    array-length v5, v4

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v3, Landroid/content/pm/SigningInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/SigningInfo;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v3
.end method

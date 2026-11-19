.class public final Lcom/appx/patcher/OrigSig;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Landroid/content/pm/Signature;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "<ORIGINAL_CERT_HEX>"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aput-object v0, v2, v1

    sput-object v2, Lcom/appx/patcher/OrigSig;->a:[Landroid/content/pm/Signature;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;
    .locals 2

    if-eqz p0, :own

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.ourcompany.appx"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :real

    :own
    sget-object v0, Lcom/appx/patcher/OrigSig;->a:[Landroid/content/pm/Signature;

    return-object v0

    :real
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method public static b()[Landroid/content/pm/Signature;
    .locals 1

    sget-object v0, Lcom/appx/patcher/OrigSig;->a:[Landroid/content/pm/Signature;

    return-object v0
.end method

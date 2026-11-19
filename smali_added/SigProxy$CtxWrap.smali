.class public final Lcom/appx/patcher/SigProxy$CtxWrap;
.super Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 2

    invoke-super {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Lcom/appx/patcher/SigProxy$PmProxy;

    invoke-direct {v1, v0}, Lcom/appx/patcher/SigProxy$PmProxy;-><init>(Landroid/content/pm/PackageManager;)V

    return-object v1
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    invoke-super {p0}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/appx/patcher/Spoof;->appInfo(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPackageCodePath()Ljava/lang/String;
    .locals 1

    const-string v0, "/data/local/tmp/orig_signed.apk"

    return-object v0
.end method

.method public getPackageResourcePath()Ljava/lang/String;
    .locals 1

    const-string v0, "/data/local/tmp/orig_signed.apk"

    return-object v0
.end method

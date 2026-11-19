.class public final Lcom/appx/patcher/SigProxy$PmProxy;
.super Landroid/content/pm/PackageManager;


# instance fields
.field private final a:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/PackageManager;-><init>()V

    iput-object p1, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public addCrossProfileIntentFilter(Landroid/content/IntentFilter;III)V
    .locals 6

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v1 .. v5}, Landroid/content/pm/PackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;III)V

    return-void
.end method

.method public addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    return-void
.end method

.method public addPackageToPreferred(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->addPackageToPreferred(Ljava/lang/String;)V

    return-void
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;)Z
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->addPermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v0

    return v0
.end method

.method public addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z

    move-result v0

    return v0
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 6

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v1 .. v5}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-void
.end method

.method public arePermissionsIndividuallyControlled()Z
    .locals 2

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->arePermissionsIndividuallyControlled()Z

    move-result v0

    return v0
.end method

.method public canRequestPackageInstalls()Z
    .locals 2

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    return v0
.end method

.method public canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkSignatures(II)I
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v0

    return v0
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    return-void
.end method

.method public clearCrossProfileIntentFilters(I)V
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->clearCrossProfileIntentFilters(I)V

    return-void
.end method

.method public clearInstantAppCookie()V
    .locals 2

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->clearInstantAppCookie()V

    return-void
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    return-void
.end method

.method public currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    return-void
.end method

.method public deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    return-void
.end method

.method public deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move-object v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    return-void
.end method

.method public deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    .locals 6

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v1 .. v5}, Landroid/content/pm/PackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    return-void
.end method

.method public extendVerificationTimeout(IIJ)V
    .locals 6

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move v2, v7

    move v3, v8

    move-wide v4, v9

    invoke-virtual/range {v1 .. v5}, Landroid/content/pm/PackageManager;->extendVerificationTimeout(IIJ)V

    return-void
.end method

.method public flushPackageRestrictionsAsUser(I)V
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->flushPackageRestrictionsAsUser(I)V

    return-void
.end method

.method public freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V
    .locals 6

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v7

    move-wide v3, v8

    move-object v5, v10

    invoke-virtual/range {v1 .. v5}, Landroid/content/pm/PackageManager;->freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V

    return-void
.end method

.method public freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V
    .locals 6

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v7

    move-wide v3, v8

    move-object v5, v10

    invoke-virtual/range {v1 .. v5}, Landroid/content/pm/PackageManager;->freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V

    return-void
.end method

.method public getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getActivityBanner(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getActivityBanner(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationBanner(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getApplicationBanner(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getApplicationHiddenSettingAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/appx/patcher/Spoof;->appInfo(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/appx/patcher/Spoof;->appInfo(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCarLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getCarLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getChangedPackages(I)Landroid/content/pm/ChangedPackages;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getChangedPackages(I)Landroid/content/pm/ChangedPackages;

    move-result-object v0

    return-object v0
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;)I
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getInstallReason(Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getInstallReason(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    return v0
.end method

.method public getInstalledApplications(I)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledApplicationsAsUser(II)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledPackages(I)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledPackagesAsUser(II)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstantAppAndroidId(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getInstantAppAndroidId(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstantAppCookie()[B
    .locals 2

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getInstantAppCookie()[B

    move-result-object v0

    return-object v0
.end method

.method public getInstantAppCookieMaxBytes()I
    .locals 2

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getInstantAppCookieMaxBytes()I

    move-result v0

    return v0
.end method

.method public getInstantAppCookieMaxSize()I
    .locals 2

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getInstantAppCookieMaxSize()I

    move-result v0

    return v0
.end method

.method public getInstantAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getInstantAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getInstantAppInstallerComponent()Landroid/content/ComponentName;
    .locals 2

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getInstantAppInstallerComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getInstantAppResolverSettingsComponent()Landroid/content/ComponentName;
    .locals 2

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getInstantAppResolverSettingsComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getInstantApps()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getInstantApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIntentVerificationStatusAsUser(Ljava/lang/String;I)I
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object v0

    return-object v0
.end method

.method public getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getMoveStatus(I)I
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getMoveStatus(I)I

    move-result v0

    return v0
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamesForUids([I)[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getNamesForUids([I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getPackageGids(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getPackageGids(Ljava/lang/String;I)[I
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getPackageGids(Ljava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfo(Landroid/content/pm/VersionedPackage;I)Landroid/content/pm/PackageInfo;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Landroid/content/pm/VersionedPackage;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/appx/patcher/Spoof;->apply(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/appx/patcher/Spoof;->apply(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/appx/patcher/Spoof;->apply(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPackageInstaller()Landroid/content/pm/PackageInstaller;
    .locals 2

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    return-object v0
.end method

.method public getPackageSizeInfoAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->getPackageSizeInfoAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    return-void
.end method

.method public getPackageUid(Ljava/lang/String;I)I
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPackageUidAsUser(Ljava/lang/String;I)I
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPackageUidAsUser(Ljava/lang/String;II)I
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    return v0
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPreferredPackages(I)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getPreferredPackages(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryStorageCandidateVolumes()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPrimaryStorageCandidateVolumes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;
    .locals 2

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getServicesSystemSharedLibraryPackageName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharedLibraries(I)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getSharedLibraries(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSharedLibrariesAsUser(II)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getSharedLibrariesAsUser(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSharedSystemSharedLibraryPackageName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSharedSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object v0

    return-object v0
.end method

.method public getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    .locals 2

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSystemSharedLibraryNames()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUidForSharedUser(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getUserBadgeForDensityNoBackground(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getUserBadgeForDensityNoBackground(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
    .locals 6

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v1 .. v5}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;
    .locals 2

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    return-object v0
.end method

.method public getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public hasSystemFeature(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasSystemFeature(Ljava/lang/String;I)Z
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public installExistingPackage(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->installExistingPackage(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public installExistingPackage(Ljava/lang/String;I)I
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->installExistingPackage(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public installExistingPackageAsUser(Ljava/lang/String;I)I
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isInstantApp()Z
    .locals 2

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result v0

    return v0
.end method

.method public isInstantApp(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->isInstantApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPackageAutoDisabled(Ljava/lang/String;I)Z
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->isPackageAutoDisabled(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isPackageAvailable(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSafeMode()Z
    .locals 2

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    return v0
.end method

.method public isSignedBy(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->isSignedBy(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result v0

    return v0
.end method

.method public isSignedByExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->isSignedByExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result v0

    return v0
.end method

.method public isUpgrade()Z
    .locals 2

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isUpgrade()Z

    move-result v0

    return v0
.end method

.method public isWirelessConsentModeEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isWirelessConsentModeEnabled()Z

    move-result v0

    return v0
.end method

.method public loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public movePackage(Ljava/lang/String;Landroid/os/storage/VolumeInfo;)I
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/os/storage/VolumeInfo;)I

    move-result v0

    return v0
.end method

.method public movePrimaryStorage(Landroid/os/storage/VolumeInfo;)I
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->movePrimaryStorage(Landroid/os/storage/VolumeInfo;)I

    move-result v0

    return v0
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;
    .locals 6

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v1 .. v5}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentContentProvidersAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->queryIntentContentProvidersAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public registerDexModule(Ljava/lang/String;Landroid/content/pm/PackageManager$DexModuleRegisterCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->registerDexModule(Ljava/lang/String;Landroid/content/pm/PackageManager$DexModuleRegisterCallback;)V

    return-void
.end method

.method public registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public removeOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->removeOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    return-void
.end method

.method public removePackageFromPreferred(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->removePackageFromPreferred(Ljava/lang/String;)V

    return-void
.end method

.method public removePermission(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->removePermission(Ljava/lang/String;)V

    return-void
.end method

.method public replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 6

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v1 .. v5}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-void
.end method

.method public resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public setApplicationCategoryHint(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->setApplicationCategoryHint(Ljava/lang/String;I)V

    return-void
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;II)V
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    return-void
.end method

.method public setApplicationHiddenSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInstantAppCookie([B)Z
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->setInstantAppCookie([B)Z

    move-result v0

    return v0
.end method

.method public setUpdateAvailable(Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->setUpdateAvailable(Ljava/lang/String;Z)V

    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public unregisterMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->unregisterMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;)V

    return-void
.end method

.method public updateInstantAppCookie([B)V
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->updateInstantAppCookie([B)V

    return-void
.end method

.method public updateIntentVerificationStatusAsUser(Ljava/lang/String;II)Z
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatusAsUser(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .locals 7

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move v5, v11

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    return-void
.end method

.method public verifyIntentFilter(IILjava/util/List;)V
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->verifyIntentFilter(IILjava/util/List;)V

    return-void
.end method

.method public verifyPendingInstall(II)V
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->verifyPendingInstall(II)V

    return-void
.end method

.method public getActivityInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/appx/patcher/Spoof;->appInfo(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move-object v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/appx/patcher/Spoof;->appInfo(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;Landroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;Landroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/appx/patcher/Spoof;->appInfo(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredSharedLibraries(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getDeclaredSharedLibraries(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledApplications(Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledApplicationsAsUser(Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledPackages(Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledPackagesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackageArchiveInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPackageGids(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)[I
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getPackageGids(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)[I

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfo(Landroid/content/pm/VersionedPackage;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Landroid/content/pm/VersionedPackage;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/appx/patcher/Spoof;->apply(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/appx/patcher/Spoof;->apply(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move-object v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/appx/patcher/Spoof;->apply(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPackageUid(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)I
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)I

    move-result v0

    return v0
.end method

.method public getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move-object v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    move-result v0

    return v0
.end method

.method public getPackagesHoldingPermissions([Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProviderInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public getServiceInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ServiceInfo;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSharedLibraries(Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v4

    invoke-virtual/range {v1 .. v2}, Landroid/content/pm/PackageManager;->getSharedLibraries(Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSharedLibrariesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->getSharedLibrariesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move-object v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryContentProviders(Ljava/lang/String;ILandroid/content/pm/PackageManager$ComponentInfoFlags;)Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;ILandroid/content/pm/PackageManager$ComponentInfoFlags;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryContentProviders(Ljava/lang/String;ILandroid/content/pm/PackageManager$ComponentInfoFlags;Ljava/lang/String;)Ljava/util/List;
    .locals 6

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v1 .. v5}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;ILandroid/content/pm/PackageManager$ComponentInfoFlags;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentActivities(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentActivitiesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move-object v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentActivitiesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentActivityOptions(Landroid/content/ComponentName;Ljava/util/List;Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .locals 6

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v1 .. v5}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;Ljava/util/List;Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentContentProviders(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentContentProvidersAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move-object v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->queryIntentContentProvidersAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentContentProvidersAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->queryIntentContentProvidersAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentServices(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move-object v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public resolveActivity(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolveActivityAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Landroid/content/pm/ResolveInfo;
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move-object v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolveActivityAsUser(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Landroid/content/pm/ResolveInfo;
    .locals 6

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v1 .. v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolveContentProvider(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolveContentProviderAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;I)Landroid/content/pm/ProviderInfo;
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move-object v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolveContentProviderForUid(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;I)Landroid/content/pm/ProviderInfo;
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move-object v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->resolveContentProviderForUid(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolveService(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move-object v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolveServiceAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Landroid/content/pm/ResolveInfo;
    .locals 5

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v6

    move-object v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v4}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public semGetInstalledPackagesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/appx/patcher/SigProxy$PmProxy;->a:Landroid/content/pm/PackageManager;

    move-object v1, v0

    move-object v2, v5

    move v3, v6

    invoke-virtual/range {v1 .. v3}, Landroid/content/pm/PackageManager;->semGetInstalledPackagesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


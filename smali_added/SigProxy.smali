.class public final Lcom/appx/patcher/SigProxy;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrap(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    if-nez p0, :ok

    const/4 v0, 0x0

    return-object v0

    :ok
    new-instance v0, Lcom/appx/patcher/SigProxy$CtxWrap;

    invoke-direct {v0, p0}, Lcom/appx/patcher/SigProxy$CtxWrap;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

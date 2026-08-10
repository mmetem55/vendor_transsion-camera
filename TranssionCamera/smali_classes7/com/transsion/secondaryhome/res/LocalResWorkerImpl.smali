.class public Lcom/transsion/secondaryhome/res/LocalResWorkerImpl;
.super Ljava/lang/Object;
.source "LocalResWorkerImpl.java"

# interfaces
.implements Lcom/transsion/secondaryhome/res/ResWorkerInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssetManager(Landroid/content/Context;)Landroid/content/res/AssetManager;
    .locals 0

    const-string p0, "kolun_secondaryHome_sdk"

    const-string p1, "LocalResWorkerImpl.getAssetManager() method Local direct call is not supported!!!"

    .line 38
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    const-string p0, "kolun_secondaryHome_sdk"

    const-string p1, "LocalResWorkerImpl.getCurrentContext() method Local direct call is not supported!!!"

    .line 45
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 0

    const-string p0, "kolun_secondaryHome_sdk"

    const-string p1, "LocalResWorkerImpl.getLayoutInflater() method Local direct call is not supported!!!"

    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getResId(Landroid/content/Context;IILjava/lang/Class;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    const-string p0, "kolun_secondaryHome_sdk"

    const-string p1, "LocalResWorkerImpl.getResId() method Local direct call is not supported!!!"

    .line 24
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 0

    const-string p0, "kolun_secondaryHome_sdk"

    const-string p1, "LocalResWorkerImpl.getResources() method Local direct call is not supported!!!"

    .line 31
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

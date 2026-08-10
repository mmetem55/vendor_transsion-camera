.class public Lcom/transsion/secondaryhome/res/RemoteResWorkerImpl;
.super Ljava/lang/Object;
.source "RemoteResWorkerImpl.java"

# interfaces
.implements Lcom/transsion/secondaryhome/res/ResWorkerInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getRemoteContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    const-string p0, "kolun_secondaryHome_sdk"

    const-string p1, "RemoteResWorkerImpl.getRemoteContext() method Local direct call is not supported!!!"

    .line 52
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAssetManager(Landroid/content/Context;)Landroid/content/res/AssetManager;
    .locals 0

    const-string p0, "kolun_secondaryHome_sdk"

    const-string p1, "RemoteResWorkerImpl.getAssetManager() method Local direct call is not supported!!!"

    .line 39
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    const-string p0, "kolun_secondaryHome_sdk"

    const-string p1, "RemoteResWorkerImpl.getCurrentContext() method Local direct call is not supported!!!"

    .line 46
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 0

    const-string p0, "kolun_secondaryHome_sdk"

    const-string p1, "RemoteResWorkerImpl.getLayoutInflater() method Local direct call is not supported!!!"

    .line 18
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized getRemoteResId(Landroid/content/Context;Ljava/lang/Class;II)I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DiscouragedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;II)I"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string p1, "kolun_secondaryHome_sdk"

    const-string p2, "RemoteResWorkerImpl.getRemoteResId() method Local direct call is not supported!!!"

    .line 59
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 60
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
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

    const-string p1, "RemoteResWorkerImpl.getResId() method Local direct call is not supported!!!"

    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 0

    const-string p0, "kolun_secondaryHome_sdk"

    const-string p1, "RemoteResWorkerImpl.getResources() method Local direct call is not supported!!!"

    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

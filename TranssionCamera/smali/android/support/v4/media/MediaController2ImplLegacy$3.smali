.class Landroid/support/v4/media/MediaController2ImplLegacy$3;
.super Landroid/os/ResultReceiver;
.source "MediaController2ImplLegacy.java"


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    const/4 p2, 0x0

    .line 848
    invoke-static {p2}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$300(Landroid/support/v4/media/MediaController2ImplLegacy;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_1

    return-void

    .line 853
    :cond_1
    throw p2

    .line 856
    :cond_2
    invoke-static {p2}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$400(Landroid/support/v4/media/MediaController2ImplLegacy;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Landroid/support/v4/media/MediaController2ImplLegacy$3$1;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaController2ImplLegacy$3$1;-><init>(Landroid/support/v4/media/MediaController2ImplLegacy$3;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 862
    throw p2
.end method

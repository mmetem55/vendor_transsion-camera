.class public Lcom/transsion/camera/utils/StateWait;
.super Ljava/lang/Object;
.source "StateWait.java"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mWaitFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/StateWait;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/transsion/camera/utils/StateWait;->mWaitFlag:Z

    return-void
.end method


# virtual methods
.method public notifyState()V
    .locals 2

    .line 32
    iget-boolean v0, p0, Lcom/transsion/camera/utils/StateWait;->mWaitFlag:Z

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/transsion/camera/utils/StateWait;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 34
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/utils/StateWait;->mWaitFlag:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p0, Lcom/transsion/camera/utils/StateWait;->mWaitFlag:Z

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/utils/StateWait;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public resetState()V
    .locals 1

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/transsion/camera/utils/StateWait;->mWaitFlag:Z

    return-void
.end method

.method public waitState()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 12
    iget-boolean v0, p0, Lcom/transsion/camera/utils/StateWait;->mWaitFlag:Z

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/transsion/camera/utils/StateWait;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/utils/StateWait;->mWaitFlag:Z

    if-eqz v1, :cond_0

    .line 15
    iget-object p0, p0, Lcom/transsion/camera/utils/StateWait;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 17
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public waitState(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 22
    iget-boolean v0, p0, Lcom/transsion/camera/utils/StateWait;->mWaitFlag:Z

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/transsion/camera/utils/StateWait;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 24
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/utils/StateWait;->mWaitFlag:Z

    if-eqz v1, :cond_0

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/utils/StateWait;->mLock:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 27
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

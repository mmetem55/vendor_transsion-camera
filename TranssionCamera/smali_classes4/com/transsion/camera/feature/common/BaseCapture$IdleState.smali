.class Lcom/transsion/camera/feature/common/BaseCapture$IdleState;
.super Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;
.source "BaseCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/common/BaseCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field private mStreamCreated:Z

.field final synthetic this$0:Lcom/transsion/camera/feature/common/BaseCapture;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/common/BaseCapture;)V
    .locals 2

    .line 441
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture$IdleState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    const-string v0, "IdleState"

    const/4 v1, 0x0

    .line 442
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;Ljava/lang/String;Lcom/transsion/camera/feature/common/BaseCapture$1;)V

    return-void
.end method


# virtual methods
.method protected createStream()V
    .locals 1

    .line 447
    monitor-enter p0

    const/4 v0, 0x1

    .line 448
    :try_start_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$IdleState;->mStreamCreated:Z

    .line 449
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected destroyStream()V
    .locals 1

    .line 465
    monitor-enter p0

    const/4 v0, 0x0

    .line 466
    :try_start_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$IdleState;->mStreamCreated:Z

    .line 467
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onEntry()V
    .locals 2

    .line 472
    monitor-enter p0

    const/4 v0, 0x0

    .line 475
    :try_start_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$IdleState;->mStreamCreated:Z

    .line 476
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture$IdleState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v1}, Lcom/transsion/camera/feature/common/BaseCapture;->access$1100(Lcom/transsion/camera/feature/common/BaseCapture;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture$IdleState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v1, v0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$1102(Lcom/transsion/camera/feature/common/BaseCapture;Z)Z

    .line 480
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$IdleState;->createStream()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 476
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onStreamAvailable()V
    .locals 2

    .line 454
    monitor-enter p0

    .line 455
    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$IdleState;->mStreamCreated:Z

    if-nez v0, :cond_0

    .line 456
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "stream has already destroyed!!!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 457
    monitor-exit p0

    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$IdleState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$1000(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->entry()V

    .line 460
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

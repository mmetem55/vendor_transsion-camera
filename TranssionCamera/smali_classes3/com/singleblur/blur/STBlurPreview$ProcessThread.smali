.class Lcom/singleblur/blur/STBlurPreview$ProcessThread;
.super Ljava/lang/Thread;
.source "STBlurPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singleblur/blur/STBlurPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessThread"
.end annotation


# instance fields
.field callback:Lcom/singleblur/blur/STBlurPreview$Callback;

.field copyBuffer:[B

.field frontCamera:Z

.field height:I

.field private isRunning:Z

.field final syncObject:Ljava/lang/Object;

.field final synthetic this$0:Lcom/singleblur/blur/STBlurPreview;

.field width:I


# direct methods
.method constructor <init>(Lcom/singleblur/blur/STBlurPreview;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->this$0:Lcom/singleblur/blur/STBlurPreview;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 417
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->syncObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 464
    :try_start_0
    iput-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->isRunning:Z

    .line 465
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 8

    :goto_0
    const/4 v0, 0x0

    .line 435
    :try_start_0
    iget-boolean v1, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->isRunning:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 436
    iget-object v1, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->syncObject:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 437
    :try_start_1
    iget-object v2, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->syncObject:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 438
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    :try_start_2
    iget-boolean v1, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->isRunning:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_0

    .line 445
    iput-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->isRunning:Z

    return-void

    .line 440
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->this$0:Lcom/singleblur/blur/STBlurPreview;

    iget-object v3, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->copyBuffer:[B

    iget v4, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->width:I

    iget v5, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->height:I

    iget-boolean v6, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->frontCamera:Z

    iget-object v7, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->callback:Lcom/singleblur/blur/STBlurPreview$Callback;

    invoke-static/range {v2 .. v7}, Lcom/singleblur/blur/STBlurPreview;->access$300(Lcom/singleblur/blur/STBlurPreview;[BIIZLcom/singleblur/blur/STBlurPreview$Callback;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 438
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 445
    :cond_1
    :goto_1
    iput-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->isRunning:Z

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    .line 443
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :goto_2
    return-void

    .line 445
    :goto_3
    iput-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->isRunning:Z

    .line 446
    throw v1
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 428
    :try_start_0
    iput-boolean v0, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->isRunning:Z

    .line 429
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateBuffer([BIIZLcom/singleblur/blur/STBlurPreview$Callback;)V
    .locals 0

    .line 450
    iput p2, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->width:I

    .line 451
    iput p3, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->height:I

    .line 452
    iput-boolean p4, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->frontCamera:Z

    .line 453
    iput-object p5, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->callback:Lcom/singleblur/blur/STBlurPreview$Callback;

    .line 454
    iget-object p2, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->copyBuffer:[B

    if-eqz p2, :cond_0

    array-length p3, p1

    array-length p2, p2

    if-eq p3, p2, :cond_1

    .line 455
    :cond_0
    array-length p2, p1

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->copyBuffer:[B

    .line 457
    :cond_1
    iget-object p2, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->syncObject:Ljava/lang/Object;

    monitor-enter p2

    .line 458
    :try_start_0
    iget-object p3, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->copyBuffer:[B

    array-length p4, p1

    const/4 p5, 0x0

    invoke-static {p1, p5, p3, p5, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    iget-object p0, p0, Lcom/singleblur/blur/STBlurPreview$ProcessThread;->syncObject:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 460
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

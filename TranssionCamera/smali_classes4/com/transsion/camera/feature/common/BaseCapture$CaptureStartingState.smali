.class Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;
.super Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;
.source "BaseCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/common/BaseCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureStartingState"
.end annotation


# static fields
.field private static final AE_LOCK_TIME_OUT:J = 0x12cL


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mStartLockTime:J

.field final synthetic this$0:Lcom/transsion/camera/feature/common/BaseCapture;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/common/BaseCapture;)V
    .locals 2

    .line 507
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    const-string v0, "StartingCaptureState"

    const/4 v1, 0x0

    .line 508
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;Ljava/lang/String;Lcom/transsion/camera/feature/common/BaseCapture$1;)V

    .line 509
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private cancelCapture()V
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/common/BaseCapture;->access$1300(Lcom/transsion/camera/feature/common/BaseCapture;Z)V

    .line 559
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$1400(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/IDataStream;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/common/IDataStream;->updateState(Z)V

    .line 560
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->triggerCaptureCanceled()V

    .line 561
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$1000(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->entry()V

    return-void
.end method

.method private triggerCaptureCanceled()V
    .locals 2

    .line 565
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "capture canceled"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 566
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

    if-eqz p0, :cond_0

    .line 567
    invoke-interface {p0}, Lcom/transsion/camera/feature/common/ICapture$IStatusListener;->onCaptureFailed()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected destroyStream()V
    .locals 0

    .line 553
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->cancelCapture()V

    .line 554
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->destroyStream()V

    return-void
.end method

.method protected onAeLocked()V
    .locals 2

    .line 528
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onAeLocked"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 529
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$1500(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->entry()V

    return-void
.end method

.method protected onEntry()V
    .locals 3

    .line 514
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/common/BaseCapture;->access$1300(Lcom/transsion/camera/feature/common/BaseCapture;Z)V

    .line 515
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->doPreCapture()V

    .line 516
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$1400(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/IDataStream;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/common/IDataStream;->updateState(Z)V

    .line 517
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->mStartLockTime:J

    .line 518
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onLeave()V
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 6

    .line 534
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "ae lock timeout"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 535
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 536
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ae lock elapse time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->mStartLockTime:J

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 537
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$1500(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->entry()V

    return-void
.end method

.method protected shutterClick()V
    .locals 0

    .line 542
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->cancelCapture()V

    return-void
.end method

.method protected stopCapture()Z
    .locals 0

    .line 547
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;->cancelCapture()V

    const/4 p0, 0x1

    return p0
.end method

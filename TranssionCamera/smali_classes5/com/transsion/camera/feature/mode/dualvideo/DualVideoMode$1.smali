.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;
.super Ljava/lang/Object;
.source "DualVideoMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 539
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "pauseResumeRecording"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 540
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getRecordingTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->isRecordPausing()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 543
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 544
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->pauseOrResume()V

    :cond_1
    return-void
.end method

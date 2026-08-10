.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoRecorderCallback;
.super Ljava/lang/Object;
.source "DualVideoMode.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDualVideoRecorderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;)V
    .locals 0

    .line 675
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoRecorderCallback;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)V

    return-void
.end method


# virtual methods
.method public notifyVideoRecorderData([FI)V
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 688
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->notifyVideoRecorderData([FI)V

    :cond_0
    return-void
.end method

.method public notifyVideoStartRecorder()V
    .locals 3

    .line 678
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$1900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyVideoStartRecorder, mRecordingFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$2000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$1000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->startOrStop(Z)V

    .line 681
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$1000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->startRecordHideRoot(Z)V

    :cond_0
    return-void
.end method

.method public notifyVideoStopRecorder()V
    .locals 3

    .line 694
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$2100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyVideoStopRecorder, mRecordingFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$2000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$1000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->startOrStop(Z)V

    .line 697
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoRecorderCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$1000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->startRecordHideRoot(Z)V

    :cond_0
    return-void
.end method

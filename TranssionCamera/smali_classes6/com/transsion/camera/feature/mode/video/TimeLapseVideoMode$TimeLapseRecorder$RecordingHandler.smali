.class Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;
.super Landroid/os/Handler;
.source "TimeLapseVideoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecordingHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;Landroid/os/Looper;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    .line 636
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 641
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0xbb8

    const/4 v3, 0x3

    if-eqz v0, :cond_c

    const/4 v4, 0x1

    if-eq v0, v4, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_0

    goto/16 :goto_2

    .line 704
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$2800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object p1

    const/4 v0, 0x6

    if-nez p1, :cond_1

    .line 706
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$2900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v1, "[MSG_CHECK_STORAGE] mStorageOperator is null,no space"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 707
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->showInfo(I)V

    .line 708
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    return-void

    .line 712
    :cond_1
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object v4, v4, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$3000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Landroid/content/Context;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-nez p1, :cond_2

    .line 714
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$3100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v1, "[MSG_CHECK_STORAGE] space in not enough, can not record video."

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 715
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->showInfo(I)V

    .line 716
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    goto/16 :goto_2

    :cond_2
    const-wide/16 v6, -0x1

    cmp-long p1, v4, v6

    if-nez p1, :cond_3

    .line 718
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$3200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "[MSG_CHECK_STORAGE] StorageVolume is removed."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 719
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->showInfo(I)V

    .line 720
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    goto/16 :goto_2

    .line 722
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$1500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;

    move-result-object p0

    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 698
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/CamcorderProfile;

    .line 699
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->getInstance()Lcom/transsion/camera/utils/VideoSurfaceUtil;

    move-result-object v1

    iget p1, p1, Landroid/media/CamcorderProfile;->quality:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    .line 700
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$2300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$2400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)I

    move-result v4

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$2500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)I

    move-result v5

    const/4 v6, 0x0

    .line 699
    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->getVideoSurface(Ljava/lang/String;Ljava/lang/String;IILjava/io/File;)Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$2202(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;Landroid/view/Surface;)Landroid/view/Surface;

    .line 701
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object v0, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$2200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Landroid/view/Surface;

    move-result-object v1

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$2600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)I

    move-result v2

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$2700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)I

    move-result v3

    const/16 v4, 0x1e

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderPrepared(Landroid/view/Surface;IIIZ)V

    goto/16 :goto_2

    .line 668
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$1600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 669
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$1700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->onPause()V

    return-void

    .line 672
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto/16 :goto_1

    .line 676
    :cond_7
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "stopTimeLapseVideoRecording"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 677
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$1500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 678
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$1800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 679
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$1900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->enableVideoAutoFlash(Z)V

    .line 681
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->stopRecording(Z)Z

    .line 682
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$1700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 683
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$1700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->stopRecording()V

    goto :goto_0

    .line 685
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$202(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;Z)Z

    .line 687
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onVideoRestartPreviewed()V

    .line 688
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$1700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->isVideoDurationValid()Z

    move-result p1

    if-nez p1, :cond_a

    .line 689
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$2000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/TimeLapseVideoUI;->showFileTooShortInfo()V

    .line 690
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$202(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;Z)Z

    .line 691
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    const/4 v2, -0x1

    invoke-static {p1, v4, v2, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$2100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;IILjava/lang/String;)V

    .line 692
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 694
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$902(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;Z)Z

    .line 695
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$1500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2

    .line 673
    :cond_b
    :goto_1
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "stopTimeLapseVideoRecording record is false, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 643
    :cond_c
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$1100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$1200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    .line 645
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "startTimeLapseVideoRecording"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 647
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$1300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 649
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    new-instance v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler$1;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)Z

    .line 664
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$1400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)V

    .line 665
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$1500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;)Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;

    move-result-object p0

    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_2
    return-void

    :catchall_0
    move-exception p0

    .line 645
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

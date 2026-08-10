.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoCB;
.super Ljava/lang/Object;
.source "DualVideoMode.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoCB;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDualVideoCB"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)V
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoCB;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;)V
    .locals 0

    .line 719
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoCB;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)V

    return-void
.end method


# virtual methods
.method public playRecorderSound(Z)V
    .locals 2

    .line 722
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoCB;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$2600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 727
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoCB;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    iget-object v1, p1, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$2700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->pauseAudioPlayBack(Landroid/content/Context;)Z

    .line 728
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoCB;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$2800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->shutterSoundPlay(ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    goto :goto_0

    .line 730
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoCB;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$2900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->shutterSoundPlay(ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    .line 731
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoCB;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$3000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->releaseAudioFocus(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

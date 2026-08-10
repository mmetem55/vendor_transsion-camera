.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1$1;
.super Ljava/lang/Object;
.source "DualVideoRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->onStopped(Lcom/transsion/camera/utils/encoder/MediaEncoder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1$1;->this$1:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 369
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1$1;->this$1:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->access$1300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;->onMediaRecorderStopped(IZ)V

    return-void
.end method

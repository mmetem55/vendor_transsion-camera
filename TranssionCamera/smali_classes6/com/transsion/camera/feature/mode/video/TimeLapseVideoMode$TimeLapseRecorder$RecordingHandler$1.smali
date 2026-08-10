.class Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler$1;
.super Ljava/lang/Object;
.source "TimeLapseVideoMode.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler$1;->this$2:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3

    .line 658
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_START_RECORD, onError, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 659
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler$1;->this$2:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$902(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;Z)Z

    .line 660
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler$1;->this$2:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->access$202(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;Z)Z

    .line 661
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler$1;->this$2:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$RecordingHandler;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    const/4 p1, 0x4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->onMediaRecorderStopped(IZ)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 652
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "MSG_START_RECORD, onStart"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.class Lcom/transsion/camera/feature/mode/video/VideoMode$3;
.super Ljava/lang/Object;
.source "VideoMode.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/video/VideoMode;->starStopHDRRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

.field final synthetic val$finalPreviewSize_:Landroid/util/Size;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/video/VideoMode;Landroid/util/Size;)V
    .locals 0

    .line 854
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$3;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$3;->val$finalPreviewSize_:Landroid/util/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$3;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mGLRecorder:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$3;->val$finalPreviewSize_:Landroid/util/Size;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->startStop(Landroid/util/Size;)V

    return-void
.end method

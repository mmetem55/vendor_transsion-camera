.class Lcom/transsion/camera/app/common/mode/CommonVideoMode$2;
.super Ljava/lang/Object;
.source "CommonVideoMode.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V
    .locals 0

    .line 1602
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;)V
    .locals 0

    .line 1615
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;)V

    return-void
.end method

.method public onCaptureFailed()V
    .locals 1

    .line 1610
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z

    return-void
.end method

.method public onCaptureStarted()V
    .locals 0

    .line 1605
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onCaptureStarted()V

    return-void
.end method

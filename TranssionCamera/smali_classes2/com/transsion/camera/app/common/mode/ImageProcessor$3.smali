.class Lcom/transsion/camera/app/common/mode/ImageProcessor$3;
.super Ljava/lang/Object;
.source "ImageProcessor.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/ImageProcessor;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$3;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BIIIZI)V
    .locals 9

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$3;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] mDataCallback notifyPictureTaken, isBGImage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", picCountRemaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/transsion/camera/manager/ScreenRelay;->getInstance()Lcom/transsion/camera/manager/ScreenRelay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/manager/ScreenRelay;->imageAvailable()V

    .line 231
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$3;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget v6, v1, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mCaptureOrientation:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onPictureData([BIIIIZI)V

    return-void
.end method

.method public onPictureTakenFail()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$3;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] mDataCallback notifyPictureTakenFail"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/transsion/camera/manager/ScreenRelay;->getInstance()Lcom/transsion/camera/manager/ScreenRelay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/manager/ScreenRelay;->captureFail()V

    .line 238
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$3;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onPictureDataFail()V

    return-void
.end method

.class public Lcom/transsion/camera/feature/mode/photo/IntentPhotoImageProcessor;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
.source "IntentPhotoImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-void
.end method


# virtual methods
.method protected onJpeg([BZI)V
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->notifyPictureTaken([BZI)I

    return-void
.end method

.method public supportProcessingMedia()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

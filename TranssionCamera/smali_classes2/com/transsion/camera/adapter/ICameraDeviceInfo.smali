.class public interface abstract Lcom/transsion/camera/adapter/ICameraDeviceInfo;
.super Ljava/lang/Object;
.source "ICameraDeviceInfo.java"


# virtual methods
.method public abstract aeLockSupported(Ljava/lang/String;)Z
.end method

.method public abstract getBackFakeDualCameraId()Ljava/lang/String;
.end method

.method public abstract getBaseZoomRatio(Ljava/lang/String;F)F
.end method

.method public abstract getBlackWhitePortraitCameraId()Ljava/lang/String;
.end method

.method public abstract getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;
.end method

.method public abstract getDualCamCalibrationSize()Ljava/lang/String;
.end method

.method public abstract getFoldedFrontCameraId()Ljava/lang/String;
.end method

.method public abstract getFrontFakeDualCameraId()Ljava/lang/String;
.end method

.method public abstract getFrontWideCameraId()Ljava/lang/String;
.end method

.method public abstract getHighDefinitionLogicBackId()Ljava/lang/String;
.end method

.method public abstract getHighDefinitionLogicFrontId()Ljava/lang/String;
.end method

.method public abstract getLargestSupportedPictureSize(Ljava/lang/String;)Landroid/util/Size;
.end method

.method public abstract getLensFocalLengths(Ljava/lang/String;)[F
.end method

.method public abstract getLogicalCameraId()Ljava/lang/String;
.end method

.method public abstract getMacroCameraId()Ljava/lang/String;
.end method

.method public abstract getMaxZoom(Ljava/lang/String;)I
.end method

.method public abstract getMicroPanTiltCameraLogicId()Ljava/lang/String;
.end method

.method public abstract getMiniZoom(Ljava/lang/String;)I
.end method

.method public abstract getNumberOfCameras()I
.end method

.method public abstract getOpticalZoomCameraId()Ljava/lang/String;
.end method

.method public abstract getPeriscopeCameraId()Ljava/lang/String;
.end method

.method public abstract getPhysicalId4In1Size(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSatCameraLogicId()Ljava/lang/String;
.end method

.method public abstract getSecondLogicalCameraId()Ljava/lang/String;
.end method

.method public abstract getSensorPhysicalSize(Ljava/lang/String;)Landroid/util/SizeF;
.end method

.method public abstract getSupportedFocusModes(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedPictureSizes(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedPreviewSizes(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedVideoSizes(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoCameraId()Ljava/lang/String;
.end method

.method public abstract getWideCameraId()Ljava/lang/String;
.end method

.method public abstract isBGServiceSupport(Ljava/lang/String;)Z
.end method

.method public abstract isHighFPSSupport()Z
.end method

.method public abstract isSupportMicroCamera()Z
.end method

.method public abstract isSupportedFastSuperNightMode(Ljava/lang/String;)Z
.end method

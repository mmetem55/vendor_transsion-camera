.class public interface abstract Lcom/transsion/camera/app/common/mode/ICameraMode;
.super Ljava/lang/Object;
.source "ICameraMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/ICameraControl$IModeConfig;
.implements Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;
.implements Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;
.implements Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;
.implements Lcom/transsion/camera/app/common/mode/IAeAfLock;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/transsion/camera/app/common/mode/IImageProcessor<",
        "TD;>;D:",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/ICameraControl$IModeConfig;",
        "Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;",
        "Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;",
        "Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;",
        "Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;",
        "Lcom/transsion/camera/app/common/mode/IAeAfLock;",
        "Lcom/transsion/camera/app/common/IScreenFormControl;"
    }
.end annotation


# virtual methods
.method public abstract buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public abstract configStream(Landroid/view/Surface;II)Landroid/view/Surface;
.end method

.method public abstract createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getCameraIdForOpen(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;ZIZ)Ljava/lang/String;
.end method

.method public abstract getCurShutterPriority()I
.end method

.method public abstract getDataFlowType()I
.end method

.method public abstract getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
.end method

.method public abstract getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
.end method

.method public abstract getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;
.end method

.method public abstract getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getOutputDataType()I
.end method

.method public abstract getPostViewSize(Ljava/util/List;)Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation
.end method

.method public abstract getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation
.end method

.method public abstract getThumbnailSource()I
.end method

.method public abstract getVideoRecodingOrientation()I
.end method

.method public abstract init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
.end method

.method public abstract isBgCapturing()Z
.end method

.method public abstract isForceRecreateSession()Z
.end method

.method public abstract isInsensorZoomStatus(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
.end method

.method public abstract isNeedDeviceCaptureSound()Z
.end method

.method public abstract isSupportAuxPreview()Z
.end method

.method public abstract isSupportBackgroundPreview()Z
.end method

.method public abstract isSupportDualVideo()Z
.end method

.method public abstract isSupportPowerSavingMode()Z
.end method

.method public abstract isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
.end method

.method public abstract isSupportVideoCamera()Z
.end method

.method public abstract isValid()Z
.end method

.method public abstract needQCSaveJpegToFile([BZ)I
.end method

.method public abstract needQCUpdateThumbnailView(ILandroid/graphics/Bitmap;)I
.end method

.method public abstract needRebuildMode()Z
.end method

.method public abstract needUnintModeWhenPause()Z
.end method

.method public abstract notifySwitchByUser(Z)V
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)Z
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onBatteryStatusChanged(ZII)V
.end method

.method public abstract onConfigurationChanged(Z)V
.end method

.method public abstract onContinueShutterStart()V
.end method

.method public abstract onFirstSteadyFrame()V
.end method

.method public abstract onModeCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;)V
.end method

.method public abstract onModeCaptureFailed()V
.end method

.method public abstract onModeCaptureStarted()V
.end method

.method public abstract onOrientationChanged(I)V
.end method

.method public abstract onSettingChangeDone(Ljava/lang/String;)V
.end method

.method public abstract onSettingChangeStart(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onShutterStart(Z)V
.end method

.method public abstract onSingleTapUp()Z
.end method

.method public abstract onSurfaceDrawn()V
.end method

.method public abstract onThumbNailTypeConfirmed(I[I)V
.end method

.method public abstract pause()V
.end method

.method public abstract removeBgCaptureThumb()V
.end method

.method public abstract resetBgEnable()V
.end method

.method public abstract resume()V
.end method

.method public abstract setCallingPackage(Ljava/lang/String;)V
.end method

.method public abstract setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V
.end method

.method public abstract setInternalStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
.end method

.method public abstract setModeBgCaptureListener(Lcom/transsion/camera/app/common/IApp$ModeBgCaptureListener;)V
.end method

.method public abstract setModeChangeFlag(Z)V
.end method

.method public abstract setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
.end method

.method public abstract setQuickCaptureManager(Lcom/transsion/camera/app/common/provider/QuickCaptureManager;)V
.end method

.method public abstract setSupportQuickCapture(Z)V
.end method

.method public abstract unInit()V
.end method

.method public abstract updateCurrentCameraId(Ljava/lang/String;)V
.end method

.method public abstract updateFastThumbSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
.end method

.method public abstract updatePicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
.end method

.method public abstract updatePreviewSize(Landroid/util/Size;Landroid/util/Size;)V
.end method

.method public abstract updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
.end method

.method public abstract updateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
.end method

.method public abstract updateYuvPicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
.end method

.class public abstract Lcom/transsion/camera/adapter/CameraProxy;
.super Ljava/lang/Object;
.source "CameraProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;,
        Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$DeferredData;
    }
.end annotation


# static fields
.field public static final SOUND_SHUTTER_CLICK_FILES:[Ljava/lang/String;

.field public static final SOUND_START_RECORDING_FILES:[Ljava/lang/String;

.field public static final SOUND_STOP_RECORDING_FILES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "/system/media/audio/ui/camera_click.ogg"

    const-string v1, "/product/media/audio/ui/camera_click.ogg"

    .line 59
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/adapter/CameraProxy;->SOUND_SHUTTER_CLICK_FILES:[Ljava/lang/String;

    const-string v0, "/system/media/audio/ui/VideoRecord.ogg"

    const-string v1, "/product/media/audio/ui/VideoRecord.ogg"

    .line 63
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/adapter/CameraProxy;->SOUND_START_RECORDING_FILES:[Ljava/lang/String;

    const-string v0, "/system/media/audio/ui/VideoStop.ogg"

    const-string v1, "/product/media/audio/ui/VideoStop.ogg"

    .line 67
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/adapter/CameraProxy;->SOUND_STOP_RECORDING_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addDevicePreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V
.end method

.method public abstract autoFocus(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V
.end method

.method public abstract cancelAutoFocus()V
.end method

.method public abstract cancelTakePicture()V
.end method

.method public abstract clearFrameResultCallback()V
.end method

.method public abstract clearStreamIdResultCallback()V
.end method

.method public abstract enableShutterSound(Z)V
.end method

.method public abstract enableVideoAutoFlash(Z)V
.end method

.method public abstract getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;
.end method

.method public abstract getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;
.end method

.method public abstract isMTKCaptureFlow()Z
.end method

.method public abstract isReleased()Z
.end method

.method public abstract isVssSupported()Z
.end method

.method public abstract preparePreview(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;I)V
.end method

.method public abstract registerDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V
.end method

.method public abstract registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
.end method

.method public abstract registerSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V
.end method

.method public abstract registerShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
.end method

.method public abstract registerStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V
.end method

.method public abstract setActionSound(Lcom/transsion/camera/utils/sound/IActionSound;)V
.end method

.method public abstract setAnimalEyeDetectCallback(Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;)V
.end method

.method public abstract setAutoFocusMoveCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;)V
.end method

.method public abstract setCameraBVCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;)V
.end method

.method public abstract setCameraDataChannel(Lcom/transsion/camera/adapter/CameraDataChannel;)V
.end method

.method public abstract setCameraParameters(Lcom/transsion/camera/adapter/CameraParameters;)V
.end method

.method public abstract setEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;)V
.end method

.method public abstract setFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V
.end method

.method public abstract setFlashStateCallback(Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;)V
.end method

.method public abstract setGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V
.end method

.method public abstract setHumanDetCallback(Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;)V
.end method

.method public abstract setModeThumbnailSource(I)V
.end method

.method public abstract setPause(Z)V
.end method

.method public abstract setPictureGPSLocation(Landroid/location/Location;)V
.end method

.method public abstract setPictureOrientation(I)V
.end method

.method public abstract setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
.end method

.method public abstract setVideoOrientation(I)V
.end method

.method public abstract shutterSoundPlay(ILcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V
.end method

.method public abstract shutterSoundPlay(Ljava/lang/String;)V
.end method

.method public startContinuousShot(Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;II)V
    .locals 9

    .line 109
    new-instance v8, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;-><init>(Lcom/transsion/camera/adapter/CameraProxy;Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;ZI)V

    invoke-virtual {p0, v8, p4}, Lcom/transsion/camera/adapter/CameraProxy;->startContinuousShot(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;I)V

    return-void
.end method

.method abstract startContinuousShot(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;I)V
.end method

.method public abstract startFaceDetection()V
.end method

.method public abstract startGenderAttributeDetection()V
.end method

.method public abstract startPreview(Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V
.end method

.method public abstract startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
.end method

.method public abstract stopContinuousShot()V
.end method

.method public abstract stopContinuousShotCount()V
.end method

.method public abstract stopFaceDetection()V
.end method

.method public abstract stopGenderAttributeDetection()V
.end method

.method public abstract stopPreview()V
.end method

.method public abstract stopRecording()V
.end method

.method public abstract stopRepeating()V
.end method

.method public takePicture(Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;ZI)V
    .locals 9

    .line 89
    new-instance v8, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;-><init>(Lcom/transsion/camera/adapter/CameraProxy;Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;ZI)V

    invoke-virtual {p0, v8}, Lcom/transsion/camera/adapter/CameraProxy;->takePicture(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V

    return-void
.end method

.method abstract takePicture(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V
.end method

.method public abstract unRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V
.end method

.method public abstract unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
.end method

.method public abstract unRegisterSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V
.end method

.method public abstract unRegisterStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V
.end method

.method public abstract unregisterShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
.end method

.method public abstract updateAuxSurfaceModeSupport(Z)V
.end method

.method public abstract updateAuxSurfaceStatus(Z)V
.end method

.method public abstract updateBackgroundSurfaceModeSupport(Z)V
.end method

.method public abstract updateBackgroundSurfaceStatus(Z)V
.end method

.method public videoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;I)V
    .locals 9

    .line 102
    new-instance v8, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;-><init>(Lcom/transsion/camera/adapter/CameraProxy;Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;ZI)V

    invoke-virtual {p0, v8}, Lcom/transsion/camera/adapter/CameraProxy;->videoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V

    return-void
.end method

.method abstract videoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V
.end method

.class public interface abstract Lcom/transsion/camera/app/common/IAppUI;
.super Ljava/lang/Object;
.source "IAppUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
.implements Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;
.implements Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;
.implements Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;
.implements Lcom/transsion/camera/app/common/thermal/IThermalThrottleListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;
.implements Lcom/transsion/camera/app/common/battery/IBatteryListener;
.implements Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
.implements Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;
.implements Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;
.implements Lcom/transsion/camera/app/common/IAppUIControl$IContinuousShotControl;
.implements Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;
.implements Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;
.implements Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;
.implements Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;


# virtual methods
.method public abstract changeUIWhenSwitchModeAfter()V
.end method

.method public abstract changeUIWhenSwitchModeBefore()V
.end method

.method public abstract currentThreadIsMain()Z
.end method

.method public abstract enterEditWaterMarkFragment()V
.end method

.method public abstract enterModeEditorFragment()V
.end method

.method public abstract enterRemoteCaptureFragment()V
.end method

.method public abstract getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;
.end method

.method public abstract getActionSound()Lcom/transsion/camera/utils/sound/IActionSound;
.end method

.method public abstract getAodUIOrientation()I
.end method

.method public abstract getBelowMainCtrlInflateRoot()Landroid/view/ViewGroup;
.end method

.method public abstract getGoogleLensUIButtonVisible()I
.end method

.method public abstract getGpuAlgorithmManager()Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;
.end method

.method public abstract getModeInflateRoot()Landroid/view/ViewGroup;
.end method

.method public abstract getModeInflateScrollRoot()Landroid/view/ViewGroup;
.end method

.method public abstract getModePickerLayout()Landroid/view/View;
.end method

.method public abstract getMoreModeGuideLeftRoot()Landroid/view/View;
.end method

.method public abstract getPreviewBackgroundOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
.end method

.method public abstract getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
.end method

.method public abstract getPreviewSurfaceType()I
.end method

.method public abstract getRecordingOrientation()I
.end method

.method public abstract getScreenFormType()I
.end method

.method public abstract getSettingUIProvider()Lcom/transsion/camera/app/common/provider/SettingUIProvider;
.end method

.method public abstract getTriggerSelfTimerPriority()I
.end method

.method public abstract getVoiceIntent()[Z
.end method

.method public abstract gotoGallery(Landroid/view/View;)V
.end method

.method public abstract hideCustomPreviewCover()V
.end method

.method public abstract hideInteractiveUI()V
.end method

.method public abstract isModePanelVisible()Z
.end method

.method public abstract isModeTabScrolling()Z
.end method

.method public abstract isSecureCamera()Z
.end method

.method public abstract isVoiceInteraction()Z
.end method

.method public abstract needBuildBlurCoverView(Z)V
.end method

.method public abstract onModePaused()V
.end method

.method public abstract onModeSettingReady()V
.end method

.method public abstract onPreviewClick()Z
.end method

.method public abstract registerPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V
.end method

.method public abstract registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
.end method

.method public abstract registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V
.end method

.method public abstract restoreCurrentModeByFacing(I)V
.end method

.method public abstract setAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock;)V
.end method

.method public abstract setAuxPreviewLensSupport(ZLjava/lang/String;)V
.end method

.method public abstract setAuxPreviewModeSupport(ZLjava/lang/String;)V
.end method

.method public abstract setAuxPreviewSize(II)V
.end method

.method public abstract setBackgroundPreviewModeSupport(Z)V
.end method

.method public abstract setBackgroundPreviewSize(II)V
.end method

.method public abstract setCameraReConnectListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraReConnectListener;)V
.end method

.method public abstract setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V
.end method

.method public abstract setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V
.end method

.method public abstract setModeDataInfoListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeDataInfoListener;)V
.end method

.method public abstract setModeFeatureSupport(Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;)V
.end method

.method public abstract setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V
.end method

.method public abstract setModeUIControl(Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;)V
.end method

.method public abstract setPreviewSize(II)V
.end method

.method public abstract setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V
.end method

.method public abstract setSwitchBlurCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;)V
.end method

.method public abstract setSwitchDualAndMainCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V
.end method

.method public abstract setSwitchDualCamBWCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;)V
.end method

.method public abstract setSwitchHighDefinitionCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchHighDefinitionCameraListener;)V
.end method

.method public abstract setSwitchPeriscopeCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;)V
.end method

.method public abstract setSwitchSatCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchSatCameraListener;)V
.end method

.method public abstract setSwitchTeleCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;)V
.end method

.method public abstract setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V
.end method

.method public abstract setVolumeIntercept(Z)V
.end method

.method public abstract showCustomPreviewCover(Landroid/graphics/Bitmap;)V
.end method

.method public abstract showOrHideHintLayout(Z)V
.end method

.method public abstract showOrHideModePickerRootUI(ZZ)V
.end method

.method public abstract showOrHideMoreModeGuideRightView(Z)V
.end method

.method public abstract showOrHideShutterPanel(ZZIZ)V
.end method

.method public abstract showOrHideSwitcher(Z)V
.end method

.method public abstract showOrHideTopAndBottomView(Z)V
.end method

.method public abstract showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V
.end method

.method public abstract switchCamera()V
.end method

.method public abstract switchSatCamera(Ljava/lang/String;)V
.end method

.method public abstract switchSatCamera(Ljava/lang/String;Z)V
.end method

.method public abstract unregisterPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V
.end method

.method public abstract unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
.end method

.method public abstract unregisterScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V
.end method

.method public abstract updateBrowserData(Landroid/net/Uri;)V
.end method

.method public abstract updateBurstBrowserData(Landroid/net/Uri;Z)V
.end method

.method public abstract updateCurrentCamera(Ljava/lang/String;Z)V
.end method

.method public abstract updateCurrentModes(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateCurrentModes(Ljava/util/List;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V
.end method

.method public abstract updateMoreEditMode(Z)V
.end method

.method public abstract updateProcessingThumbUri(Landroid/net/Uri;Z)V
.end method

.method public abstract updateSwitchCameraUI(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateThumbnail(Landroid/graphics/Bitmap;)V
.end method

.method public abstract updateThumbnailUri(Landroid/net/Uri;)V
.end method

.method public abstract updateThumbnailUri(Landroid/net/Uri;Z)V
.end method

.method public abstract updateTopBarUI()V
.end method

.method public abstract updateWideCameraUI(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V
.end method

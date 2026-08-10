.class public interface abstract Lcom/transsion/camera/app/ui/IGoogleLensUI;
.super Ljava/lang/Object;
.source "IGoogleLensUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;


# virtual methods
.method public abstract checkLensStatus()V
.end method

.method public abstract synthetic createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract synthetic createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
.end method

.method public abstract synthetic getEntryRootView()Landroid/view/ViewGroup;
.end method

.method public abstract synthetic getEntryView()Landroid/view/View;
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getGoogleLensButtonVisible()I
.end method

.method public abstract synthetic getKey()Ljava/lang/String;
.end method

.method public abstract synthetic getKeys()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic getKeys(Ljava/lang/String;)Ljava/util/List;
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

.method public abstract synthetic getValue()Ljava/lang/String;
.end method

.method public abstract synthetic hideEntryView()V
.end method

.method public abstract synthetic initSettingUI(IILandroid/content/Context;)V
.end method

.method public abstract synthetic needShowOptionBar()Z
.end method

.method public abstract synthetic notifyCameraOperateAction(I)V
.end method

.method public abstract synthetic onBackPressed()Z
.end method

.method public bridge synthetic onDoubleTap(FF)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDoubleTap(FF)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onLongPress(FF)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onLongPress(FF)Z

    move-result p0

    return p0
.end method

.method public abstract synthetic onModePanelDistanceChanged(FZ)V
.end method

.method public abstract synthetic onOrientationChanged(I)V
.end method

.method public bridge synthetic onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public abstract synthetic onScreenFormChanged(IZ)V
.end method

.method public bridge synthetic onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public abstract synthetic onSettingOptionToggle(Ljava/lang/String;)V
.end method

.method public abstract synthetic onShutterCancel()V
.end method

.method public abstract synthetic onShutterClick(I)Z
.end method

.method public abstract synthetic onShutterDown()V
.end method

.method public abstract synthetic onShutterLongClick(I)Z
.end method

.method public abstract synthetic onShutterUp(I)V
.end method

.method public bridge synthetic onSingleTapConfirmed(FF)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onSingleTapConfirmed(FF)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onSingleTapUp(FF)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onSingleTapUp(FF)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onUp(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public abstract synthetic overrideClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract synthetic overrideSwitchDualAndMainCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V
.end method

.method public abstract synthetic releaseResource()V
.end method

.method public abstract synthetic restoreInteractiveView()V
.end method

.method public abstract synthetic setActionSound(Lcom/transsion/camera/utils/sound/IActionSound;)V
.end method

.method public abstract synthetic setAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock;)V
.end method

.method public abstract synthetic setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
.end method

.method public abstract synthetic setBatteryStatus(II)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract synthetic setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
.end method

.method public abstract synthetic setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
.end method

.method public abstract synthetic setDeviceSettingData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract synthetic setEnable(Z)V
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public abstract setGoogleLensSupport(Z)V
.end method

.method public abstract synthetic setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V
.end method

.method public abstract synthetic setModeFeatureSupport(Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;)V
.end method

.method public abstract synthetic setPhysicalKeyControl(Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;)V
.end method

.method public abstract synthetic setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
.end method

.method public abstract synthetic setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V
.end method

.method public abstract synthetic setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
.end method

.method public abstract synthetic setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
.end method

.method public abstract synthetic setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V
.end method

.method public abstract synthetic setWideCameraControl(Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;)V
.end method

.method public abstract synthetic setupEntryView()V
.end method

.method public abstract synthetic unInit()V
.end method

.method public abstract synthetic updateCameraState(I)V
.end method

.method public abstract synthetic updatePreviewRect(Landroid/graphics/Rect;)V
.end method

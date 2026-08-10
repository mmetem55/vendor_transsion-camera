.class public abstract Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.super Ljava/lang/Object;
.source "AbstractCommonSettingUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;


# instance fields
.field protected mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

.field protected mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field protected mCameraRootView:Landroid/view/ViewGroup;

.field protected mContext:Landroid/content/Context;

.field private mEntryRootLayout:Landroid/view/View;

.field protected mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

.field protected mOrientation:I

.field protected mParentLayout:Landroid/view/ViewGroup;

.field protected mScreenFormType:I

.field protected mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mEntryRootLayout:Landroid/view/View;

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    .line 43
    iput v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    return-void
.end method


# virtual methods
.method public final createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 70
    iput-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mCameraRootView:Landroid/view/ViewGroup;

    .line 71
    iput-object p3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mParentLayout:Landroid/view/ViewGroup;

    .line 72
    invoke-virtual {p0, p1, p3}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mEntryRootLayout:Landroid/view/View;

    return-object p1
.end method

.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected abstract doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mParentLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mEntryRootLayout:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic getKey()Ljava/lang/String;
.end method

.method public getKeys()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeys(Ljava/lang/String;)Ljava/util/List;
    .locals 0
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

    .line 48
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic getValue()Ljava/lang/String;
.end method

.method public hideEntryView()V
    .locals 0

    return-void
.end method

.method public initSettingUI(IILandroid/content/Context;)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    .line 64
    iput p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    .line 65
    iput-object p3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    return-void
.end method

.method public needShowOptionBar()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 0

    return-void
.end method

.method public onBackPressed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDoubleTap(FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onModePanelDistanceChanged(FZ)V
    .locals 0

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 199
    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 205
    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    .line 206
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->updateSettingUILayout(Z)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onShutterCancel()V
    .locals 0

    return-void
.end method

.method public onShutterClick(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterDown()V
    .locals 0

    return-void
.end method

.method public onShutterLongClick(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterUp(I)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSingleTapUp(FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public overrideClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    return-void
.end method

.method public overrideSwitchDualAndMainCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V
    .locals 0

    return-void
.end method

.method public releaseResource()V
    .locals 0

    return-void
.end method

.method public restoreInteractiveView()V
    .locals 0

    return-void
.end method

.method public setActionSound(Lcom/transsion/camera/utils/sound/IActionSound;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    return-void
.end method

.method public setAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock;)V
    .locals 0

    return-void
.end method

.method public setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    return-void
.end method

.method public setBatteryStatus(II)V
    .locals 0

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    return-void
.end method

.method public abstract synthetic setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
.end method

.method public setDeviceSettingData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract synthetic setEnable(Z)V
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public final setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-void
.end method

.method public setModeFeatureSupport(Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;)V
    .locals 0

    return-void
.end method

.method public setPhysicalKeyControl(Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;)V
    .locals 0

    return-void
.end method

.method public abstract synthetic setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
.end method

.method public setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 0

    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .locals 0

    return-void
.end method

.method public setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V
    .locals 0

    return-void
.end method

.method public setWideCameraControl(Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;)V
    .locals 0

    return-void
.end method

.method public setupEntryView()V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->updateSettingUILayout(Z)V

    return-void
.end method

.method public unInit()V
    .locals 1

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    .line 125
    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mEntryRootLayout:Landroid/view/View;

    return-void
.end method

.method public updateCameraState(I)V
    .locals 0

    return-void
.end method

.method public abstract synthetic updatePreviewRect(Landroid/graphics/Rect;)V
.end method

.method protected updateSettingUILayout(Z)V
    .locals 0

    return-void
.end method

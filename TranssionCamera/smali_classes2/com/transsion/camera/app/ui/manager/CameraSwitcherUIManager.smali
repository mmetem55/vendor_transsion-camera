.class public Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "CameraSwitcherUIManager.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    .line 43
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 103
    new-instance p1, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager$1;-><init>(Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 44
    new-instance p1, Lcom/transsion/camera/app/ui/CameraSwitcherUI;

    iget p2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/CameraSwitcherUI;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 35
    sget-object v0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;)Lcom/transsion/camera/app/ui/ICameraSwitcherUI;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    return-object p0
.end method

.method private onVisibilityChanged(Z)V
    .locals 1

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez p0, :cond_0

    .line 140
    sget-object p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null,return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "key_camera_switcher_visible"

    if-eqz p1, :cond_1

    .line 144
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "camera_switcher_show"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "camera_switcher_hide"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public notifyCameraOperateActionToUI(I)V
    .locals 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "shot2shot end action need enable camera switcher button"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->setEnable(Z)V

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->setEnable(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->setEnable(Z)V

    .line 164
    :goto_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/ui/ICameraSwitcherUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(IZ)V
    .locals 0

    .line 69
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/ICameraSwitcherUI;->onOrientationChanged(IZ)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 75
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScreenFormChanged(IZ)V

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IScreenFormControl;->onScreenFormChanged(IZ)V

    return-void
.end method

.method public onSetupViews()V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/ICameraSwitcherUI;->setupViews()V

    return-void
.end method

.method public setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/ICameraSwitcherUI;->setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    if-eqz p0, :cond_0

    .line 87
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .locals 2

    .line 93
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    if-eqz p1, :cond_1

    .line 95
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_google_lens_visible"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 100
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_vip_selfie_visible"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showOrHide(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 135
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->onVisibilityChanged(Z)V

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 60
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_google_lens_visible"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_vip_selfie_visible"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 64
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->mCameraSwitcherUI:Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/ICameraSwitcherUI;->unInit()V

    return-void
.end method

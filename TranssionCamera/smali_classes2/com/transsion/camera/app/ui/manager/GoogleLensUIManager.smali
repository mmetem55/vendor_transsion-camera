.class public Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "GoogleLensUIManager.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>()V

    .line 163
    new-instance v0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager$1;-><init>(Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "com.transsion.camera.ui.setting.googlelens.GoogleLensUI"

    .line 43
    invoke-static {v1, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/IGoogleLensUI;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 33
    sget-object v0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;)Lcom/transsion/camera/app/ui/IGoogleLensUI;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    return-object p0
.end method


# virtual methods
.method public getGoogleLensUIButtonVisible()I
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IGoogleLensUI;->getGoogleLensButtonVisible()I

    move-result p0

    return p0
.end method

.method public hide()V
    .locals 1

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    if-nez p0, :cond_0

    .line 136
    sget-object p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mGoogleLensUI is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 140
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IGoogleLensUI;->getEntryView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_1

    .line 142
    sget-object p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "google lens entry view is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    const/16 v0, 0x8

    .line 145
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    if-eqz v0, :cond_0

    .line 49
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, v1, v2}, Lcom/transsion/camera/app/ui/IGoogleLensUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public onOrientationChanged(IZ)V
    .locals 0

    .line 103
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    if-eqz p0, :cond_0

    .line 105
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IGoogleLensUI;->onOrientationChanged(I)V

    :cond_0
    return-void
.end method

.method protected onSetupViews()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez v0, :cond_0

    .line 72
    sget-object p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mSettingController is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    if-nez v1, :cond_1

    .line 76
    sget-object p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mGoogleLensUI is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 80
    :cond_1
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/ui/IGoogleLensUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/ui/IGoogleLensUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IGoogleLensUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 156
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    if-eqz p0, :cond_0

    .line 159
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IGoogleLensUI;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method public setGoogleLensSupport(Z)V
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    if-eqz p0, :cond_0

    .line 150
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IGoogleLensUI;->setGoogleLensSupport(Z)V

    :cond_0
    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .locals 2

    .line 56
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    if-eqz p1, :cond_1

    .line 58
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_camera_switcher_visible"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_camera_dual_switch_button_visible"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 64
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    if-eqz p1, :cond_1

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/ui/IGoogleLensUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public show()V
    .locals 1

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    if-nez p0, :cond_0

    .line 121
    sget-object p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mGoogleLensUI is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 125
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IGoogleLensUI;->getEntryView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_1

    .line 127
    sget-object p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "google lens entry view is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public start()V
    .locals 0

    .line 111
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->start()V

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    if-eqz p0, :cond_0

    .line 114
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IGoogleLensUI;->checkLensStatus()V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_camera_switcher_visible"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_camera_dual_switch_button_visible"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    if-eqz v0, :cond_1

    .line 96
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IGoogleLensUI;->unInit()V

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->mGoogleLensUI:Lcom/transsion/camera/app/ui/IGoogleLensUI;

    :cond_1
    return-void
.end method

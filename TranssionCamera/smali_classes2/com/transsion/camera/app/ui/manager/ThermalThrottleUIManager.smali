.class public Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "ThermalThrottleUIManager.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mThermalThrottleUI:Lcom/transsion/camera/app/ui/IThermalThrottleUI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>()V

    .line 20
    new-instance v0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/ThermalThrottleUI;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->mThermalThrottleUI:Lcom/transsion/camera/app/ui/IThermalThrottleUI;

    return-void
.end method


# virtual methods
.method public notifyCameraOperateActionToUI(I)V
    .locals 0

    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->mThermalThrottleUI:Lcom/transsion/camera/app/ui/IThermalThrottleUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/ui/IThermalThrottleUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onSetupViews()V
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->mThermalThrottleUI:Lcom/transsion/camera/app/ui/IThermalThrottleUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IThermalThrottleUI;->initView()V

    return-void
.end method

.method public onThermalThrottleReached(I)V
    .locals 2

    .line 38
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onThermalThrottleReached]..."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->mThermalThrottleUI:Lcom/transsion/camera/app/ui/IThermalThrottleUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IThermalThrottleUI;->show(I)V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 49
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[pause]..."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->mThermalThrottleUI:Lcom/transsion/camera/app/ui/IThermalThrottleUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IThermalThrottleUI;->pause()V

    return-void
.end method

.method public setCutoutHeight(I)V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->mThermalThrottleUI:Lcom/transsion/camera/app/ui/IThermalThrottleUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IThermalThrottleUI;->setCutoutHeight(I)V

    return-void
.end method

.method public setPopupOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;)V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->mThermalThrottleUI:Lcom/transsion/camera/app/ui/IThermalThrottleUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IThermalThrottleUI;->setPopupOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 55
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[unInit]..."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;->mThermalThrottleUI:Lcom/transsion/camera/app/ui/IThermalThrottleUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IThermalThrottleUI;->unInitView()V

    return-void
.end method

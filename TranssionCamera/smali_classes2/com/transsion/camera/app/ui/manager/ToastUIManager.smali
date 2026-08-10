.class public Lcom/transsion/camera/app/ui/manager/ToastUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "ToastUIManager.java"


# instance fields
.field private mToastUI:Lcom/transsion/camera/app/ui/IToastUI;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>()V

    .line 26
    new-instance v0, Lcom/transsion/camera/app/ui/ToastUI;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/ToastUI;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->mToastUI:Lcom/transsion/camera/app/ui/IToastUI;

    return-void
.end method


# virtual methods
.method public notifyCameraOperateActionToUI(I)V
    .locals 0

    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->mToastUI:Lcom/transsion/camera/app/ui/IToastUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/ui/IToastUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onSetupViews()V
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->mToastUI:Lcom/transsion/camera/app/ui/IToastUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IToastUI;->setupViews()V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->mToastUI:Lcom/transsion/camera/app/ui/IToastUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IToastUI;->hideToast()V

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->mToastUI:Lcom/transsion/camera/app/ui/IToastUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IToastUI;->showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ToastUIManager;->mToastUI:Lcom/transsion/camera/app/ui/IToastUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IToastUI;->unInit()V

    return-void
.end method

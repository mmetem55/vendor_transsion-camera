.class public Lcom/transsion/camera/app/ui/manager/AODExitUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "AODExitUIManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitStatistician;,
        Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitListenerWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAODExitUI:Lcom/transsion/camera/app/ui/IAODExitUI;

.field private final mExitStatistician:Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitStatistician;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/manager/AODExitUIManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/AODExitUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>()V

    .line 38
    new-instance v0, Lcom/transsion/camera/app/ui/AODExitUI;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/AODExitUI;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/AODExitUIManager;->mAODExitUI:Lcom/transsion/camera/app/ui/IAODExitUI;

    .line 39
    new-instance v0, Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitStatistician;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitStatistician;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/manager/AODExitUIManager$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/AODExitUIManager;->mExitStatistician:Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitStatistician;

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/manager/AODExitUIManager;)Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitStatistician;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AODExitUIManager;->mExitStatistician:Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitStatistician;

    return-object p0
.end method


# virtual methods
.method public notifyCameraOperateActionToUI(I)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/16 v0, 0x34

    if-eq p1, v0, :cond_1

    const/16 v0, 0x35

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/AODExitUIManager;->show()V

    const/4 p1, 0x1

    .line 101
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/AODExitUIManager;->setEnable(Z)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    const/4 p1, 0x0

    .line 93
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/AODExitUIManager;->setEnable(Z)V

    :goto_0
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AODExitUIManager;->mAODExitUI:Lcom/transsion/camera/app/ui/IAODExitUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IAODExitUI;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AODExitUIManager;->mAODExitUI:Lcom/transsion/camera/app/ui/IAODExitUI;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/IAODExitUI;->onDrag(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AODExitUIManager;->mAODExitUI:Lcom/transsion/camera/app/ui/IAODExitUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/ui/IAODExitUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(IZ)V
    .locals 0

    .line 80
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AODExitUIManager;->mAODExitUI:Lcom/transsion/camera/app/ui/IAODExitUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AODExitUIManager;->mAODExitUI:Lcom/transsion/camera/app/ui/IAODExitUI;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/IAODExitUI;->onDrag(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method protected onSetupViews()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AODExitUIManager;->mExitStatistician:Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitStatistician;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitStatistician;->access$200(Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitStatistician;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    :goto_0
    return-void
.end method

.method public onSingleTapUp(FF)Z
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AODExitUIManager;->mAODExitUI:Lcom/transsion/camera/app/ui/IAODExitUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IAODExitUI;->onSingleTapUp(FF)Z

    move-result p0

    return p0
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AODExitUIManager;->mAODExitUI:Lcom/transsion/camera/app/ui/IAODExitUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IAODExitUI;->onUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 0

    .line 135
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->pause()V

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AODExitUIManager;->mAODExitUI:Lcom/transsion/camera/app/ui/IAODExitUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IAODExitUI;->pause()V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AODExitUIManager;->mAODExitUI:Lcom/transsion/camera/app/ui/IAODExitUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    return-void
.end method

.method public setExitListener(Lcom/transsion/camera/app/common/IAppUIListener$IAODExitListener;)V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AODExitUIManager;->mAODExitUI:Lcom/transsion/camera/app/ui/IAODExitUI;

    new-instance v1, Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitListenerWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitListenerWrapper;-><init>(Lcom/transsion/camera/app/ui/manager/AODExitUIManager;Lcom/transsion/camera/app/common/IAppUIListener$IAODExitListener;Lcom/transsion/camera/app/ui/manager/AODExitUIManager$1;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IAODExitUI;->setExitListener(Lcom/transsion/camera/app/common/IAppUIListener$IAODExitListener;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AODExitUIManager;->mExitStatistician:Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitStatistician;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitStatistician;->access$200(Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitStatistician;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AODExitUIManager;->mAODExitUI:Lcom/transsion/camera/app/ui/IAODExitUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IAODExitUI;->unInit()V

    return-void
.end method

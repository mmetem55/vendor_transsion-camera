.class public Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "SlavePreviewUIManager.java"


# instance fields
.field private final mPreviewUI:Lcom/transsion/camera/app/ui/SlavePreviewUI;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v7, p3

    .line 23
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 24
    new-instance p3, Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-direct {p3, p1, p2}, Lcom/transsion/camera/app/ui/SlavePreviewUI;-><init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;)V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    return-void
.end method


# virtual methods
.method public getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p0

    return-object p0
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->cameraOperateAction(I)V

    .line 48
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->respondPreviewManagerEvent(I)I

    move-result v0

    .line 49
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v1, :cond_0

    .line 50
    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->getCurrentActionState()I

    move-result v1

    invoke-static {v1, p1, v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->filterRespondByState(III)I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->setEnable(Z)V

    goto :goto_1

    :cond_2
    if-nez v0, :cond_4

    .line 59
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->setEnable(Z)V

    goto :goto_1

    .line 54
    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->setEnable(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 41
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScreenFormChanged(IZ)V

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->onScreenFormChanged(I)V

    return-void
.end method

.method public onSetupViews()V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->setupViews()V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->pause()V

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->onPause()V

    return-void
.end method

.method public registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 29
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->resume()V

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->onResume()V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->setEnable(Z)V

    return-void
.end method

.method public setLayoutSize(II)V
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->setLayoutSize(II)V

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->setPreviewSize(II)V

    return-void
.end method

.method public setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->unInit()V

    return-void
.end method

.method public unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SlavePreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/SlavePreviewUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/SlavePreviewUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

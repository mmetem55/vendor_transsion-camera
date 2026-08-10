.class public Lcom/transsion/camera/app/ui/manager/PreviewUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "PreviewUIManager.java"


# instance fields
.field private final mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

.field private mProjectAuxSurfaceSupport:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v7, p3

    .line 32
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    const/4 p3, 0x0

    .line 27
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mProjectAuxSurfaceSupport:Z

    .line 34
    new-instance p3, Lcom/transsion/camera/app/ui/PreviewUI;

    invoke-direct {p3, p1, p2, p4}, Lcom/transsion/camera/app/ui/PreviewUI;-><init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;)V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    return-void
.end method


# virtual methods
.method public currentDisplayStyle()I
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->currentDisplayStyle()I

    move-result p0

    return p0
.end method

.method public destroy()V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->onDestroy()V

    return-void
.end method

.method public getPreviewBackgroundOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->getPreviewBackgroundOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewLayoutRatio()D
    .locals 2

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->getPreviewLayoutRatio()D

    move-result-wide v0

    return-wide v0
.end method

.method public getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSurfaceType()I
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->getPreviewSurfaceType()I

    move-result p0

    return p0
.end method

.method public hideCustomPreviewCover()V
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->hideCustomPreviewCover()V

    return-void
.end method

.method public needBuildBlurCoverView(Z)V
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->needBuildBlurCoverView(Z)V

    return-void
.end method

.method public needRectChangedAnimation(Z)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->needRectChangedAnimation(Z)V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ICameraOperateActionListener;->cameraOperateAction(I)V

    .line 84
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->respondPreviewManagerEvent(I)I

    move-result v0

    .line 85
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v1, :cond_0

    .line 86
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

    .line 93
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setEnable(Z)V

    goto :goto_1

    :cond_2
    if-nez v0, :cond_4

    .line 95
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setEnable(Z)V

    goto :goto_1

    .line 90
    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->setEnable(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onDoubleTap(FF)Z
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->onDoubleTap()Z

    move-result p0

    return p0
.end method

.method public onEnterAnimationComplete()V
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->onEnterAnimationComplete()V

    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mProjectAuxSurfaceSupport:Z

    .line 103
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v1, p1, p0, v0}, Lcom/transsion/camera/app/ui/IPreviewUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 72
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScreenFormChanged(IZ)V

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->onScreenFormChanged(I)V

    return-void
.end method

.method public onSetupViews()V
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->setupViews()V

    return-void
.end method

.method public onSwitchMode(Ljava/lang/String;)V
    .locals 2

    .line 179
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mProjectAuxSurfaceSupport:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 180
    invoke-interface {v0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 181
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->onSwitchMode(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 0

    .line 45
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->pause()V

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->onPause()V

    return-void
.end method

.method public registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method public resetRootParentLayout()V
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->resetRootParentLayout()V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 39
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->resume()V

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->onResume()V

    return-void
.end method

.method public setAuxPreviewLensSupport(ZLjava/lang/String;)V
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mProjectAuxSurfaceSupport:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IPreviewUI;->setAuxPreviewLensSupport(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAuxPreviewModeSupport(ZLjava/lang/String;)V
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mProjectAuxSurfaceSupport:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IPreviewUI;->setAuxPreviewModeSupport(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAuxPreviewSize(II)V
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mProjectAuxSurfaceSupport:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IPreviewUI;->setAuxPreviewSize(II)V

    :cond_0
    return-void
.end method

.method public setBackgroundPreviewModeSupport(Z)V
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->setBackgroundPreviewModeSupport(Z)V

    return-void
.end method

.method public setBackgroundPreviewSize(II)V
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IPreviewUI;->setBackgroundPreviewSize(II)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 223
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 224
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IPreviewUI;->setPreviewSize(II)V

    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .locals 1

    .line 118
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    if-eqz p1, :cond_1

    .line 120
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mProjectAuxSurfaceSupport:Z

    if-eqz v0, :cond_1

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->setSurfaceStatusListener(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;)V

    return-void
.end method

.method public showCustomPreviewCover(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->showCustomPreviewCover(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPreviewUI;->unInit()V

    return-void
.end method

.method public unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;)V
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPreviewUI;->updateCurrentCamera(Ljava/lang/String;)V

    return-void
.end method

.method public updatePreviewLayout(ZZD)V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/IPreviewUI;->updatePreviewLayout(ZZD)V

    return-void
.end method

.method public updateSwitchCameraUI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->mPreviewUI:Lcom/transsion/camera/app/ui/IPreviewUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IPreviewUI;->updateSwitchCameraUI(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

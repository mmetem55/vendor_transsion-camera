.class public Lcom/transsion/camera/app/ui/manager/HintUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "HintUIManager.java"


# instance fields
.field private mCurrentOrientation:I

.field private mFrontDualFlashUIShow:Z

.field private mHasShowLowPowerHint:Z

.field private final mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

.field private mIsTransparent:Z

.field private final mSavingHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>()V

    .line 38
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mSavingHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 44
    iput-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 45
    new-instance v0, Lcom/transsion/camera/app/ui/HintUI;

    invoke-direct {v0, p1, p3}, Lcom/transsion/camera/app/ui/HintUI;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    .line 46
    invoke-interface {v0, p2}, Lcom/transsion/camera/app/ui/IHintUI;->setModePickerControl(Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;)V

    return-void
.end method

.method private pocketScreenType()Z
    .locals 1

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result p0

    const/4 v0, 0x5

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public endHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IHintUI;->endHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    return-object p0
.end method

.method public getHintState()Z
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    if-eqz p0, :cond_0

    .line 244
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHintUI;->getHintState()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hideAllHint()V
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHintUI;->hideAllHint()V

    return-void
.end method

.method public hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 1

    .line 189
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->pocketScreenType()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IHintUI;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public hideSavingDialog()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mSavingHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/ui/IHintUI;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 5

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/IHintUI;->notifyCameraOperateActionToUI(I)V

    .line 79
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->respondHintEvent(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 80
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mIsTransparent:Z

    if-nez v3, :cond_1

    const/16 v0, 0x44

    if-ne p1, v0, :cond_0

    .line 81
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mCurrentOrientation:I

    if-eqz v0, :cond_0

    const/16 v3, 0xb4

    if-eq v0, v3, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IHintUI;->fadeOutHint()V

    .line 86
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mIsTransparent:Z

    goto :goto_0

    :cond_1
    if-nez v0, :cond_3

    .line 87
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mIsTransparent:Z

    if-eqz v0, :cond_3

    .line 88
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mFrontDualFlashUIShow:Z

    if-eqz v0, :cond_2

    return-void

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IHintUI;->fadeInHint()V

    .line 92
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mIsTransparent:Z

    :cond_3
    :goto_0
    const/16 v0, 0xf

    const/16 v3, 0x1b

    if-eq p1, v0, :cond_6

    const/16 v0, 0x90

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    const/16 v0, 0x10

    if-eq p1, v0, :cond_5

    const/16 v0, 0x91

    if-eq p1, v0, :cond_5

    if-ne p1, v3, :cond_7

    .line 101
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IHintUI;->setRecordingState(Z)V

    goto :goto_2

    .line 97
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/ui/IHintUI;->setRecordingState(Z)V

    :cond_7
    :goto_2
    const/16 v0, 0x9

    if-eq p1, v0, :cond_8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_8

    if-eq p1, v2, :cond_8

    const/16 v0, 0x14

    if-ne p1, v0, :cond_9

    .line 108
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    if-eqz v0, :cond_9

    .line 109
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IHintUI;->resetEndHint()V

    :cond_9
    const/4 v0, 0x2

    const/16 v4, 0x13

    if-eq p1, v0, :cond_a

    if-eqz p1, :cond_a

    if-eq p1, v3, :cond_a

    if-eq p1, v4, :cond_a

    const/16 v0, 0x26

    if-eq p1, v0, :cond_a

    const/16 v0, 0x6e

    if-ne p1, v0, :cond_b

    .line 118
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    if-eqz v0, :cond_b

    .line 119
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IHintUI;->resetTwinkleGuide()V

    :cond_b
    const/16 v0, 0x23

    if-eq p1, v0, :cond_e

    const/16 v0, 0x11

    if-eq p1, v0, :cond_e

    const/16 v0, 0xb

    if-ne p1, v0, :cond_c

    goto :goto_3

    :cond_c
    const/16 v0, 0x24

    if-eq p1, v0, :cond_d

    const/16 v0, 0x12

    if-eq p1, v0, :cond_d

    if-eq p1, v3, :cond_d

    if-eq p1, v4, :cond_d

    const/16 v0, 0xc

    if-ne p1, v0, :cond_f

    .line 133
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    if-eqz v0, :cond_f

    .line 134
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/ui/IHintUI;->setTwinkleGuideAvailable(Z)V

    goto :goto_4

    .line 125
    :cond_e
    :goto_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    if-eqz v0, :cond_f

    .line 126
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IHintUI;->setTwinkleGuideAvailable(Z)V

    :cond_f
    :goto_4
    const/16 v0, 0x4c

    if-eq p1, v0, :cond_11

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_10

    goto :goto_5

    .line 140
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/ui/IHintUI;->setEnableHintUI(Z)V

    goto :goto_5

    .line 143
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/ui/IHintUI;->setEnableHintUI(Z)V

    :goto_5
    return-void
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IHintUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/ui/IHintUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(IZ)V
    .locals 1

    .line 155
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/ui/IHintUI;->onOrientationChanged(IZ)V

    .line 157
    iput p1, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mCurrentOrientation:I

    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IHintUI;->onRelativePreviewRectChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 163
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScreenFormChanged(IZ)V

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IScreenFormControl;->onScreenFormChanged(IZ)V

    return-void
.end method

.method protected onSetupViews()V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHintUI;->setupViews()V

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHasShowLowPowerHint:Z

    return-void
.end method

.method public registerHintStateListener(Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;)V
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    if-eqz p0, :cond_0

    .line 232
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IHintUI;->registerHintStateListener(Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;)V

    :cond_0
    return-void
.end method

.method public resetTwinkleGuide()V
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    if-eqz p0, :cond_0

    .line 251
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHintUI;->resetTwinkleGuide()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHasShowLowPowerHint:Z

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHintUI;->resume()V

    return-void
.end method

.method public setEnableHintUI(Z)V
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IHintUI;->setEnableHintUI(Z)V

    return-void
.end method

.method public setHintUITrans(II)V
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IHintUI;->setHintUITrans(II)V

    return-void
.end method

.method public setRecorderOrientation(I)V
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    if-eqz p0, :cond_0

    .line 227
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IHintUI;->setRecorderOrientation(I)V

    :cond_0
    return-void
.end method

.method public showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 1

    .line 172
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->pocketScreenType()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IHintUI;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public showLowPowerHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 1

    .line 179
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/HintUIManager;->pocketScreenType()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 182
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHasShowLowPowerHint:Z

    if-nez v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/IHintUI;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    const/4 p1, 0x1

    .line 184
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHasShowLowPowerHint:Z

    :cond_1
    return-void
.end method

.method public showSavingDialog(Ljava/lang/String;I)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mSavingHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mSavingHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setProgressType(I)V

    .line 210
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mSavingHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/ui/IHintUI;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IHintUI;->unInit()V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mFrontDualFlashUIShow:Z

    return-void
.end method

.method public unRegisterHintStateListener()V
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mHintUI:Lcom/transsion/camera/app/ui/IHintUI;

    if-eqz p0, :cond_0

    .line 238
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHintUI;->unRegisterHintStateListener()V

    :cond_0
    return-void
.end method

.method public updateFrontDualFlashUIState(Z)V
    .locals 0

    .line 261
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/HintUIManager;->mFrontDualFlashUIShow:Z

    return-void
.end method

.class public abstract Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "AbstractModePickerUIManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IModeRegionControl;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mIsSecureCamera:Z

.field protected mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

.field protected mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 50
    invoke-direct/range {p0 .. p7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    return-void
.end method


# virtual methods
.method public flashModeListCurrentCamera()V
    .locals 0

    return-void
.end method

.method protected generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 232
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/FeatureResource;

    .line 233
    iget-object v5, v4, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 234
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public hideModeRegion()V
    .locals 0

    return-void
.end method

.method public hideMoreMode()V
    .locals 0

    return-void
.end method

.method public isModePanelVisible()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isModeTabScrolling()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public modePickerHideAlphaAnimator(I)Landroid/animation/ObjectAnimator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public modePickerShowAlphaAnimator(I)Landroid/animation/ObjectAnimator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected onSetupViews()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 1

    .line 80
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->pause()V

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 83
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->hide(Z)V

    :cond_0
    return-void
.end method

.method public resetMoreModeToNormal()V
    .locals 0

    return-void
.end method

.method public restoreCurrentModeByFacing(I)V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->resume()V

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 74
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->hide(Z)V

    :cond_0
    return-void
.end method

.method public setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;",
            "Z)V"
        }
    .end annotation

    return-void
.end method

.method public setModeOpaque()V
    .locals 0

    return-void
.end method

.method public setModePickerListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-void
.end method

.method public setModeUnOpaque()V
    .locals 0

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 0

    return-void
.end method

.method public setScrollListener(Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;)V
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->setScrollListener(Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;)V

    return-void
.end method

.method public setSecureCamera(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mIsSecureCamera:Z

    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 0

    return-void
.end method

.method public shouldExitCameraOnBackPressed()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public showModePickerGuide()V
    .locals 0

    return-void
.end method

.method public showModeRegion()V
    .locals 0

    return-void
.end method

.method public showModeRegionOnSinked()V
    .locals 0

    return-void
.end method

.method public showMoreModeGuideAnim()V
    .locals 0

    return-void
.end method

.method public showOrHideModePickerRootUI(ZZ)V
    .locals 0

    return-void
.end method

.method public showOrHideMoreModeGuideRightView(Z)V
    .locals 0

    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method

.method public updateArrowEnableState(Z)V
    .locals 0

    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;Z)V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->updateCurrentCamera(Ljava/lang/String;)V

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;ZZ)V
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    return-void
.end method

.method public updateCurrentModes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;)V"
        }
    .end annotation

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->setModeList(Ljava/util/List;)V

    return-void
.end method

.method public updateCurrentModes(Ljava/util/List;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public updateGuideRightRootVisibleState(I)V
    .locals 0

    return-void
.end method

.method public updateMoreEditMode(Z)V
    .locals 0

    return-void
.end method

.method public updatePanelItemClickable(Z)V
    .locals 0

    return-void
.end method

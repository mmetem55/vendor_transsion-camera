.class public Lcom/transsion/camera/app/ui/TopBarUI;
.super Lcom/transsion/camera/app/ui/AbstractTopBarUI;
.source "TopBarUI.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mSettingUIs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/TopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/PopupOptionManager;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/PopupOptionManager;)V

    return-void
.end method


# virtual methods
.method protected getPopupAnimationStrategy()Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;
    .locals 0

    .line 39
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->getPopupAnimationStrategy()Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->onOrientationChanged(I)V

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    instance-of v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v0, :cond_0

    .line 95
    check-cast p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->onOrientationChanged(I)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/TopBarUI;->recover()V

    return-void
.end method

.method public recover()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mSettingUIs:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mSettingUIs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mSettingUIs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 105
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 106
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 0

    .line 83
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->showTopBarContainer()V

    .line 84
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/TopBarUI;->recover()V

    return-void
.end method

.method protected updateTopBarLayout(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateTopBarLayout(Ljava/util/List;)V

    .line 46
    iput-object p1, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mSettingUIs:Ljava/util/List;

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 48
    sget-object p0, Lcom/transsion/camera/app/ui/TopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mTopBarContainer is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 51
    :cond_0
    instance-of v0, v0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v0, :cond_5

    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 56
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    .line 58
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 59
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-interface {v4, v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V

    .line 60
    invoke-interface {v4}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-interface {v4}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_1

    .line 63
    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    const v8, 0x7f0c01c9

    invoke-interface {v4, v6, v7, v8}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v6

    const v7, 0x3f4ccccd    # 0.8f

    const/4 v8, 0x0

    .line 64
    invoke-static {v6, v7, v8}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 66
    :cond_1
    iget-object v7, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-interface {v4, v7}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->onScreenSupply(Z)V

    .line 67
    invoke-interface {v4}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setupEntryView()V

    .line 68
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v4}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getIsShouldGone()Z

    move-result v7

    if-nez v7, :cond_2

    .line 69
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v4, v6}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPositionInTopBar(I)V

    .line 72
    :cond_2
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/PopupOptionManager;->getCurrentShowView()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/PopupOptionManager;->needShowPopUpOption()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 74
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v4, v2}, Lcom/transsion/camera/app/ui/PopupOptionManager;->setNeedShowPopUpOption(Z)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Landroid/view/ViewGroup;

    check-cast p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    .line 79
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->updateTopBar(Ljava/util/Map;)V

    return-void

    .line 52
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mTopBarContainer should be instance of TopBarContainer!!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

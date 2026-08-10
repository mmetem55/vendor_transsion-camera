.class public Lcom/transsion/camera/app/ui/MorePanelUI;
.super Ljava/lang/Object;
.source "MorePanelUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IModePanelUI;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAllModeResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation
.end field

.field private mCamera:Ljava/lang/String;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

.field private mRootView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/MorePanelUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/MorePanelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/mode/ModeOrderProvider;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;)V
    .locals 7

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 48
    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/app/ui/mode/more/MoreView;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/mode/ModeOrderProvider;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    return-void
.end method


# virtual methods
.method public cancelDragAndDrop()V
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    if-eqz p0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->resetDragAndDropState()V

    :cond_0
    return-void
.end method

.method public hide()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->hideMoreView()V

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const v0, 0x7f0902da

    .line 53
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mRootView:Landroid/view/ViewGroup;

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public isVisible()Z
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mRootView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyListTypeUpdate()V
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->switchItemType()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->onOrientationChanged(I)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->onScreenFormChanged(IZ)V

    return-void
.end method

.method public reInflateMoreView()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mRootView:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mItems:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mAllModeResources:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mCamera:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public refreshModePanelView()V
    .locals 0

    return-void
.end method

.method public resetMoreModeToNormal()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->resetMoreModeToNormal()V

    .line 174
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/MorePanelUI;->reInflateMoreView()V

    .line 175
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/MorePanelUI;->hide()V

    return-void
.end method

.method public restoreView()V
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->restoreView()V

    return-void
.end method

.method public setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .locals 0

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    return-void
.end method

.method public setClickModeIconListener(Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickModeIconListener;)V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setClickModeIconListener(Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickModeIconListener;)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setEnable(Z)V

    return-void
.end method

.method public setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    return-void
.end method

.method public setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mItems:Ljava/util/List;

    .line 80
    iput-object p2, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mAllModeResources:Ljava/util/List;

    .line 81
    iput-object p3, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mCamera:Ljava/lang/String;

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public setModeNameBeforeSwitchMoreMode(Ljava/lang/String;)V
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setModeNameBeforeSwitchMoreMode(Ljava/lang/String;)V

    return-void
.end method

.method public setModePanelGuideEnable(Z)V
    .locals 0

    return-void
.end method

.method public setOnScrollListener(Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setMorePanelScrollListener(Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;)V

    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method public setViewEnable(Z)V
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setViewEnable(Z)V

    return-void
.end method

.method public setupViews()V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setupViews()V

    return-void
.end method

.method public show()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showMoreView()V

    :cond_0
    return-void
.end method

.method public shrinkModePanel()V
    .locals 0

    return-void
.end method

.method public spreadModePanel()V
    .locals 0

    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;)V
    .locals 0

    .line 167
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/MorePanelUI;->reInflateMoreView()V

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->updateCurrentMode(Ljava/lang/String;)V

    return-void
.end method

.method public updateItemClickable(Z)V
    .locals 0

    return-void
.end method

.class public abstract Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;
.super Ljava/lang/Object;
.source "AbstractVssUI.java"

# interfaces
.implements Lcom/transsion/camera/ui/setting/videosightshock/ui/IVssUI;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mLastOffset:I

.field private mLastPosition:I

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field private mOrientation:I

.field private mParentRootView:Landroid/view/View;

.field protected mParentView:Landroid/view/ViewGroup;

.field protected mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field protected mRootView:Landroid/widget/FrameLayout;

.field protected mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mVssItemAdapter:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

.field private final mVssItemStatusListener:Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLastOffset:I

    .line 48
    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLastPosition:I

    .line 51
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mVssItemStatusListener:Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;

    return-void
.end method

.method private checkStatus(Ljava/lang/String;)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mVssItemStatusListener:Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->getCurrentStyleOffValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;->onInitialFinished(ZLjava/lang/String;)V

    return-void
.end method

.method private getSkinColor()Ljava/lang/String;
    .locals 1

    const-string p0, "debug.vendor.sys.oobe.camera_skin"

    const-string v0, "white"

    .line 119
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected abstract getCurrentStyleOffValue()Ljava/lang/String;
.end method

.method public getRecyclerViewRoot()Landroid/widget/FrameLayout;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRootView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected abstract getVideoItemList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;",
            ">;"
        }
    .end annotation
.end method

.method public getVssItemAdapter()Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mVssItemAdapter:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

    return-object p0
.end method

.method public initSelectRecyclerViewData()V
    .locals 4

    .line 69
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockLinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mParentRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 72
    iget v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLastPosition:I

    if-ltz v1, :cond_0

    .line 73
    iget v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLastOffset:I

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mParentRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI$1;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 89
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_video_effect_style"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->getSkinColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockInfo;->getRealEffectIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_video_frame_style"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockInfo;->getRealFrameIndex(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 98
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 101
    :goto_0
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->getVideoItemList()Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mOrientation:I

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;-><init>(Ljava/util/List;II)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mVssItemAdapter:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

    .line 102
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mVssItemAdapter:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->setOnItemSelectedListener(Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter$OnItemClickListener;)V

    return-void
.end method

.method protected abstract initSubView(Lcom/transsion/camera/app/common/IAppUI;)V
.end method

.method public initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/setting/ISetting;Landroid/view/View;ILcom/transsion/camera/app/common/IAppUI;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 58
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mParentView:Landroid/view/ViewGroup;

    .line 59
    iput-object p4, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mParentRootView:Landroid/view/View;

    .line 60
    iput-object p3, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 61
    iput p5, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mOrientation:I

    .line 62
    invoke-virtual {p0, p6}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->initSubView(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 63
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->initSelectRecyclerViewData()V

    .line 64
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->checkStatus(Ljava/lang/String;)V

    return-void
.end method

.method public onItemSelected(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    .line 125
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;->mValue:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mVssItemStatusListener:Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;->onItemSelectStateChanged(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)V

    :cond_0
    return-void
.end method

.method public recoverPanelToDefault(Z)V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mVssItemAdapter:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->getCurrentStyleOffValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->setCurrentPosition(IZ)V

    .line 158
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->setEnable(Z)V

    if-eqz p1, :cond_1

    .line 161
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 162
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->getCurrentStyleOffValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 163
    iput v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLastOffset:I

    .line 164
    iput v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLastPosition:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mVssItemAdapter:Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;

    if-eqz p0, :cond_0

    .line 147
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VideoSightShockItemAdapter;->setEnable(Z)V

    :cond_0
    return-void
.end method

.method public updatePositionAndOffset(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 110
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLastOffset:I

    .line 114
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLastPosition:I

    :cond_1
    return-void
.end method

.method public updateRecyclerViewScrollState(I)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 141
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockLinearLayoutManager;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockLinearLayoutManager;->setScrollEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.class public Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;
.super Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;
.source "VideoFrameUI.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mRestriction3ATouchArea:Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;


# direct methods
.method public static synthetic $r8$lambda$67r2Knkz41JSPgQCoqY50Z3mnm4(Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;->lambda$getVideoItemList$0(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;)V

    return-void
.end method

.method private synthetic lambda$getVideoItemList$0(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)Z
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p0

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;->mValue:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getCurrentStyleOffValue()Ljava/lang/String;
    .locals 0

    const-string p0, "0"

    return-object p0
.end method

.method public getVideoItemList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-static {}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockInfo;->getVideoFrameItem()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;)V

    .line 39
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public initSubView(Lcom/transsion/camera/app/common/IAppUI;)V
    .locals 4

    .line 28
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mParentView:Landroid/view/ViewGroup;

    const v2, 0x7f0c01d4

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901c3

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRootView:Landroid/widget/FrameLayout;

    const v1, 0x7f0901c4

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;->mRestriction3ATouchArea:Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;

    invoke-direct {v0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;->mRestriction3ATouchArea:Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;

    :cond_0
    return-void
.end method

.method public onItemSelected(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    .line 45
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFrameUI;->mRestriction3ATouchArea:Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;

    iget-object v2, p1, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;->mValue:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/ui/setting/videosightshock/Restriction3ATouchArea;->postRectRestrictionArea(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    .line 47
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->onItemSelected(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)V

    return-void
.end method

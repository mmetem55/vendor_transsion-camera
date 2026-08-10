.class public Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;
.super Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;
.source "VideoFilterUI.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method public static synthetic $r8$lambda$-_o6WrM_xZToFiEDTaRhOlKIm4o(Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->lambda$getVideoItemList$0(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/listener/IVssListener;)V

    return-void
.end method

.method private getSkinColor()Ljava/lang/String;
    .locals 1

    const-string p0, "debug.vendor.sys.oobe.camera_skin"

    const-string v0, "white"

    .line 45
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getVideoItemList$0(Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;)Z
    .locals 0

    .line 36
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

    .line 35
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->getSkinColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockInfo;->getVideoFilterItem(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;)V

    .line 36
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
    .locals 3

    .line 28
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mParentView:Landroid/view/ViewGroup;

    const v1, 0x7f0c01d3

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09019f

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRootView:Landroid/widget/FrameLayout;

    const v0, 0x7f0901a0

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/ui/AbstractVssUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

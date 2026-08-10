.class final Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalSnapHelper;
.super Landroidx/recyclerview/widget/LinearSnapHelper;
.source "HorizontalRecycleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HorizontalSnapHelper"
.end annotation


# instance fields
.field private mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 981
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$1;)V
    .locals 0

    .line 981
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalSnapHelper;-><init>()V

    return-void
.end method

.method static synthetic access$2600(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalSnapHelper;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 981
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private distanceToCenter(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I
    .locals 0

    .line 1112
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p0, p2

    .line 1114
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1115
    invoke-virtual {p3}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    goto :goto_0

    .line 1117
    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    :goto_0
    sub-int/2addr p0, p1

    return p0
.end method

.method private findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;
    .locals 6

    .line 1017
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1024
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1025
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v1, p2

    goto :goto_0

    .line 1027
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result p2

    div-int/lit8 v1, p2, 0x2

    :goto_0
    const p2, 0x7fffffff

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p0, :cond_3

    .line 1032
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1033
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v4, v1

    .line 1034
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, p2, :cond_2

    move-object v0, v3

    move p2, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 1

    .line 1124
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 1125
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1127
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    return-object p0
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1069
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1070
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1059
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1060
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalSnapHelper;->distanceToCenter(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result p0

    aput p0, v0, v2

    goto :goto_0

    :cond_0
    aput v2, v0, v2

    :goto_0
    return-object v0
.end method

.method protected createSnapScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/LinearSmoothScroller;
    .locals 2

    .line 1076
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    return-object v1

    .line 1082
    :cond_1
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalSnapHelper$1;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, p0, v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalSnapHelper$1;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalSnapHelper;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object v1
.end method

.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 1

    .line 1001
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalSnapHelper;->findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

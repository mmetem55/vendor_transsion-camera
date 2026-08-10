.class final Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;
.super Landroidx/recyclerview/widget/LinearSnapHelper;
.source "VerticalRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VerticalSnapHelper"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 970
    const-class v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)V
    .locals 0

    .line 970
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$1;)V
    .locals 0

    .line 970
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 970
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private distanceToSelectedView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I
    .locals 0

    .line 1095
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    .line 1096
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$600(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private findSelectedView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;
    .locals 6

    .line 1006
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1009
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$600(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)I

    move-result p0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    .line 1014
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1016
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v4, p0

    .line 1017
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v1, :cond_1

    move-object v0, v3

    move v1, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 1103
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1105
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

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

    .line 1052
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1053
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1042
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1043
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;->distanceToSelectedView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result p0

    aput p0, v0, v2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    aput p0, v0, v2

    :goto_0
    return-object v0
.end method

.method protected createSnapScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/LinearSmoothScroller;
    .locals 2

    .line 1059
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    return-object v1

    .line 1065
    :cond_1
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper$1;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, p0, v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper$1;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object v1
.end method

.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 1

    .line 990
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;->findSelectedView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.class Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "VerticalRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;->createSnapScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/LinearSmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final MILLISECONDS_PER_INCH:F = 200.0f


# instance fields
.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field final synthetic this$1:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;

.field final synthetic val$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 1065
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper$1;->this$1:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;

    iput-object p3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper$1;->val$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 1067
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-direct {p1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper$1;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 0

    .line 1088
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x43480000    # 200.0f

    div-float/2addr p1, p0

    return p1
.end method

.method protected onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 2

    .line 1072
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper$1;->this$1:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;

    invoke-static {p2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;->access$2500(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 1075
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper$1;->this$1:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper$1;->val$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p2, v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object p1

    const/4 p2, 0x0

    .line 1076
    aget p2, p1, p2

    const/4 v0, 0x1

    .line 1077
    aget p1, p1, v0

    .line 1078
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xa

    .line 1080
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper$1;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, p1, v0, p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 1082
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalSnapHelper$1;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, p1, v0, p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    :goto_0
    return-void
.end method

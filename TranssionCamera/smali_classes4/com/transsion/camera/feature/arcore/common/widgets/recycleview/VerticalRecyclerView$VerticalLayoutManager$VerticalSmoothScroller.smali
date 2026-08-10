.class Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalLayoutManager$VerticalSmoothScroller;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "VerticalRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerticalSmoothScroller"
.end annotation


# static fields
.field private static final MILLISECONDS_PER_INCH:F = 250.0f


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalLayoutManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalLayoutManager;Landroid/content/Context;)V
    .locals 0

    .line 943
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalLayoutManager$VerticalSmoothScroller;->this$1:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalLayoutManager;

    .line 944
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .locals 3

    .line 949
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 950
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 954
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 955
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    .line 956
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    .line 957
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 958
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 959
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalLayoutManager$VerticalSmoothScroller;->this$1:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalLayoutManager;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalLayoutManager;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$600(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)I

    move-result p0

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    sub-int/2addr p0, v1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 0

    .line 964
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x437a0000    # 250.0f

    div-float/2addr p1, p0

    return p1
.end method

.class final Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "HorizontalRecycleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HorizontalLayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager$HorizontalSmoothScroller;
    }
.end annotation


# instance fields
.field private mIsLeft:Z

.field private mItemMargin:I

.field private mItemWidth:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mTransformer:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer;

.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 886
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    .line 887
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 p1, 0x1

    .line 880
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;->mIsLeft:Z

    .line 888
    iput p3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;->mItemWidth:I

    .line 889
    iput p4, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;->mItemMargin:I

    .line 890
    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method private applyItemTransformToChildren()V
    .locals 6

    .line 932
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;->mTransformer:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 933
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 934
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 935
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;->transformDistanceToScrollStride(Landroid/view/View;)F

    move-result v3

    .line 936
    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;->mTransformer:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer;

    iget-boolean v5, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;->mIsLeft:Z

    invoke-interface {v4, v2, v3, v5, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer;->transformItem(Landroid/view/View;FZI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private transformDistanceToScrollStride(Landroid/view/View;)F
    .locals 1

    .line 942
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    .line 943
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    const/4 p1, 0x1

    .line 945
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;->mIsLeft:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 947
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;->mIsLeft:Z

    .line 949
    :goto_0
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;->mItemWidth:I

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;->mItemMargin:I

    add-int/2addr p1, p0

    .line 950
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p0, v0

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 908
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;->mItemWidth:I

    const/4 v1, -0x2

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 914
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 916
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;->applyItemTransformToChildren()V

    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$000(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 924
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    .line 926
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;->applyItemTransformToChildren()V

    return p1
.end method

.method public setOrientation(I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 900
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only HORIZONTAL can be set here !!! | orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 903
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    return-void
.end method

.method public setTransformer(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer;)V
    .locals 0

    .line 894
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;->mTransformer:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ITransformer;

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 955
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager$HorizontalSmoothScroller;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager$HorizontalSmoothScroller;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;Landroid/content/Context;)V

    .line 956
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 957
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

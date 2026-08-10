.class public Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$BaseItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "HorizontalRecycleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseItemDecoration"
.end annotation


# instance fields
.field protected mItemMargin:I

.field protected mItemWidth:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 622
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 623
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$BaseItemDecoration;->mItemWidth:I

    .line 624
    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$BaseItemDecoration;->mItemMargin:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    .line 629
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 631
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    if-nez p4, :cond_0

    .line 633
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "getItemOffsets adapter is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 637
    :cond_0
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$BaseItemDecoration;->mItemWidth:I

    .line 638
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    const/4 v2, 0x0

    if-le v1, v0, :cond_1

    sub-int/2addr v1, v0

    .line 640
    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    move v1, v2

    .line 642
    :goto_0
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p4

    .line 643
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_2

    .line 645
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$BaseItemDecoration;->mItemMargin:I

    invoke-virtual {p1, v1, v2, p0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_2
    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_3

    .line 647
    invoke-virtual {p1, v2, v2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 649
    :cond_3
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$BaseItemDecoration;->mItemMargin:I

    invoke-virtual {p1, v2, v2, p0, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-void
.end method

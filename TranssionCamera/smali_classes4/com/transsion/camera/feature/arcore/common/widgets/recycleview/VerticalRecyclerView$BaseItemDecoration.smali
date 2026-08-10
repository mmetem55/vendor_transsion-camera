.class public Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$BaseItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "VerticalRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;
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

    .line 604
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 605
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$BaseItemDecoration;->mItemWidth:I

    .line 606
    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$BaseItemDecoration;->mItemMargin:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 611
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 613
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    if-nez p4, :cond_0

    .line 615
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "getItemOffsets adapter is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 618
    :cond_0
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p4

    .line 619
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_1

    .line 621
    iget p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$BaseItemDecoration;->mItemWidth:I

    mul-int/lit8 p2, p2, 0x2

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$BaseItemDecoration;->mItemMargin:I

    invoke-virtual {p1, p3, p2, p3, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_2

    .line 623
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$BaseItemDecoration;->mItemWidth:I

    mul-int/lit8 p0, p0, 0x4

    invoke-virtual {p1, p3, p3, p3, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 625
    :cond_2
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$BaseItemDecoration;->mItemMargin:I

    invoke-virtual {p1, p3, p3, p3, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

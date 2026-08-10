.class public Lcom/transsion/camera/feature/arcfilter/setting/ui/PaddingItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "PaddingItemDecoration.java"


# instance fields
.field private final mFirstItemPadding:I

.field private final mItemPadding:I

.field private final mLastItemPadding:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 14
    iput p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/PaddingItemDecoration;->mFirstItemPadding:I

    .line 15
    iput p2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/PaddingItemDecoration;->mItemPadding:I

    .line 16
    iput p3, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/PaddingItemDecoration;->mLastItemPadding:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 21
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 23
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 25
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    goto :goto_0

    :cond_0
    move p3, p4

    :goto_0
    if-nez p2, :cond_1

    .line 28
    iget p2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/PaddingItemDecoration;->mFirstItemPadding:I

    iget p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/PaddingItemDecoration;->mItemPadding:I

    invoke-virtual {p1, p2, p4, p0, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_2

    .line 30
    iget p2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/PaddingItemDecoration;->mItemPadding:I

    iget p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/PaddingItemDecoration;->mLastItemPadding:I

    invoke-virtual {p1, p2, p4, p0, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 32
    :cond_2
    iget p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/PaddingItemDecoration;->mItemPadding:I

    invoke-virtual {p1, p0, p4, p0, p4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-void
.end method

.class Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;
.super Ljava/lang/Object;
.source "GalleryLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutState"
.end annotation


# static fields
.field static final INVALID_LAYOUT:I = -0x80000000

.field static final ITEM_DIRECTION_HEAD:I = -0x1

.field static final ITEM_DIRECTION_TAIL:I = 0x1

.field static final LAYOUT_END:I = 0x1

.field static final LAYOUT_START:I = -0x1

.field static final SCROLLING_OFFSET_NaN:I = -0x80000000

.field static final TAG:Ljava/lang/String; = "LLM#LayoutState"


# instance fields
.field mAvailable:I

.field mCurrentPosition:I

.field mExtraFillSpace:I

.field mInfinite:Z

.field mIsPreLayout:Z

.field mItemDirection:I

.field mLastScrollDelta:I

.field mLayoutDirection:I

.field mNoRecycleSpace:I

.field mOffset:I

.field mRecycle:Z

.field mScrapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mScrollingOffset:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 1440
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mRecycle:Z

    const/4 v0, 0x0

    .line 1481
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 1488
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mNoRecycleSpace:I

    .line 1495
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mIsPreLayout:Z

    const/4 v0, 0x0

    .line 1507
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$1;)V
    .locals 0

    .line 1421
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;-><init>()V

    return-void
.end method

.method private nextViewFromScrapList()Landroid/view/View;
    .locals 5

    .line 1559
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1561
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1563
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1564
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 1567
    :cond_0
    iget v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    if-ne v4, v3, :cond_1

    .line 1568
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->assignPositionFromScrapList(Landroid/view/View;)V

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public assignPositionFromScrapList(Landroid/view/View;)V
    .locals 0

    .line 1576
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->nextViewInLimitedList(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 1578
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mCurrentPosition:I

    goto :goto_0

    .line 1580
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1581
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mCurrentPosition:I

    :goto_0
    return-void
.end method

.method hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z
    .locals 2

    .line 1518
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 1522
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mCurrentPosition:I

    if-nez p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    return v1
.end method

.method log()V
    .locals 2

    .line 1616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "avail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mAvailable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ind:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mItemDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", layoutDir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mLayoutDirection:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LLM#LayoutState"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method next(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1

    .line 1534
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1535
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->nextViewFromScrapList()Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 1538
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p2

    .line 1539
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mCurrentPosition:I

    if-gez v0, :cond_1

    add-int/lit8 p2, p2, -0x1

    .line 1540
    iput p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mCurrentPosition:I

    goto :goto_0

    :cond_1
    if-lt v0, p2, :cond_2

    const/4 p2, 0x0

    .line 1542
    iput p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1545
    :cond_2
    :goto_0
    iget p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1546
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p1

    .line 1547
    iget p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mCurrentPosition:I

    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mCurrentPosition:I

    return-object p1
.end method

.method public nextViewInLimitedList(Landroid/view/View;)Landroid/view/View;
    .locals 7

    .line 1586
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 1593
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1595
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eq v4, p1, :cond_3

    .line 1596
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 1599
    :cond_0
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v5

    iget v6, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mCurrentPosition:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mItemDirection:I

    mul-int/2addr v5, v6

    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    if-ge v5, v2, :cond_3

    move-object v1, v4

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    move v2, v5

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object v1
.end method

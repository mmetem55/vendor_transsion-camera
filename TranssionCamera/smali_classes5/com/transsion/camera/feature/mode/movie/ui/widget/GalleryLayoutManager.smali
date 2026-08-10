.class public Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "GalleryLayoutManager.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$ScaleItemTransform;,
        Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;,
        Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;,
        Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;,
        Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;,
        Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$IItemTransform;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_OFFSET:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "GalleryLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private final mAnchorInfo:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;

.field private final mCenterRegion:Landroid/graphics/Rect;

.field private mInitialPrefetchItemCount:I

.field private mItemTransform:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$IItemTransform;

.field private mLastStackFromEnd:Z

.field private final mLayoutChunkResult:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;

.field private mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

.field private mOrientation:I

.field private mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field private mPendingSavedState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;

.field private mPendingScrollPosition:I

.field private mReusableIntPair:[I

.field private mReverseLayout:Z

.field private mShouldReverseLayout:Z

.field final mSnapHelper:Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>(ILcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;)V
    .locals 3

    .line 140
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientation:I

    const/4 v0, -0x1

    .line 96
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingScrollPosition:I

    .line 104
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mAnchorInfo:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;

    .line 109
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$1;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutChunkResult:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;

    const/4 v0, 0x2

    .line 114
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mInitialPrefetchItemCount:I

    new-array v0, v0, [I

    .line 119
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mReusableIntPair:[I

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mCenterRegion:Landroid/graphics/Rect;

    .line 125
    new-instance v2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$ScaleItemTransform;

    invoke-direct {v2, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$ScaleItemTransform;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$1;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mItemTransform:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$IItemTransform;

    .line 141
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->setOrientation(I)V

    .line 142
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mSnapHelper:Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;

    .line 143
    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->getCenterRegion()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method private calculateToCenterFraction(Landroid/view/View;F)F
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mSnapHelper:Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 620
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->distanceToCenter(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p2

    .line 621
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 622
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p0

    int-to-float p1, p0

    cmpl-float p2, v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    if-ltz p2, :cond_0

    return v1

    :cond_0
    neg-int p0, p0

    int-to-float p0, p0

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_1

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    :cond_1
    mul-float/2addr v0, v1

    div-float/2addr v0, p1

    return v0
.end method

.method private collectPrefetchPositionsForLayoutState(Landroidx/recyclerview/widget/RecyclerView$State;Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0

    .line 905
    iget p0, p2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mCurrentPosition:I

    if-ltz p0, :cond_0

    .line 906
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-ge p0, p1, :cond_0

    const/4 p1, 0x0

    .line 907
    iget p2, p2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {p3, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    :cond_0
    return-void
.end method

.method private createLayoutState()Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;
    .locals 1

    .line 813
    new-instance p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$1;)V

    return-object p0
.end method

.method private ensureLayoutState()V
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    if-nez v0, :cond_0

    .line 803
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->createLayoutState()Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    :cond_0
    return-void
.end method

.method private fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I
    .locals 6

    .line 1209
    iget v0, p2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mAvailable:I

    .line 1210
    iget v1, p2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mExtraFillSpace:I

    add-int/2addr v1, v0

    .line 1211
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutChunkResult:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;

    .line 1212
    :cond_0
    iget-boolean v3, p2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mInfinite:Z

    if-nez v3, :cond_1

    if-lez v1, :cond_7

    :cond_1
    invoke-virtual {p2, p3}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1213
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;->resetInternal()V

    .line 1215
    invoke-direct {p0, p1, p3, p2, v2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->layoutChunk(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;)V

    .line 1217
    iget-boolean v3, v2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;->mFinished:Z

    if-eqz v3, :cond_2

    goto :goto_0

    .line 1220
    :cond_2
    iget v3, p2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mOffset:I

    iget v4, v2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;->mConsumed:I

    iget v5, p2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mOffset:I

    .line 1227
    iget-boolean v3, v2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    if-eqz v3, :cond_3

    iget-object v3, p2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v3, :cond_3

    .line 1228
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1229
    :cond_3
    iget v3, p2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mAvailable:I

    iget v4, v2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v3, v4

    iput v3, p2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v1, v4

    .line 1234
    :cond_4
    iget v3, p2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mScrollingOffset:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_6

    .line 1235
    iget v4, v2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v3, v4

    iput v3, p2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1236
    iget v4, p2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mAvailable:I

    if-gez v4, :cond_5

    add-int/2addr v3, v4

    .line 1237
    iput v3, p2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1239
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;)V

    :cond_6
    if-eqz p4, :cond_0

    .line 1241
    iget-boolean v3, v2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;->mFocusable:Z

    if-eqz v3, :cond_0

    .line 1248
    :cond_7
    :goto_0
    iget p0, p2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v0, p0

    return v0
.end method

.method private getCenterCoordinate()I
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mCenterRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 688
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->getHorizontalSpace()I

    move-result p0

    goto :goto_0

    .line 691
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->getVerticalSpace()I

    move-result p0

    :goto_0
    shr-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 694
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 695
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mCenterRegion:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    goto :goto_1

    .line 697
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mCenterRegion:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    :goto_1
    return p0
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 1

    .line 1345
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    .line 1335
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private getChildSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)I
    .locals 1

    .line 678
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p2

    .line 679
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 680
    invoke-virtual {p0, p2, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 681
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 682
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method private getHorizontalSpace()I
    .locals 2

    .line 1321
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private getVerticalSpace()I
    .locals 2

    .line 1325
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private layoutChunk(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;)V
    .locals 7

    .line 1253
    invoke-virtual {p3, p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->next(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 1260
    iput-boolean p2, p4, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;->mFinished:Z

    return-void

    .line 1263
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1264
    iget-object v0, p3, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 1265
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mShouldReverseLayout:Z

    iget v3, p3, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_1

    move v3, p2

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-ne v0, v3, :cond_2

    .line 1267
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1269
    :cond_2
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 1272
    :cond_3
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mShouldReverseLayout:Z

    iget v3, p3, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_4

    move v3, p2

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    if-ne v0, v3, :cond_5

    .line 1274
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_2

    .line 1276
    :cond_5
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 1279
    :goto_2
    invoke-virtual {p0, p1, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 1280
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 1282
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientation:I

    if-ne v0, p2, :cond_7

    .line 1283
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->getHorizontalSpace()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    shr-int/2addr v0, p2

    .line 1284
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    .line 1286
    iget v3, p3, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_6

    .line 1287
    iget p3, p3, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mOffset:I

    .line 1288
    iget v1, p4, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int v1, p3, v1

    move v5, p3

    move v3, v1

    goto :goto_3

    .line 1290
    :cond_6
    iget p3, p3, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mOffset:I

    .line 1291
    iget v1, p4, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v1, p3

    move v3, p3

    move v5, v1

    :goto_3
    move v4, v2

    move v2, v0

    goto :goto_4

    .line 1294
    :cond_7
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->getVerticalSpace()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    shr-int/2addr v0, p2

    .line 1295
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    .line 1297
    iget v3, p3, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_8

    .line 1298
    iget p3, p3, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mOffset:I

    .line 1299
    iget v1, p4, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int v1, p3, v1

    move v4, p3

    move v3, v0

    move v5, v2

    move v2, v1

    goto :goto_4

    .line 1301
    :cond_8
    iget p3, p3, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mOffset:I

    .line 1302
    iget v1, p4, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v1, p3

    move v3, v0

    move v4, v1

    move v5, v2

    move v2, p3

    :goto_4
    move-object v0, p0

    move-object v1, p1

    .line 1307
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1314
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result p0

    if-nez p0, :cond_9

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 1315
    :cond_9
    iput-boolean p2, p4, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 1317
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p0

    iput-boolean p0, p4, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutChunkResult;->mFocusable:Z

    return-void
.end method

.method private logChildren()V
    .locals 5

    const-string v0, "GalleryLayoutManager"

    const-string v1, "internal representation of views on the screen"

    .line 1353
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 1354
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1355
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", coord:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1357
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1356
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "=============="

    .line 1359
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;)V
    .locals 3

    .line 1183
    iget-boolean v0, p2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mRecycle:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mInfinite:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1186
    :cond_0
    iget v0, p2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1187
    iget v1, p2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mNoRecycleSpace:I

    .line 1188
    iget p2, p2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 1189
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->recycleViewsFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    goto :goto_0

    .line 1191
    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->recycleViewsFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V
    .locals 0

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    if-le p3, p2, :cond_1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_2

    .line 1067
    invoke-virtual {p0, p3, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    .line 1071
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private recycleViewsFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V
    .locals 4

    .line 1139
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-gez p2, :cond_0

    return-void

    .line 1147
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v1

    sub-int/2addr v1, p2

    add-int/2addr v1, p3

    .line 1148
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mShouldReverseLayout:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, v0, :cond_6

    .line 1150
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1151
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    if-lt v3, v1, :cond_2

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1152
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v2

    if-ge v2, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1154
    :cond_2
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    return-void

    :cond_3
    add-int/lit8 v0, v0, -0x1

    move p2, v0

    :goto_2
    if-ltz p2, :cond_6

    .line 1160
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 1161
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, p3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    if-lt v2, v1, :cond_5

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1162
    invoke-virtual {v2, p3}, Landroidx/recyclerview/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result p3

    if-ge p3, v1, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 1164
    :cond_5
    :goto_3
    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    :cond_6
    return-void
.end method

.method private recycleViewsFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V
    .locals 4

    if-gez p2, :cond_0

    return-void

    :cond_0
    sub-int/2addr p2, p3

    .line 1100
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p3

    .line 1101
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_3

    add-int/lit8 p3, p3, -0x1

    move v0, p3

    :goto_0
    if-ltz v0, :cond_6

    .line 1103
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1104
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_2

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1105
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v1

    if-le v1, p2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1107
    :cond_2
    :goto_1
    invoke-direct {p0, p1, p3, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    return-void

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p3, :cond_6

    .line 1113
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1114
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    if-gt v3, p2, :cond_5

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1115
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v2

    if-le v2, p2, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1117
    :cond_5
    :goto_3
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    :cond_6
    return-void
.end method

.method private resetItem()V
    .locals 4

    .line 634
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 636
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 637
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mItemTransform:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$IItemTransform;

    invoke-interface {v3, v2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$IItemTransform;->reset(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resolveIsInfinite()Z
    .locals 1

    .line 899
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 900
    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    .line 285
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mReverseLayout:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mShouldReverseLayout:Z

    goto :goto_1

    .line 286
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mShouldReverseLayout:Z

    :goto_1
    return-void
.end method

.method private scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 5

    .line 1010
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto :goto_2

    .line 1013
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->ensureLayoutState()V

    .line 1014
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mRecycle:Z

    if-lez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 1017
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1018
    invoke-direct {p0, v0, v3, v2, p3}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->updateLayoutState(IIZLandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 1019
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    iget v4, v2, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1020
    invoke-direct {p0, p2, v2, p3, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result p2

    add-int/2addr v4, p2

    if-gez v4, :cond_2

    return v1

    :cond_2
    if-le v3, v4, :cond_3

    mul-int p1, v0, v4

    .line 1028
    :cond_3
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    .line 1030
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mItemTransform:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$IItemTransform;

    if-eqz p2, :cond_5

    .line 1031
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->canScrollHorizontally()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1032
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->transformItem(I)V

    goto :goto_1

    .line 1034
    :cond_4
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->resetItem()V

    .line 1041
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mLastScrollDelta:I

    return p1

    :cond_6
    :goto_2
    return v1
.end method

.method private transformItem(I)V
    .locals 4

    .line 606
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 608
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    int-to-float v3, p1

    .line 609
    invoke-direct {p0, v2, v3}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->transformItem(Landroid/view/View;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private transformItem(Landroid/view/View;F)V
    .locals 0

    .line 614
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->calculateToCenterFraction(Landroid/view/View;F)F

    move-result p2

    .line 615
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mItemTransform:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$IItemTransform;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$IItemTransform;->transform(Landroid/view/View;F)V

    return-void
.end method

.method private updateAnchorFromChildren(Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;)Z
    .locals 3

    .line 707
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 710
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mStackFromEnd:Z

    if-eq v0, v2, :cond_1

    return v1

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mSnapHelper:Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;

    .line 714
    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 717
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->getCenterCoordinate()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 718
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    .line 716
    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->assignCenterCoordinate(II)V

    .line 719
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    iput p0, p1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->mPosition:I

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private updateAnchorFromPendingData(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;)Z
    .locals 3

    .line 732
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingScrollPosition:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_0
    if-ltz v0, :cond_4

    .line 736
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p2

    if-lt v0, p2, :cond_1

    goto :goto_1

    .line 746
    :cond_1
    iget p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingScrollPosition:I

    iput p2, p3, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->mPosition:I

    .line 747
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingSavedState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;->hasValidAnchor()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 750
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingSavedState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean p1, p3, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 751
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;->mAnchorOffset:I

    iput p0, p3, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->mCoordinate:I

    return v0

    .line 755
    :cond_2
    iget p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 758
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->getCenterCoordinate()I

    move-result p1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 759
    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p2

    .line 757
    invoke-virtual {p3, p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->assignCenterCoordinate(II)V

    goto :goto_0

    .line 762
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->getCenterCoordinate()I

    move-result p2

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingScrollPosition:I

    .line 763
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->getChildSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)I

    move-result p1

    .line 761
    invoke-virtual {p3, p2, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->assignCenterCoordinate(II)V

    .line 765
    :goto_0
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingScrollPosition:I

    iput p0, p3, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->mPosition:I

    return v0

    .line 737
    :cond_4
    :goto_1
    iput v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingScrollPosition:I

    :cond_5
    :goto_2
    return v1
.end method

.method private updateAnchorInfoForLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;)V
    .locals 1

    .line 651
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->updateAnchorFromPendingData(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 658
    :cond_0
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->updateAnchorFromChildren(Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 668
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mStackFromEnd:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 671
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->getCenterCoordinate()I

    move-result v0

    .line 672
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->getChildSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)I

    move-result p0

    .line 670
    invoke-virtual {p3, v0, p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->assignCenterCoordinate(II)V

    .line 673
    iput p2, p3, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->mPosition:I

    return-void
.end method

.method private updateLayoutState(IIZLandroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .line 858
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->resolveIsInfinite()Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mInfinite:Z

    .line 859
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    iput p1, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mLayoutDirection:I

    .line 860
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mReusableIntPair:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    .line 861
    aput v1, v0, v2

    .line 862
    invoke-virtual {p0, p4, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;[I)V

    .line 863
    iget-object p4, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mReusableIntPair:[I

    aget p4, p4, v1

    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 864
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mReusableIntPair:[I

    aget v0, v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne p1, v2, :cond_0

    move v1, v2

    .line 866
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    if-eqz v1, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, p4

    :goto_0
    iput v3, p1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mExtraFillSpace:I

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move p4, v0

    .line 867
    :goto_1
    iput p4, p1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mNoRecycleSpace:I

    const/4 p4, -0x1

    if-eqz v1, :cond_4

    .line 870
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndPadding()I

    move-result v0

    add-int/2addr v3, v0

    iput v3, p1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 872
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object p1

    .line 874
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_3

    move v2, p4

    .line 875
    :cond_3
    iput v2, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mItemDirection:I

    .line 876
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p4

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    iget v2, v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr p4, v2

    iput p4, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mCurrentPosition:I

    .line 877
    iget-object p4, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mOffset:I

    .line 879
    iget-object p4, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 880
    invoke-virtual {p4}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p4

    sub-int/2addr p1, p4

    goto :goto_3

    .line 882
    :cond_4
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object p1

    .line 883
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    iget v1, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mExtraFillSpace:I

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 884
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move v2, p4

    .line 885
    :goto_2
    iput v2, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mItemDirection:I

    .line 886
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p4

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    iget v2, v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr p4, v2

    iput p4, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mCurrentPosition:I

    .line 887
    iget-object p4, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mOffset:I

    .line 888
    iget-object p4, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 889
    invoke-virtual {p4}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p4

    add-int/2addr p1, p4

    .line 891
    :goto_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    iput p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mAvailable:I

    if-eqz p3, :cond_6

    sub-int/2addr p2, p1

    .line 893
    iput p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mAvailable:I

    .line 895
    :cond_6
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method

.method private updateLayoutStateToFillEnd(II)V
    .locals 2

    .line 774
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mAvailable:I

    .line 775
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    move p0, v1

    .line 776
    :goto_0
    iput p0, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mItemDirection:I

    .line 777
    iput p1, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mCurrentPosition:I

    .line 778
    iput v1, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mLayoutDirection:I

    .line 779
    iput p2, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mOffset:I

    const/high16 p0, -0x80000000

    .line 780
    iput p0, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method

.method private updateLayoutStateToFillEnd(Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;)V
    .locals 1

    .line 770
    iget v0, p1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->mPosition:I

    iget p1, p1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->updateLayoutStateToFillEnd(II)V

    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .locals 2

    .line 788
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mAvailable:I

    .line 789
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    iput p1, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mCurrentPosition:I

    .line 790
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mShouldReverseLayout:Z

    const/4 p1, -0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, p1

    .line 791
    :goto_0
    iput p0, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mItemDirection:I

    .line 792
    iput p1, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mLayoutDirection:I

    .line 793
    iput p2, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mOffset:I

    const/high16 p0, -0x80000000

    .line 794
    iput p0, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method

.method private updateLayoutStateToFillStart(Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;)V
    .locals 1

    .line 784
    iget v0, p1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->mPosition:I

    iget p1, p1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->updateLayoutStateToFillStart(II)V

    return-void
.end method

.method private validateChildOrder()V
    .locals 10

    .line 1373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "validating child count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalleryLayoutManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1377
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 1378
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    .line 1379
    iget-boolean v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mShouldReverseLayout:Z

    const-string v5, "detected invalid location"

    const-string v6, "detected invalid position. loc invalid? "

    if-eqz v4, :cond_4

    move v4, v1

    .line 1380
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_8

    .line 1381
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1382
    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    .line 1383
    iget-object v9, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v9, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    if-ge v8, v2, :cond_2

    .line 1385
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->logChildren()V

    .line 1386
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v7, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-gt v7, v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1390
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->logChildren()V

    .line 1391
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    move v4, v1

    .line 1395
    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_8

    .line 1396
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1397
    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    .line 1398
    iget-object v9, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v9, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    if-ge v8, v2, :cond_6

    .line 1400
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->logChildren()V

    .line 1401
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v7, v3, :cond_5

    goto :goto_3

    :cond_5
    move v1, v0

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    if-lt v7, v3, :cond_7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1405
    :cond_7
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->logChildren()V

    .line 1406
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingSavedState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1048
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;[I)V
    .locals 2

    .line 408
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    .line 409
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, p1

    move p1, v0

    .line 415
    :goto_0
    aput p1, p2, v0

    const/4 p1, 0x1

    .line 416
    aput p0, p2, p1

    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 0

    .line 218
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientation:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canScrollVertically()Z
    .locals 1

    .line 226
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 1

    .line 994
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 995
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    .line 1000
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->ensureLayoutState()V

    const/4 p2, 0x1

    if-lez p1, :cond_2

    move v0, p2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    .line 1002
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 1003
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->updateLayoutState(IIZLandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 1004
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    invoke-direct {p0, p3, p1, p4}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->collectPrefetchPositionsForLayoutState(Landroidx/recyclerview/widget/RecyclerView$State;Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public collectInitialPrefetchPositions(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 5

    .line 916
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingSavedState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingSavedState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;

    iget-boolean v3, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 919
    iget v0, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;->mAnchorPosition:I

    goto :goto_0

    .line 921
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->resolveShouldLayoutReverse()V

    .line 922
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mShouldReverseLayout:Z

    .line 923
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingScrollPosition:I

    if-ne v0, v1, :cond_2

    if-eqz v3, :cond_1

    add-int/lit8 v0, p1, -0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    move v3, v2

    .line 934
    :goto_2
    iget v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mInitialPrefetchItemCount:I

    if-ge v3, v4, :cond_4

    if-ltz v0, :cond_4

    if-ge v0, p1, :cond_4

    .line 936
    invoke-interface {p2, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3

    .line 430
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mSnapHelper:Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;

    .line 434
    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 438
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    return-object v1

    :cond_2
    const/4 v1, 0x1

    if-ge p1, v0, :cond_3

    move p1, v1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 443
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mShouldReverseLayout:Z

    if-eq p1, v0, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    .line 444
    :goto_1
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientation:I

    const/4 p1, 0x0

    if-nez p0, :cond_5

    .line 445
    new-instance p0, Landroid/graphics/PointF;

    int-to-float v0, v2

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    .line 447
    :cond_5
    new-instance p0, Landroid/graphics/PointF;

    int-to-float v0, v2

    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public distanceToCenter(Landroid/view/View;)I
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mSnapHelper:Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->distanceToCenter(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result p0

    return p0
.end method

.method public findSnapView()Landroid/view/View;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mSnapHelper:Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 2

    .line 327
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 331
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    sub-int v1, p1, v1

    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    .line 334
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 335
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_1

    return-object v0

    .line 340
    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 165
    new-instance p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method protected getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 367
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->hasTargetScrollPosition()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 368
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getInitialPrefetchItemCount()I
    .locals 0

    .line 988
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mInitialPrefetchItemCount:I

    return p0
.end method

.method public getOrientation()I
    .locals 0

    .line 253
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientation:I

    return p0
.end method

.method public getReverseLayout()Z
    .locals 0

    .line 299
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mReverseLayout:Z

    return p0
.end method

.method public getStackFromEnd()Z
    .locals 0

    .line 242
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mStackFromEnd:Z

    return p0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isLayoutRTL()Z
    .locals 1

    .line 798
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .line 463
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingSavedState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingScrollPosition:I

    if-eq v0, v1, :cond_1

    .line 464
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 465
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingSavedState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 470
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingSavedState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;

    iget v0, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingScrollPosition:I

    .line 473
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->ensureLayoutState()V

    .line 474
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mRecycle:Z

    .line 476
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->resolveShouldLayoutReverse()V

    .line 478
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mAnchorInfo:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;

    iget-boolean v3, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->mValid:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingScrollPosition:I

    if-ne v3, v1, :cond_3

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingSavedState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;

    if-eqz v3, :cond_4

    .line 480
    :cond_3
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->reset()V

    .line 481
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mAnchorInfo:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;

    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v5, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v3, v5

    iput-boolean v3, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 483
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->updateAnchorInfoForLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;)V

    .line 484
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mAnchorInfo:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;

    iput-boolean v4, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->mValid:Z

    .line 494
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    iget v3, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mLastScrollDelta:I

    if-ltz v3, :cond_5

    move v3, v4

    goto :goto_0

    :cond_5
    move v3, v1

    .line 495
    :goto_0
    iput v3, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mLayoutDirection:I

    .line 496
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mReusableIntPair:[I

    aput v2, v0, v2

    .line 497
    aput v2, v0, v4

    .line 498
    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;[I)V

    .line 499
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mReusableIntPair:[I

    aget v0, v0, v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 500
    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    add-int/2addr v0, v3

    .line 501
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mReusableIntPair:[I

    aget v3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 502
    invoke-virtual {v4}, Landroidx/recyclerview/widget/OrientationHelper;->getEndPadding()I

    move-result v4

    add-int/2addr v3, v4

    .line 503
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingScrollPosition:I

    if-eq v4, v1, :cond_8

    .line 507
    invoke-virtual {p0, v4}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 511
    iget-boolean v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_6

    .line 512
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 513
    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v4, v1

    goto :goto_1

    .line 515
    :cond_6
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 516
    invoke-virtual {v4}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v4

    sub-int v4, v1, v4

    :goto_1
    if-lez v4, :cond_7

    add-int/2addr v0, v4

    goto :goto_2

    :cond_7
    sub-int/2addr v3, v4

    .line 530
    :cond_8
    :goto_2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 531
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->resolveIsInfinite()Z

    move-result v4

    iput-boolean v4, v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mInfinite:Z

    .line 532
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    iput-boolean v4, v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 535
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    iput v2, v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mNoRecycleSpace:I

    .line 536
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mAnchorInfo:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;

    iget-boolean v4, v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v4, :cond_a

    .line 538
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->updateLayoutStateToFillStart(Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;)V

    .line 539
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    iput v0, v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 540
    invoke-direct {p0, p1, v1, p2, v2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 541
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    iget v1, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mOffset:I

    .line 542
    iget v4, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mCurrentPosition:I

    .line 543
    iget v0, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mAvailable:I

    if-lez v0, :cond_9

    add-int/2addr v3, v0

    .line 547
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mAnchorInfo:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->updateLayoutStateToFillEnd(Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;)V

    .line 548
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    iput v3, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 549
    iget v3, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mCurrentPosition:I

    iget v5, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mCurrentPosition:I

    .line 550
    invoke-direct {p0, p1, v0, p2, v2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 552
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    iget v0, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mAvailable:I

    if-lez v0, :cond_c

    .line 555
    invoke-direct {p0, v4, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 556
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    iput v0, v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 557
    invoke-direct {p0, p1, v1, p2, v2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    goto :goto_3

    .line 561
    :cond_a
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->updateLayoutStateToFillEnd(Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;)V

    .line 562
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    iput v3, v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 563
    invoke-direct {p0, p1, v1, p2, v2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 564
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    iget v3, v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mOffset:I

    .line 565
    iget v4, v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mCurrentPosition:I

    .line 566
    iget v1, v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mAvailable:I

    if-lez v1, :cond_b

    add-int/2addr v0, v1

    .line 570
    :cond_b
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mAnchorInfo:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->updateLayoutStateToFillStart(Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;)V

    .line 571
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    iput v0, v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 572
    iget v0, v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mCurrentPosition:I

    iget v5, v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v0, v5

    iput v0, v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mCurrentPosition:I

    .line 573
    invoke-direct {p0, p1, v1, p2, v2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 575
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    iget v0, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mAvailable:I

    if-lez v0, :cond_c

    .line 578
    invoke-direct {p0, v4, v3}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 579
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLayoutState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;

    iput v0, v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 580
    invoke-direct {p0, p1, v1, p2, v2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 584
    :cond_c
    :goto_3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p1

    if-nez p1, :cond_d

    .line 585
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->onLayoutComplete()V

    goto :goto_4

    .line 587
    :cond_d
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mAnchorInfo:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->reset()V

    .line 590
    :goto_4
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mStackFromEnd:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLastStackFromEnd:Z

    .line 596
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mItemTransform:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$IItemTransform;

    if-eqz p1, :cond_f

    .line 597
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->canScrollHorizontally()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 598
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->transformItem(I)V

    goto :goto_5

    .line 600
    :cond_e
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->resetItem()V

    :cond_f
    :goto_5
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 643
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    const/4 p1, 0x0

    .line 644
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingSavedState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;

    const/4 p1, -0x1

    .line 645
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingScrollPosition:I

    .line 646
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mAnchorInfo:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->reset()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 199
    instance-of v0, p1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;

    if-eqz v0, :cond_1

    .line 200
    check-cast p1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingSavedState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;

    .line 201
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingScrollPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 202
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;->invalidateAnchor()V

    .line 204
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingSavedState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingSavedState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;)V

    return-object v0

    .line 175
    :cond_0
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;-><init>()V

    .line 176
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mSnapHelper:Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;

    .line 177
    invoke-virtual {v1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 179
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->ensureLayoutState()V

    .line 180
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mShouldReverseLayout:Z

    xor-int/2addr v2, v3

    .line 181
    iput-boolean v2, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 183
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iput v3, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;->mAnchorPosition:I

    if-eqz v2, :cond_1

    .line 185
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 186
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v2, p0

    iput v2, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;->mAnchorOffset:I

    goto :goto_0

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 189
    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;->mAnchorOffset:I

    goto :goto_0

    .line 192
    :cond_2
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;->invalidateAnchor()V

    :goto_0
    return-object v0
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 840
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 843
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public scrollToPosition(I)V
    .locals 0

    .line 830
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingScrollPosition:I

    .line 831
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingSavedState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;

    if-eqz p1, :cond_0

    .line 832
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;->invalidateAnchor()V

    .line 834
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 849
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 852
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public setInitialPrefetchItemCount(I)V
    .locals 0

    .line 973
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mInitialPrefetchItemCount:I

    return-void
.end method

.method public setItemTransform(Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$IItemTransform;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mItemTransform:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$IItemTransform;

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid orientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 267
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 269
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientation:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-nez v0, :cond_3

    .line 271
    :cond_2
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 272
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mAnchorInfo:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;

    iput-object v0, v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$AnchorInfo;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 273
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mOrientation:I

    .line 274
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_3
    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 317
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 318
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mReverseLayout:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 321
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mReverseLayout:Z

    .line 322
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 234
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mStackFromEnd:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 237
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mStackFromEnd:Z

    .line 238
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 422
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mSnapHelper:Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;

    if-nez p1, :cond_0

    return-void

    .line 425
    :cond_0
    invoke-virtual {p1, p0, p3}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .line 1414
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mPendingSavedState:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mLastStackFromEnd:Z

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->mStackFromEnd:Z

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

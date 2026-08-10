.class public Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;
.super Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;
.source "GallerySnapHelper.java"


# static fields
.field private static final INVALID_DISTANCE:F = 1.0f

.field private static final MAX_SCROLL_ON_FLING_DURATION:I = 0x64

.field private static final MILLISECONDS_PER_INCH:F = 100.0f

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCenterRegion:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mGravityScroller:Landroid/widget/Scroller;

.field private mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mSlideSingleItem:Z

.field private mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mSlideSingleItem:Z

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mCenterRegion:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper$1;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 91
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->snapToTargetExistingView()V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mSlideSingleItem:Z

    return p0
.end method

.method private calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 270
    fill-array-data v0, :array_0

    .line 271
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 273
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    .line 272
    invoke-virtual {p0, p2, v2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->distanceToCenter(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result v2

    aput v2, v0, v1

    .line 276
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 278
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    .line 277
    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->distanceToCenter(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result p0

    aput p0, v0, v1

    :cond_1
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private calculateScrollDistance(II)[I
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 187
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 189
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalX()I

    move-result p1

    const/4 p2, 0x0

    aput p1, v0, p2

    .line 190
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/Scroller;->getFinalY()I

    move-result p0

    const/4 p1, 0x1

    aput p0, v0, p1

    return-object v0
.end method

.method private computeDistancePerChild(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)F
    .locals 9

    .line 423
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    move v5, v4

    move v4, v3

    move-object v3, v2

    :goto_0
    if-ge v1, p0, :cond_5

    .line 429
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 433
    :cond_1
    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    goto :goto_1

    :cond_2
    if-ge v7, v4, :cond_3

    move-object v2, v6

    move v4, v7

    :cond_3
    if-le v7, v5, :cond_4

    move-object v3, v6

    move v5, v7

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_8

    if-nez v3, :cond_6

    goto :goto_2

    .line 449
    :cond_6
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p0

    .line 450
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    .line 449
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 451
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    .line 452
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p2

    .line 451
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, p0

    if-nez p1, :cond_7

    return v0

    :cond_7
    int-to-float p0, p1

    mul-float/2addr p0, v0

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x1

    int-to-float p1, v5

    div-float/2addr p0, p1

    return p0

    :cond_8
    :goto_2
    return v0
.end method

.method private createScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    .locals 2

    .line 555
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 558
    :cond_0
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper$2;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper$2;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method

.method private destroyCallbacks()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    return-void
.end method

.method private estimateNextPositionDiffForFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;II)I
    .locals 1

    .line 394
    invoke-direct {p0, p3, p4}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->calculateScrollDistance(II)[I

    move-result-object p3

    .line 395
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->computeDistancePerChild(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)F

    move-result p0

    const/4 p1, 0x0

    cmpg-float p1, p0, p1

    const/4 p2, 0x0

    if-gtz p1, :cond_0

    return p2

    .line 399
    :cond_0
    aget p1, p3, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 p4, 0x1

    aget v0, p3, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le p1, v0, :cond_1

    .line 400
    aget p1, p3, p2

    goto :goto_0

    :cond_1
    aget p1, p3, p4

    :goto_0
    int-to-float p1, p1

    div-float/2addr p1, p0

    .line 401
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;
    .locals 7

    .line 618
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 625
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mCenterRegion:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 626
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 627
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mCenterRegion:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    goto :goto_0

    .line 629
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mCenterRegion:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    goto :goto_0

    .line 632
    :cond_2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p0

    .line 633
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p0, v2

    :goto_0
    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_4

    .line 638
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 639
    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    .line 640
    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, p0

    .line 641
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v2, :cond_3

    move-object v1, v4

    move v2, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method private findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .locals 1

    .line 300
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mSlideSingleItem:Z

    if-eqz v0, :cond_0

    .line 301
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->findTargetSnapPositionSingleItem(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I

    move-result p0

    goto :goto_0

    .line 304
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->findTargetSnapPositionByVelocity(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I

    move-result p0

    :goto_0
    return p0
.end method

.method private findTargetSnapPositionByVelocity(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .locals 8

    .line 314
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 319
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 324
    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    .line 329
    :cond_2
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    if-ne v2, v1, :cond_3

    return v1

    .line 334
    :cond_3
    move-object v3, p1

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    add-int/lit8 v4, v0, -0x1

    .line 340
    invoke-interface {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v3

    if-nez v3, :cond_4

    return v1

    .line 347
    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_5

    .line 349
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v5

    .line 348
    invoke-direct {p0, p1, v5, p2, v7}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->estimateNextPositionDiffForFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;II)I

    move-result p2

    .line 350
    iget v5, v3, Landroid/graphics/PointF;->x:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    neg-int p2, p2

    goto :goto_0

    :cond_5
    move p2, v7

    .line 356
    :cond_6
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 358
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v5

    .line 357
    invoke-direct {p0, p1, v5, v7, p3}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->estimateNextPositionDiffForFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;II)I

    move-result p0

    .line 359
    iget p3, v3, Landroid/graphics/PointF;->y:F

    cmpg-float p3, p3, v6

    if-gez p3, :cond_8

    neg-int p0, p0

    goto :goto_1

    :cond_7
    move p0, v7

    .line 366
    :cond_8
    :goto_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result p1

    if-eqz p1, :cond_9

    move p2, p0

    :cond_9
    if-nez p2, :cond_a

    return v1

    :cond_a
    add-int/2addr v2, p2

    if-gez v2, :cond_b

    goto :goto_2

    :cond_b
    move v7, v2

    :goto_2
    if-lt v7, v0, :cond_c

    goto :goto_3

    :cond_c
    move v4, v7

    :goto_3
    return v4
.end method

.method private findTargetSnapPositionSingleItem(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .locals 11

    .line 463
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 469
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->getOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/high16 v3, -0x80000000

    const v4, 0x7fffffff

    .line 481
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v7

    :goto_0
    if-ge v6, v5, :cond_5

    .line 483
    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_2

    goto :goto_1

    .line 487
    :cond_2
    invoke-virtual {p0, v9, v2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->distanceToCenter(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result v10

    if-gtz v10, :cond_3

    if-le v10, v3, :cond_3

    move-object v8, v9

    move v3, v10

    :cond_3
    if-ltz v10, :cond_4

    if-ge v10, v4, :cond_4

    move-object v7, v9

    move v4, v10

    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 503
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->isForwardFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz v7, :cond_6

    .line 505
    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_6
    if-nez p2, :cond_7

    if-eqz v8, :cond_7

    .line 507
    invoke-virtual {p1, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_7
    if-eqz p2, :cond_8

    move-object v7, v8

    :cond_8
    if-nez v7, :cond_9

    return v1

    .line 519
    :cond_9
    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p3

    .line 521
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->isReverseLayout(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z

    move-result p0

    if-ne p0, p2, :cond_a

    move p0, v1

    goto :goto_2

    :cond_a
    const/4 p0, 0x1

    :goto_2
    add-int/2addr p3, p0

    if-ltz p3, :cond_c

    if-lt p3, v0, :cond_b

    goto :goto_3

    :cond_b
    return p3

    :cond_c
    :goto_3
    return v1
.end method

.method private getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_0

    .line 679
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 681
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 683
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    return-object p0
.end method

.method private getOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 1

    .line 655
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p0

    return-object p0

    .line 657
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 658
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_0

    .line 668
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 670
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 672
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    return-object p0
.end method

.method private isForwardFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z
    .locals 1

    .line 531
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1

    :cond_1
    if-lez p3, :cond_2

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    return p1
.end method

.method private isReverseLayout(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z
    .locals 3

    .line 539
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p0

    .line 540
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 541
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    .line 544
    invoke-interface {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 546
    iget p1, p0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpg-float p1, p1, v2

    if-ltz p1, :cond_0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    cmpg-float p0, p0, v2

    if-gez p0, :cond_1

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method private setupCallbacks()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    return-void

    .line 163
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "An instance of OnFlingListener already set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private snapFromFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z
    .locals 2

    .line 205
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 209
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->createScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 214
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I

    move-result p0

    const/4 p2, -0x1

    if-ne p0, p2, :cond_2

    return v1

    .line 219
    :cond_2
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 220
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    const/4 p0, 0x1

    return p0
.end method

.method private snapToTargetExistingView()V
    .locals 4

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 256
    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 260
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 261
    aget v1, v0, v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    aget v3, v0, v2

    if-eqz v3, :cond_4

    .line 262
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_4
    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->destroyCallbacks()V

    .line 149
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->setupCallbacks()V

    .line 152
    new-instance p1, Landroid/widget/Scroller;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 153
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {p1, v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    .line 154
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->snapToTargetExistingView()V

    :cond_1
    return-void
.end method

.method distanceToCenter(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I
    .locals 1

    .line 591
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    .line 592
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    .line 594
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mCenterRegion:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 595
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 596
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mCenterRegion:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    goto :goto_0

    .line 598
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mCenterRegion:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    goto :goto_0

    .line 601
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p0

    .line 602
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    :goto_0
    sub-int/2addr v0, p0

    return v0
.end method

.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 1

    .line 285
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    .line 286
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 288
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    .line 289
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method getCenterRegion()Landroid/graphics/Rect;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mCenterRegion:Landroid/graphics/Rect;

    return-object p0
.end method

.method public onFling(II)Z
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 120
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 128
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getMinFlingVelocity()I

    move-result v2

    .line 129
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v2, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_3

    .line 130
    :cond_2
    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->snapFromFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public setCenterRegion(Landroid/graphics/Rect;)V
    .locals 3

    .line 101
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCenterRegion centerRegion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mCenterRegion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mCenterRegion:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mCenterRegion:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mCenterRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 110
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mCenterRegion:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public slideSingleItem(Z)V
    .locals 3

    .line 95
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSlideSingleItem slideSingleItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSlideSingleItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mSlideSingleItem:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 97
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->mSlideSingleItem:Z

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)V
    .locals 1

    .line 227
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    return-void

    .line 235
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->createScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    .line 239
    :cond_2
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 240
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

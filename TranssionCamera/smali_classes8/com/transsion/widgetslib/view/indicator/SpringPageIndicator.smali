.class public Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;
.super Landroid/view/View;
.source "SpringPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;
    }
.end annotation


# static fields
.field private static final CURRENT_COLOR_ALPHA:F = 1.0f

.field private static final DEBUG:Z = false

.field private static final NORMAL_COLOR_ALPHA:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "SpringPageIndicator"


# instance fields
.field private CIRCLE_DISTANCE:I

.field private DEFAULT_PADDING_LEFT:I

.field private DEFAULT_PADDING_TOP:I

.field private MAXIMUM_CIRCLE_RADIUS:I

.field private MINIMUM_CIRCLE_RADIUS:I

.field private NORMAL_CIRCLE_RADIUS:I

.field private mAddPath:Landroid/graphics/Path;

.field private mBezierProgress:F

.field private mCurrClickMarker:I

.field private mCurrentDownControlPoint:Landroid/graphics/PointF;

.field private mCurrentMarker:I

.field private mCurrentMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

.field private mCurrentMovedCircleDownTangentPoint:Landroid/graphics/PointF;

.field private mCurrentMovedCircleUpTangentPoint:Landroid/graphics/PointF;

.field private mCurrentPath:Landroid/graphics/Path;

.field private mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

.field private mCurrentStillCircleDownTangentPoint:Landroid/graphics/PointF;

.field private mCurrentStillCircleUpTangentPoint:Landroid/graphics/PointF;

.field private mCurrentUpControlPoint:Landroid/graphics/PointF;

.field private mDefaultMaxMarkerNum:I

.field private mDirection:I

.field private mHideCircleNums:I

.field private mHideFrontCircles:Z

.field private mHousePath:Landroid/graphics/Path;

.field private mIsRtl:Z

.field private mMarkerClickListener:Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper$OnMarkerClickListener;

.field private mMarkers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxMarkerNum:I

.field private mNextDownControlPoint:Landroid/graphics/PointF;

.field private mNextMarker:I

.field private mNextMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

.field private mNextMovedCircleDownTangentPoint:Landroid/graphics/PointF;

.field private mNextMovedCircleUpTangentPoint:Landroid/graphics/PointF;

.field private mNextPath:Landroid/graphics/Path;

.field private mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

.field private mNextStillCircleDownTangentPoint:Landroid/graphics/PointF;

.field private mNextStillCircleUpTangentPoint:Landroid/graphics/PointF;

.field private mNextUpControlPoint:Landroid/graphics/PointF;

.field private mNormalColor:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectedColor:I

.field private mShouldDrawNextCirclePath:Z

.field private mTempRect:Landroid/graphics/RectF;

.field private mTriangleLeft:Landroid/graphics/PointF;

.field private mTriangleRight:Landroid/graphics/PointF;

.field private mTriangleTop:Landroid/graphics/PointF;

.field private mXfermodeDesOver:Landroid/graphics/PorterDuffXfermode;

.field private mXfermodeSrcOver:Landroid/graphics/PorterDuffXfermode;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    .line 74
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMarker:I

    const/4 v1, 0x1

    .line 75
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mShouldDrawNextCirclePath:Z

    .line 76
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mHideFrontCircles:Z

    .line 77
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mHideCircleNums:I

    const v0, 0x7fffffff

    .line 86
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mDefaultMaxMarkerNum:I

    const/4 v0, -0x1

    .line 90
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrClickMarker:I

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 123
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mIsRtl:Z

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 125
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_spring_page_marker_radius:I

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->NORMAL_CIRCLE_RADIUS:I

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->MAXIMUM_CIRCLE_RADIUS:I

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->MINIMUM_CIRCLE_RADIUS:I

    .line 131
    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_spring_page_marker_distance:I

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    .line 133
    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->PageIndicatorWrapper:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 134
    sget p2, Lcom/transsion/widgetslib/R$styleable;->PageIndicatorWrapper_normalColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_indicator_normal_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNormalColor:I

    .line 135
    sget p2, Lcom/transsion/widgetslib/R$styleable;->PageIndicatorWrapper_selectedColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_indicator_selected_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mSelectedColor:I

    .line 136
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->init()V

    return-void
.end method

.method private calculateCircles()V
    .locals 8

    .line 351
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 354
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 355
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 357
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 358
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->calculateWidth(I)I

    move-result v2

    if-ge v2, v0, :cond_1

    move v0, v2

    .line 364
    :cond_1
    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->MAXIMUM_CIRCLE_RADIUS:I

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v1, -0x1

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    mul-int/2addr v5, v4

    add-int/2addr v3, v5

    sub-int/2addr v0, v3

    .line 366
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->DEFAULT_PADDING_LEFT:I

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 369
    iget-boolean v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mHideFrontCircles:Z

    if-eqz v2, :cond_2

    .line 370
    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mHideCircleNums:I

    mul-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 373
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    .line 376
    iget-object v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    .line 377
    iget v6, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    if-ne v3, v6, :cond_3

    .line 378
    iget v6, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->MAXIMUM_CIRCLE_RADIUS:I

    int-to-float v6, v6

    iput v6, v5, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    goto :goto_1

    .line 380
    :cond_3
    iget v6, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->NORMAL_CIRCLE_RADIUS:I

    int-to-float v6, v6

    iput v6, v5, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    .line 382
    :goto_1
    iget-boolean v6, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mIsRtl:Z

    if-eqz v6, :cond_4

    sub-int v6, v4, v3

    .line 383
    iget v7, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v0

    int-to-float v6, v6

    iput v6, v5, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    goto :goto_2

    .line 385
    :cond_4
    iget v6, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    mul-int/2addr v6, v3

    add-int/2addr v6, v0

    int-to-float v6, v6

    iput v6, v5, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    :goto_2
    int-to-float v6, v2

    .line 387
    iput v6, v5, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 389
    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    int-to-float v1, v2

    iput v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iput v1, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    :cond_6
    :goto_3
    return-void
.end method

.method private calculateMaxMarkerNum(I)I
    .locals 1

    .line 435
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->MAXIMUM_CIRCLE_RADIUS:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->DEFAULT_PADDING_LEFT:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    .line 437
    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    div-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private calculatePoints()V
    .locals 10

    .line 727
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v1, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v3, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    sub-float/2addr v1, v3

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v0, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    float-to-double v0, v1

    .line 728
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    .line 731
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircleUpTangentPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    float-to-double v5, v3

    .line 732
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v3, v5

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->x:F

    .line 733
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircleUpTangentPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    float-to-double v5, v3

    .line 734
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v3, v5

    sub-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 735
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircleUpTangentPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    float-to-double v5, v3

    .line 736
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v3, v5

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->x:F

    .line 737
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircleUpTangentPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    float-to-double v5, v3

    .line 738
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v3, v5

    sub-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 740
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircleDownTangentPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircleUpTangentPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 741
    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    float-to-double v5, v3

    .line 742
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v3, v5

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 743
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircleDownTangentPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircleUpTangentPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 744
    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    float-to-double v5, v3

    .line 745
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v5, v0

    double-to-float v0, v5

    add-float/2addr v4, v0

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 747
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentUpControlPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircleUpTangentPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircleUpTangentPoint:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 750
    iget-object v4, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v4, v4, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    iget v7, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v5

    sub-float v6, v4, v6

    iput v6, v0, Landroid/graphics/PointF;->y:F

    .line 753
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentDownControlPoint:Landroid/graphics/PointF;

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 754
    iget v2, v3, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v1

    div-float/2addr v2, v5

    add-float/2addr v4, v2

    iput v4, v0, Landroid/graphics/PointF;->y:F

    .line 759
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v1, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v0, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    float-to-double v0, v1

    .line 760
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    .line 763
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircleUpTangentPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    float-to-double v6, v3

    .line 764
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v3, v6

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->x:F

    .line 765
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircleUpTangentPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    float-to-double v6, v3

    .line 766
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v3, v6

    sub-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 767
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircleUpTangentPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    float-to-double v6, v3

    .line 768
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v3, v6

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->x:F

    .line 769
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircleUpTangentPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    float-to-double v6, v3

    .line 770
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v3, v6

    sub-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 772
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircleDownTangentPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircleUpTangentPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 773
    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    float-to-double v6, v3

    .line 774
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v3, v6

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 775
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircleDownTangentPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircleUpTangentPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 776
    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v3, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    float-to-double v6, v3

    .line 777
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v6, v0

    double-to-float v0, v6

    add-float/2addr v4, v0

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 780
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextUpControlPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircleUpTangentPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircleUpTangentPoint:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v2

    div-float/2addr v4, v5

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 783
    iget-object v4, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v4, v4, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    iget v7, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v5

    sub-float v6, v4, v6

    iput v6, v0, Landroid/graphics/PointF;->y:F

    .line 786
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextDownControlPoint:Landroid/graphics/PointF;

    iput v2, p0, Landroid/graphics/PointF;->x:F

    .line 787
    iget v0, v3, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    add-float/2addr v4, v0

    iput v4, p0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method private calculateWidth(I)I
    .locals 2

    .line 426
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->MAXIMUM_CIRCLE_RADIUS:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, -0x1

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    iget p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->DEFAULT_PADDING_LEFT:I

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    .line 429
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr p1, v1

    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->DEFAULT_PADDING_LEFT:I

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p1, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private generatePath()V
    .locals 5

    .line 674
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 675
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v2, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v3, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    .line 677
    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mDirection:I

    if-lez v4, :cond_0

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    goto :goto_0

    :cond_0
    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 675
    :goto_0
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 679
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMarker:I

    if-eq v0, v1, :cond_4

    .line 681
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v2, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v3, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    .line 683
    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mDirection:I

    if-lez v4, :cond_1

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    goto :goto_1

    :cond_1
    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 681
    :goto_1
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 686
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircleUpTangentPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 688
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentUpControlPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircleUpTangentPoint:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 692
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircleDownTangentPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 694
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentDownControlPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircleDownTangentPoint:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 698
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircleUpTangentPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 702
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircleUpTangentPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 704
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextUpControlPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircleUpTangentPoint:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 707
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircleDownTangentPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 709
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextDownControlPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircleDownTangentPoint:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 712
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircleUpTangentPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 715
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v2, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v3, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    .line 717
    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mDirection:I

    if-lez v4, :cond_2

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    goto :goto_2

    :cond_2
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 715
    :goto_2
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 718
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v2, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v3, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    .line 720
    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mDirection:I

    if-lez p0, :cond_3

    sget-object p0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    goto :goto_3

    :cond_3
    sget-object p0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 718
    :goto_3
    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_4
    return-void
.end method

.method private getMarkers(I)Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;
    .locals 0

    .line 521
    :try_start_0
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private init()V
    .locals 2

    .line 546
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircleUpTangentPoint:Landroid/graphics/PointF;

    .line 547
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircleDownTangentPoint:Landroid/graphics/PointF;

    .line 548
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircleUpTangentPoint:Landroid/graphics/PointF;

    .line 549
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircleDownTangentPoint:Landroid/graphics/PointF;

    .line 550
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentUpControlPoint:Landroid/graphics/PointF;

    .line 551
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentDownControlPoint:Landroid/graphics/PointF;

    .line 554
    new-instance v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;-><init>(Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    .line 556
    new-instance v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;-><init>(Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    .line 558
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircleUpTangentPoint:Landroid/graphics/PointF;

    .line 559
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircleDownTangentPoint:Landroid/graphics/PointF;

    .line 560
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircleUpTangentPoint:Landroid/graphics/PointF;

    .line 561
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircleDownTangentPoint:Landroid/graphics/PointF;

    .line 563
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextUpControlPoint:Landroid/graphics/PointF;

    .line 564
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextDownControlPoint:Landroid/graphics/PointF;

    .line 566
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentPath:Landroid/graphics/Path;

    .line 567
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextPath:Landroid/graphics/Path;

    .line 568
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mHousePath:Landroid/graphics/Path;

    .line 569
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mAddPath:Landroid/graphics/Path;

    .line 571
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mTempRect:Landroid/graphics/RectF;

    .line 572
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mTriangleTop:Landroid/graphics/PointF;

    .line 573
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mTriangleLeft:Landroid/graphics/PointF;

    .line 574
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mTriangleRight:Landroid/graphics/PointF;

    .line 575
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mXfermodeSrcOver:Landroid/graphics/PorterDuffXfermode;

    .line 576
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mXfermodeDesOver:Landroid/graphics/PorterDuffXfermode;

    .line 577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    .line 578
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->paint:Landroid/graphics/Paint;

    .line 579
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 580
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x0

    .line 581
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 582
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mScroller:Landroid/widget/Scroller;

    .line 583
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->DEFAULT_PADDING_LEFT:I

    .line 584
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->DEFAULT_PADDING_TOP:I

    return-void
.end method

.method private offsetHalfSize(I)V
    .locals 14

    .line 273
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 274
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMaxMarkerNum:I

    if-ge v0, v1, :cond_1

    .line 275
    iget-object p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrX()I

    move-result p1

    if-eqz p1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :cond_0
    return-void

    :cond_1
    sub-int v2, v0, v1

    .line 280
    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    mul-int v7, v2, v3

    .line 281
    iget-boolean v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mIsRtl:Z

    if-eqz v2, :cond_2

    if-lt v0, v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_2

    .line 282
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    if-eq v1, v7, :cond_2

    .line 283
    iget-object v4, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mScroller:Landroid/widget/Scroller;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void

    .line 288
    :cond_2
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMaxMarkerNum:I

    div-int/lit8 v2, v1, 0x2

    .line 289
    iget-boolean v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mIsRtl:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    move v9, v7

    goto :goto_0

    :cond_3
    move v9, v4

    :goto_0
    if-gt p1, v2, :cond_4

    goto :goto_2

    :cond_4
    if-le p1, v2, :cond_9

    sub-int v5, v0, v1

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    if-gt v5, v2, :cond_6

    .line 300
    iget p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    mul-int v4, v5, p1

    goto :goto_2

    :cond_6
    add-int/lit8 v4, v1, -0x1

    if-gt p1, v4, :cond_7

    sub-int/2addr p1, v2

    .line 303
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    :goto_1
    mul-int v4, p1, v0

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    if-le v0, v2, :cond_8

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr p1, v1

    add-int/2addr p1, v2

    .line 308
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    goto :goto_1

    :cond_8
    add-int/lit8 v1, v1, -0x1

    sub-int/2addr p1, v1

    add-int/2addr p1, v0

    .line 310
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    goto :goto_1

    :cond_9
    :goto_2
    if-eqz v3, :cond_a

    neg-int p1, v4

    int-to-float p1, p1

    goto :goto_3

    :cond_a
    int-to-float p1, v4

    .line 317
    :goto_3
    iget-object v8, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mScroller:Landroid/widget/Scroller;

    const/4 v10, 0x0

    float-to-int v11, p1

    const/4 v12, 0x0

    const/16 v13, 0xc8

    invoke-virtual/range {v8 .. v13}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method private setAddPath(Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;)V
    .locals 7

    .line 528
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mAddPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 529
    iget v0, p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    const/high16 v1, 0x40c00000    # 6.0f

    div-float v1, v0, v1

    float-to-int v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 531
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mTempRect:Landroid/graphics/RectF;

    .line 532
    iget v3, p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 533
    iget v5, p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    int-to-float v6, v1

    sub-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/RectF;->top:F

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 534
    iput v3, v2, Landroid/graphics/RectF;->right:F

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v5, v1

    .line 535
    iput v5, v2, Landroid/graphics/RectF;->bottom:F

    .line 536
    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mAddPath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v2, v5}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 538
    iget v3, p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    sub-float/2addr v3, v6

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 539
    iget p1, p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    sub-float/2addr p1, v4

    iput p1, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v1

    .line 540
    iput v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr p1, v0

    .line 541
    iput p1, v2, Landroid/graphics/RectF;->bottom:F

    .line 542
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mAddPath:Landroid/graphics/Path;

    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p0, v2, p1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-void
.end method

.method public static setAlphaComponent(II)I
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0

    .line 797
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha must be between 0 and 255."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private shouldScrollLeft(I)Z
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    .line 242
    iget v0, p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget p1, p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    iget p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    add-int/2addr p1, p0

    int-to-float p0, p1

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private shouldScrollLeftOrRight(I)Z
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMaxMarkerNum:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mIsRtl:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    .line 249
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->shouldScrollLeft(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->shouldScrollRight(I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    :goto_0
    return v2
.end method

.method private shouldScrollRight(I)Z
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    .line 235
    iget v1, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v0, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    add-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 236
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method


# virtual methods
.method public addMarker()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    new-instance v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;-><init>(Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMarker:I

    .line 151
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->resetColorAlphaAndRadius()V

    .line 154
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->calculateCircles()V

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public computeScroll()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 324
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 326
    :cond_0
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    return-void
.end method

.method public hideFrontMarkers(ZI)V
    .locals 0

    .line 225
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mHideFrontCircles:Z

    .line 226
    iput p2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mHideCircleNums:I

    .line 227
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->resetColorAlphaAndRadius()V

    .line 228
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->calculateCircles()V

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 230
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 475
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 478
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 479
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 480
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 481
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    .line 482
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 483
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNormalColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 484
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 486
    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    if-eq v1, v2, :cond_2

    iget-boolean v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mShouldDrawNextCirclePath:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMarker:I

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 489
    :cond_1
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->getMarkers(I)Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 491
    iget v3, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v4, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    iget-object v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 495
    :cond_3
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mShouldDrawNextCirclePath:Z

    if-eqz v0, :cond_5

    .line 496
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mBezierProgress:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_4

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNormalColor:I

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mSelectedColor:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 497
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 500
    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mBezierProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mSelectedColor:I

    goto :goto_3

    :cond_6
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNormalColor:I

    :goto_3
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 501
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mBezierProgress:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_7

    .line 502
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mXfermodeSrcOver:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_4

    .line 504
    :cond_7
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mXfermodeDesOver:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 506
    :goto_4
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 507
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->getMarkers(I)Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 509
    iget v1, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v2, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerY:F

    iget v0, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 512
    :cond_8
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 513
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    .line 515
    :cond_9
    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 443
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 444
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 445
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 446
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->calculateMaxMarkerNum(I)I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 454
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mDefaultMaxMarkerNum:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMaxMarkerNum:I

    .line 456
    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMaxMarkerNum:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 457
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mHideFrontCircles:Z

    if-eqz v0, :cond_2

    .line 458
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mHideCircleNums:I

    sub-int/2addr p1, v0

    .line 460
    :cond_2
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->calculateWidth(I)I

    move-result p1

    :goto_0
    if-ne v1, v2, :cond_3

    goto :goto_1

    .line 467
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->MAXIMUM_CIRCLE_RADIUS:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->DEFAULT_PADDING_TOP:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 469
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 470
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->calculateCircles()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 394
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 396
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 398
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_7

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    goto/16 :goto_1

    .line 401
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 402
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mIsRtl:Z

    if-eqz v1, :cond_4

    .line 403
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v1, v3

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 404
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrClickMarker:I

    goto/16 :goto_0

    .line 405
    :cond_2
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 406
    iput v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrClickMarker:I

    goto/16 :goto_0

    .line 408
    :cond_3
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    sub-float/2addr v0, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrClickMarker:I

    goto :goto_0

    .line 411
    :cond_4
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v1, v3

    cmpg-float v1, v0, v1

    if-gez v1, :cond_5

    .line 412
    iput v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrClickMarker:I

    goto :goto_0

    .line 413
    :cond_5
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v1, v3

    cmpl-float v1, v0, v1

    if-lez v1, :cond_6

    .line 415
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrClickMarker:I

    goto :goto_0

    .line 417
    :cond_6
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->CIRCLE_DISTANCE:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrClickMarker:I

    .line 422
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_7
    :goto_1
    return v2
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 264
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 266
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 267
    iget p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->offsetHalfSize(I)V

    :cond_0
    return-void
.end method

.method public removeAllMarkers()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 202
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMarker:I

    const/4 v0, 0x0

    .line 203
    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public removeMarker(I)V
    .locals 3

    if-ltz p1, :cond_5

    .line 174
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto/16 :goto_1

    .line 178
    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    .line 179
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    if-ne v0, p1, :cond_3

    :cond_1
    const/4 v0, 0x0

    .line 180
    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMarker:I

    .line 181
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .line 184
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    .line 186
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 187
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->resetColorAlphaAndRadius()V

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 190
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 191
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->calculateCircles()V

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->MAXIMUM_CIRCLE_RADIUS:I

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->DEFAULT_PADDING_LEFT:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    if-lez v0, :cond_4

    .line 194
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->offsetHalfSize(I)V

    .line 197
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_5
    :goto_1
    return-void
.end method

.method public resetAddPageIndex()V
    .locals 0

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method resetColorAlphaAndRadius()V
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    if-eqz v0, :cond_0

    .line 336
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->MAXIMUM_CIRCLE_RADIUS:I

    int-to-float v1, v1

    iput v1, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    :cond_0
    const/4 v0, 0x0

    .line 338
    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 339
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    if-eq v0, v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->NORMAL_CIRCLE_RADIUS:I

    int-to-float v2, v2

    iput v2, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 344
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method public setCurrentMarker(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 208
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    if-eq p1, v0, :cond_1

    .line 209
    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMarker:I

    .line 210
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    .line 211
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->resetColorAlphaAndRadius()V

    .line 212
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->shouldScrollLeftOrRight(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->offsetHalfSize(I)V

    .line 215
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setMarkerClickListener(Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper$OnMarkerClickListener;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkerClickListener:Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper$OnMarkerClickListener;

    return-void
.end method

.method public setMaxMarkerNum(I)V
    .locals 0

    .line 220
    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMaxMarkerNum:I

    .line 221
    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mDefaultMaxMarkerNum:I

    return-void
.end method

.method public setNormalColor(I)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNormalColor:I

    .line 160
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mSelectedColor:I

    .line 165
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public update(F)V
    .locals 10

    .line 588
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    .line 589
    iput v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mBezierProgress:F

    return-void

    .line 594
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    move p1, v1

    :cond_1
    float-to-double v4, p1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v4, v6

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v4

    .line 598
    :goto_0
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mShouldDrawNextCirclePath:Z

    .line 599
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->resetColorAlphaAndRadius()V

    .line 600
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mIsRtl:Z

    if-eqz v0, :cond_4

    cmpl-float v0, p1, v1

    if-lez v0, :cond_3

    .line 601
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    sub-int/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 602
    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    add-int/2addr v5, v2

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMarker:I

    goto :goto_3

    :cond_4
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_5

    .line 604
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    add-int/2addr v5, v2

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    .line 605
    :cond_5
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    sub-int/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMarker:I

    .line 607
    :goto_3
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    .line 608
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mMarkers:Ljava/util/ArrayList;

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMarker:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    .line 609
    iget v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMarker:I

    if-ne v0, v5, :cond_6

    .line 610
    iput-boolean v4, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mShouldDrawNextCirclePath:Z

    :cond_6
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, -0x1

    .line 613
    :goto_4
    iput v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mDirection:I

    .line 615
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mBezierProgress:F

    cmpg-float v1, p1, v3

    if-gtz v1, :cond_8

    .line 620
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->MAXIMUM_CIRCLE_RADIUS:I

    int-to-float v2, v1

    iget v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->MINIMUM_CIRCLE_RADIUS:I

    sub-int v4, v1, v3

    int-to-float v4, v4

    mul-float/2addr v4, p1

    sub-float/2addr v2, v4

    iput v2, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    .line 623
    iget-object v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    int-to-float v4, v3

    mul-float/2addr v4, p1

    iput v4, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    .line 624
    iget v4, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mDirection:I

    mul-int v6, v1, v5

    int-to-float v6, v6

    add-float/2addr v6, v4

    iget-object v7, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v8, v7, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    sub-float/2addr v8, v4

    mul-int/2addr v1, v5

    int-to-float v1, v1

    sub-float/2addr v8, v1

    mul-float/2addr v8, p1

    add-float/2addr v6, v8

    iput v6, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    .line 629
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMarker:I

    iget v4, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    if-eq v1, v4, :cond_9

    .line 630
    iget v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->NORMAL_CIRCLE_RADIUS:I

    int-to-float v4, v1

    sub-int v3, v1, v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    sub-float/2addr v4, v3

    iput v4, v7, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    .line 633
    iget-object v3, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v2, v2, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    iput v2, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    .line 634
    iget v2, v7, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    mul-int v4, v1, v5

    int-to-float v4, v4

    sub-float v4, v2, v4

    mul-int/2addr v1, v5

    int-to-float v1, v1

    sub-float/2addr v2, v1

    iget v0, v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    sub-float/2addr v2, v0

    mul-float/2addr v2, p1

    sub-float/2addr v4, v2

    iput v4, v3, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    goto :goto_5

    .line 643
    :cond_8
    iget-object v1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v2, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->MINIMUM_CIRCLE_RADIUS:I

    int-to-float v4, v2

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->NORMAL_CIRCLE_RADIUS:I

    sub-int v6, v5, v2

    int-to-float v6, v6

    sub-float v3, p1, v3

    mul-float/2addr v6, v3

    add-float/2addr v4, v6

    iput v4, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    .line 646
    iget-object v4, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    int-to-float v6, v2

    sub-float/2addr v0, p1

    mul-float/2addr v6, v0

    iput v6, v4, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    .line 647
    iget p1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    iget v6, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mDirection:I

    mul-int v7, v5, v6

    int-to-float v7, v7

    add-float/2addr v7, p1

    iget-object v8, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextStillCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v9, v8, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    sub-float/2addr v9, p1

    mul-int/2addr v5, v6

    int-to-float p1, v5

    sub-float/2addr v9, p1

    mul-float/2addr v9, v0

    add-float/2addr v7, v9

    iput v7, v4, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    .line 653
    iget p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMarker:I

    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMarker:I

    if-eq p1, v5, :cond_9

    int-to-float p1, v2

    .line 654
    iget v5, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->MAXIMUM_CIRCLE_RADIUS:I

    sub-int v2, v5, v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float/2addr p1, v2

    iput p1, v8, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    .line 658
    iget-object p1, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mNextMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    iget v2, v4, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    iput v2, p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->radius:F

    .line 659
    iget v2, v8, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    mul-int v3, v5, v6

    int-to-float v3, v3

    sub-float v3, v2, v3

    mul-int/2addr v5, v6

    int-to-float v4, v5

    sub-float/2addr v2, v4

    iget v1, v1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, v0

    sub-float/2addr v3, v2

    iput v3, p1, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->centerX:F

    .line 667
    :cond_9
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generatePath: mCurrentMovedCircle = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->mCurrentMovedCircle:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator$Circle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpringPageIndicator"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->calculatePoints()V

    .line 669
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->generatePath()V

    .line 670
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

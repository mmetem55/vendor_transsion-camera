.class public Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;
.super Landroid/view/View;
.source "RecorderSegmentProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;
    }
.end annotation


# static fields
.field private static final FINISHED_ANIMATION_DURING:J = 0x1f4L

.field private static final FLASH_INTERVAL_TIME:J = 0x1f4L

.field private static final NEXT_TIPS_ANIMATION_DURING:J = 0xdacL

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAnimationInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mBgPadding:I

.field private mCurrentTime:J

.field private mElapsedTime:J

.field private mInAnimation:Z

.field private mInFinishedAnimation:Z

.field private mInNextTipsAnimation:Z

.field private final mMarkLinePaint:Landroid/graphics/Paint;

.field private final mNextSegmentMask:Landroid/graphics/drawable/Drawable;

.field private final mOuterRingThickness:I

.field private final mOval:Landroid/graphics/RectF;

.field private mProgress:I

.field private final mProgressAnimationPaint:Landroid/graphics/Paint;

.field private final mProgressPaint:Landroid/graphics/Paint;

.field private final mSegmentPaint:Landroid/graphics/Paint;

.field private mSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;",
            ">;"
        }
    .end annotation
.end field

.field private mStartAnimationTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const p3, 0x3ed70a3d    # 0.42f

    const/4 p4, 0x0

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p2, p3, p4, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mAnimationInterpolator:Landroid/view/animation/PathInterpolator;

    .line 56
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mOval:Landroid/graphics/RectF;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 79
    sget p3, Lcom/transsion/camera/feature/movie/R$dimen;->movie_record_shutter_bg_padding:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mBgPadding:I

    .line 82
    sget p3, Lcom/transsion/camera/feature/movie/R$dimen;->movie_record_shutter_outer_ring_thickness:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mOuterRingThickness:I

    .line 85
    sget p4, Lcom/transsion/camera/feature/movie/R$dimen;->movie_record_shutter_mark_line_width:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 87
    sget v0, Lcom/transsion/camera/feature/movie/R$color;->movie_recorder_shutter_mark_line_color:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 89
    sget v1, Lcom/transsion/camera/feature/movie/R$dimen;->movie_record_shutter_segment_width:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 91
    sget v2, Lcom/transsion/camera/feature/movie/R$color;->movie_recorder_segment_color:I

    invoke-virtual {p1, v2, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 94
    sget v3, Lcom/transsion/camera/feature/movie/R$drawable;->movie_recorder_shutter_progress_next_segment:I

    invoke-virtual {p1, v3, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mNextSegmentMask:Landroid/graphics/drawable/Drawable;

    .line 97
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mProgressPaint:Landroid/graphics/Paint;

    .line 98
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v3, p3

    .line 99
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v3, -0x1

    .line 100
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mProgressAnimationPaint:Landroid/graphics/Paint;

    .line 103
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float p3, p3

    .line 104
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mSegmentPaint:Landroid/graphics/Paint;

    .line 108
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float p3, v1

    .line 109
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mMarkLinePaint:Landroid/graphics/Paint;

    .line 113
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float p0, p4

    .line 114
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 115
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private drawMarkLine(Landroid/graphics/Canvas;)V
    .locals 11

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 218
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 219
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 220
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;

    const/4 v5, 0x0

    neg-float v4, v1

    .line 221
    iget v6, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mOuterRingThickness:I

    int-to-float v6, v6

    add-float/2addr v6, v4

    iget v7, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mBgPadding:I

    int-to-float v8, v7

    add-float/2addr v6, v8

    const/4 v8, 0x0

    int-to-float v7, v7

    add-float v9, v4, v7

    iget-object v10, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mMarkLinePaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v7, v8

    move v8, v9

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 224
    invoke-static {v3}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;->access$100(Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private drawNextSegmentMask(Landroid/graphics/Canvas;)V
    .locals 4

    .line 288
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mProgress:I

    if-gez v0, :cond_0

    return-void

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->setNextSegmentMaskBounds()V

    .line 294
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 295
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 296
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 297
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mSegments:Ljava/util/List;

    iget v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mProgress:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;->access$000(Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    neg-float v1, v1

    .line 298
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 299
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mNextSegmentMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 300
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .locals 13

    .line 230
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mProgress:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    .line 234
    :goto_0
    iget v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mProgress:I

    const/4 v4, 0x2

    const/high16 v5, 0x43fa0000    # 500.0f

    if-gt v2, v3, :cond_5

    const/high16 v3, -0x3d4c0000    # -90.0f

    if-le v2, v1, :cond_1

    move v6, v2

    :goto_1
    if-lt v6, v4, :cond_1

    .line 238
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mSegments:Ljava/util/List;

    sub-int v8, v2, v6

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;

    invoke-static {v7}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;->access$100(Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;)F

    move-result v7

    add-float/2addr v3, v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_1
    move v9, v3

    .line 241
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mSegments:Ljava/util/List;

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;->access$100(Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;)F

    move-result v3

    .line 243
    iget-wide v6, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mElapsedTime:J

    long-to-float v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v4, v6

    div-float/2addr v4, v5

    .line 244
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mAnimationInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v4}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v4

    .line 246
    iget v5, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mProgress:I

    if-ne v2, v5, :cond_2

    mul-float/2addr v3, v4

    :cond_2
    move v4, v1

    :goto_2
    if-gt v4, v2, :cond_4

    if-ne v4, v1, :cond_3

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mSegments:Ljava/util/List;

    sub-int v5, v2, v4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;->access$000(Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;)F

    move-result v0

    add-float/2addr v0, v3

    goto :goto_3

    .line 256
    :cond_3
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mSegments:Ljava/util/List;

    sub-int v6, v2, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;->access$100(Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;)F

    move-result v5

    sub-float/2addr v0, v5

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 260
    :cond_4
    iget-object v8, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mOval:Landroid/graphics/RectF;

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float v10, v0, v3

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mProgressPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    :cond_5
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mInNextTipsAnimation:Z

    if-eqz v1, :cond_8

    .line 266
    iget-wide v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mElapsedTime:J

    const-wide/16 v6, 0x1f4

    sub-long/2addr v1, v6

    cmp-long v3, v1, v6

    if-gtz v3, :cond_6

    return-void

    :cond_6
    sub-long/2addr v1, v6

    .line 271
    div-long v8, v1, v6

    long-to-int v3, v8

    .line 272
    rem-long/2addr v1, v6

    .line 274
    rem-int/2addr v3, v4

    const/high16 v4, 0x43020000    # 130.0f

    if-nez v3, :cond_7

    long-to-float v1, v1

    goto :goto_4

    :cond_7
    sub-long/2addr v6, v1

    long-to-float v1, v6

    :goto_4
    mul-float/2addr v1, v4

    div-float/2addr v1, v5

    float-to-int v1, v1

    .line 279
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mProgressAnimationPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 280
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mOval:Landroid/graphics/RectF;

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float v5, v0, v1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mSegments:Ljava/util/List;

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mProgress:I

    .line 282
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;->access$100(Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;)F

    move-result v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mProgressAnimationPaint:Landroid/graphics/Paint;

    move-object v3, p1

    .line 280
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_8
    return-void
.end method

.method private drawSegments(Landroid/graphics/Canvas;)V
    .locals 11

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 201
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mSegments:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;

    .line 202
    invoke-static {v2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;->access$000(Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;)F

    move-result v3

    .line 203
    invoke-static {v2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;->access$100(Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;)F

    move-result v2

    const/high16 v4, 0x40a00000    # 5.0f

    sub-float v8, v2, v4

    .line 205
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mOval:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    add-float v7, v3, v2

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mSegmentPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setNextSegmentMaskBounds()V
    .locals 3

    .line 304
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mNextSegmentMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private updateAnimationInfo()V
    .locals 7

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mCurrentTime:J

    .line 177
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mInAnimation:Z

    if-eqz v2, :cond_2

    .line 178
    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mStartAnimationTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mElapsedTime:J

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gez v4, :cond_0

    .line 180
    iput-boolean v5, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mInFinishedAnimation:Z

    .line 181
    iput-boolean v6, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mInNextTipsAnimation:Z

    goto :goto_0

    :cond_0
    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const-wide/16 v2, 0xfa0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 184
    iput-boolean v6, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mInFinishedAnimation:Z

    .line 185
    iput-boolean v5, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mInNextTipsAnimation:Z

    goto :goto_0

    .line 187
    :cond_1
    iput-boolean v6, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mInAnimation:Z

    .line 188
    iput-boolean v6, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mInFinishedAnimation:Z

    .line 189
    iput-boolean v6, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mInNextTipsAnimation:Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 149
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 150
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->updateAnimationInfo()V

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mSegments:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    .line 159
    :cond_1
    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mProgress:I

    if-lt v1, v0, :cond_2

    return-void

    .line 164
    :cond_2
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->drawSegments(Landroid/graphics/Canvas;)V

    .line 166
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->drawProgress(Landroid/graphics/Canvas;)V

    .line 170
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mInAnimation:Z

    if-eqz p1, :cond_3

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 141
    iget p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mOuterRingThickness:I

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 142
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mOval:Landroid/graphics/RectF;

    iget p3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mBgPadding:I

    int-to-float p4, p3

    add-float/2addr p4, p1

    int-to-float p3, p3

    add-float/2addr p3, p1

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mBgPadding:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mBgPadding:I

    int-to-float p0, p0

    sub-float/2addr v1, p0

    .line 142
    invoke-virtual {p2, p4, p3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setProgress(I)V
    .locals 3

    .line 130
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgress progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 131
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mProgress:I

    const/4 p1, 0x1

    .line 132
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mInAnimation:Z

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mStartAnimationTime:J

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSegments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress$Segment;",
            ">;)V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecorderSegmentProgress;->mSegments:Ljava/util/List;

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

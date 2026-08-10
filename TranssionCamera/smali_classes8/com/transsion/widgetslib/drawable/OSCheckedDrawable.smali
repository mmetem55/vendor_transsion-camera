.class public Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "OSCheckedDrawable.java"

# interfaces
.implements Lcom/transsion/widgetslib/drawable/ReversibleDrawable;


# static fields
.field private static final DELTA_FLOAT:F = 1.0E-7f

.field private static final FRAMES_BORDER_RATIO:F = 0.4f

.field private static final FRAMES_TICK_RATIO:F = 0.1f

.field private static final FRAMES_TICK_RATIO_MAX:F = 0.5f

.field private static final PVH_BORDER:Ljava/lang/String; = "pvh_border"

.field private static final PVH_PATH_START:Ljava/lang/String; = "pvh_path_start"

.field private static final PVH_TICK:Ljava/lang/String; = "pvh_tick"


# instance fields
.field private mAlpha:I

.field private mChecked:Z

.field private mCheckedBg:Landroid/graphics/Bitmap;

.field private final mContext:Landroid/content/Context;

.field private mCurrentAlpha:I

.field private mCurrentLeft:I

.field private mCurrentRadius:F

.field private mCurrentTop:I

.field private final mDeltaPathPointStartLength:F

.field private final mDeltaTickLength:F

.field private mExecFraction:F

.field private final mMeasurePathFullTick:Landroid/graphics/PathMeasure;

.field private final mMeasurePathPointStart:Landroid/graphics/PathMeasure;

.field private mNormalBitmap:Landroid/graphics/Bitmap;

.field private final mPaintTick:Landroid/graphics/Paint;

.field private final mPathBorder:Landroid/graphics/Path;

.field private mPathPointStartLength:F

.field private final mPathTick:Landroid/graphics/Path;

.field private final mPointEnd:[F

.field private final mPointStart:[F

.field private final mPointTickBottomX:F

.field private final mPointTickBottomY:F

.field private mRadius:F

.field private final mRectF:Landroid/graphics/RectF;

.field private final mTanPointEnd:[F

.field private final mTanPointStart:[F

.field private mTickLength:F

.field private final mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 10

    .line 86
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    .line 61
    iput v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mAlpha:I

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 71
    iput-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPointStart:[F

    new-array v1, v0, [F

    .line 72
    iput-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mTanPointStart:[F

    new-array v1, v0, [F

    .line 77
    iput-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPointEnd:[F

    new-array v0, v0, [F

    .line 78
    iput-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mTanPointEnd:[F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 83
    iput v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mExecFraction:F

    .line 84
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRectF:Landroid/graphics/RectF;

    .line 87
    iput-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mContext:Landroid/content/Context;

    .line 89
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPaintTick:Landroid/graphics/Paint;

    .line 90
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 92
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v2, -0x1

    .line 94
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    new-array v2, v1, [F

    .line 96
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 98
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathBorder:Landroid/graphics/Path;

    .line 100
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathTick:Landroid/graphics/Path;

    .line 101
    new-instance v2, Landroid/graphics/PathMeasure;

    invoke-direct {v2}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mMeasurePathFullTick:Landroid/graphics/PathMeasure;

    .line 103
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 104
    new-instance v5, Landroid/graphics/PathMeasure;

    invoke-direct {v5}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v5, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mMeasurePathPointStart:Landroid/graphics/PathMeasure;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v3, v7, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    iput v6, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRadius:F

    .line 108
    invoke-direct {p0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setBitmap()V

    .line 110
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v7, 0x40c00000    # 6.0f

    .line 112
    invoke-static {v3, v7, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const v8, 0x40151eb8    # 2.33f

    .line 113
    invoke-static {v3, v8, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    neg-float v7, v7

    neg-float v9, v9

    .line 114
    invoke-virtual {v6, v7, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 115
    invoke-static {v3, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    neg-float v7, v7

    iput v7, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPointTickBottomX:F

    const v9, 0x402ae148    # 2.67f

    .line 116
    invoke-static {v3, v9, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    iput v9, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPointTickBottomY:F

    .line 117
    invoke-virtual {v6, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    const v7, 0x40b570a4    # 5.67f

    .line 118
    invoke-static {v3, v7, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const v9, 0x409570a4    # 4.67f

    .line 119
    invoke-static {v3, v9, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    neg-float v9, v9

    .line 120
    invoke-virtual {v6, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 121
    invoke-virtual {v2, v6, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 122
    invoke-static {v3, v8, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    iput v6, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mDeltaTickLength:F

    .line 124
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    const/high16 v7, 0x3fc00000    # 1.5f

    .line 126
    invoke-static {v3, v7, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    add-float/2addr v6, v7

    const/4 v7, 0x0

    .line 125
    invoke-virtual {v2, v7, v6, v4, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 127
    invoke-static {v3, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mDeltaPathPointStartLength:F

    .line 128
    invoke-virtual {v5, v4, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 130
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setChecked(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)F
    .locals 0

    .line 42
    iget p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mExecFraction:F

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mExecFraction:F

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentLeft:I

    return p0
.end method

.method static synthetic access$1000(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)[F
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPointStart:[F

    return-object p0
.end method

.method static synthetic access$102(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentLeft:I

    return p1
.end method

.method static synthetic access$1100(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)[F
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mTanPointStart:[F

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)Landroid/graphics/PathMeasure;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mMeasurePathPointStart:Landroid/graphics/PathMeasure;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)Landroid/graphics/Path;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathTick:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)F
    .locals 0

    .line 42
    iget p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPointTickBottomX:F

    return p0
.end method

.method static synthetic access$1500(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)F
    .locals 0

    .line 42
    iget p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPointTickBottomY:F

    return p0
.end method

.method static synthetic access$1600(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)Landroid/graphics/Path;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathBorder:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentTop:I

    return p0
.end method

.method static synthetic access$202(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentTop:I

    return p1
.end method

.method static synthetic access$302(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentAlpha:I

    return p1
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)F
    .locals 0

    .line 42
    iget p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentRadius:F

    return p0
.end method

.method static synthetic access$402(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentRadius:F

    return p1
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)F
    .locals 0

    .line 42
    iget p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mTickLength:F

    return p0
.end method

.method static synthetic access$502(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mTickLength:F

    return p1
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)F
    .locals 0

    .line 42
    iget p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathPointStartLength:F

    return p0
.end method

.method static synthetic access$602(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathPointStartLength:F

    return p1
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)[F
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPointEnd:[F

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)[F
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mTanPointEnd:[F

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)Landroid/graphics/PathMeasure;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mMeasurePathFullTick:Landroid/graphics/PathMeasure;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;
    .locals 1

    const/4 v0, 0x0

    .line 445
    invoke-static {p0, v0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->getInstance(Landroid/content/Context;Z)Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Z)Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;
    .locals 1

    .line 441
    new-instance v0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method private setAnimParams(IIIFFFF)V
    .locals 26

    move-object/from16 v10, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v0, p5

    move/from16 v1, p6

    move/from16 v3, p7

    .line 217
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 218
    iget-object v7, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v9, v11

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    div-float/2addr v12, v11

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v11

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v11

    invoke-virtual {v7, v9, v12, v13, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 219
    iget-object v5, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    float-to-int v5, v5

    .line 220
    iget-object v7, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    float-to-int v7, v7

    .line 221
    sget-object v9, Lcom/transsion/widgetslib/view/OSCheckBox;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "startAnim, centerX: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", centerY: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", mRectF: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", mChecked: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mChecked:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", execFraction: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", this:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "startAnim, tickLength: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", startLength: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-boolean v9, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mChecked:Z

    const-string v11, "pvh_border"

    const-string v14, "pvh_path_start"

    const-string v15, "pvh_tick"

    const/4 v12, 0x3

    const/16 v18, 0x0

    if-eqz v9, :cond_4

    const v9, 0x3dcccccd    # 0.1f

    cmpl-float v21, v3, v9

    if-lez v21, :cond_0

    const/16 v21, 0x2

    goto :goto_0

    :cond_0
    const/16 v21, 0x1

    :goto_0
    const v22, 0x3f19999a    # 0.6f

    cmpl-float v22, v3, v22

    if-lez v22, :cond_1

    add-int/lit8 v21, v21, 0x1

    :cond_1
    move/from16 v13, v21

    sub-int/2addr v5, v2

    sub-int/2addr v7, v4

    .line 238
    iget v9, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mAlpha:I

    sub-int/2addr v9, v6

    move/from16 v23, v5

    neg-float v5, v8

    if-ne v13, v12, :cond_2

    const v21, 0x3dcccccd    # 0.1f

    sub-float v13, v3, v21

    const/high16 v17, 0x3f000000    # 0.5f

    sub-float v13, v13, v17

    div-float/2addr v13, v3

    div-float v17, v17, v3

    add-float v12, v17, v13

    move/from16 v17, v5

    .line 244
    iget-object v5, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mMeasurePathFullTick:Landroid/graphics/PathMeasure;

    invoke-virtual {v5}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    move/from16 v24, v7

    .line 245
    iget v7, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mDeltaTickLength:F

    sub-float v7, v5, v7

    move/from16 v25, v9

    .line 247
    iget-object v9, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mMeasurePathPointStart:Landroid/graphics/PathMeasure;

    invoke-virtual {v9}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v9

    .line 248
    iget v8, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mDeltaPathPointStartLength:F

    sub-float v8, v9, v8

    .line 250
    iget-object v6, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x3

    new-array v2, v4, [Landroid/animation/PropertyValuesHolder;

    new-array v10, v4, [Landroid/animation/Keyframe;

    const/4 v4, 0x0

    .line 252
    invoke-static {v4, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v20

    aput-object v20, v10, v18

    const/high16 v4, 0x3f800000    # 1.0f

    .line 253
    invoke-static {v13, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v19

    const/16 v21, 0x1

    aput-object v19, v10, v21

    .line 254
    invoke-static {v4, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v19

    const/4 v4, 0x2

    aput-object v19, v10, v4

    .line 251
    invoke-static {v11, v10}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    aput-object v10, v2, v18

    const/4 v10, 0x4

    new-array v11, v10, [Landroid/animation/Keyframe;

    const/4 v10, 0x0

    .line 256
    invoke-static {v10, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v19

    aput-object v19, v11, v18

    .line 257
    invoke-static {v13, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    aput-object v0, v11, v21

    .line 258
    invoke-static {v12, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    aput-object v0, v11, v4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 259
    invoke-static {v0, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v11, v7

    .line 255
    invoke-static {v15, v11}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v2, v21

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Keyframe;

    .line 261
    invoke-static {v10, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    aput-object v10, v5, v18

    .line 262
    invoke-static {v13, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    aput-object v1, v5, v21

    .line 263
    invoke-static {v12, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    aput-object v1, v5, v4

    .line 264
    invoke-static {v0, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    aput-object v0, v5, v7

    .line 260
    invoke-static {v14, v5}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v2, v4

    .line 250
    invoke-virtual {v6, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    move-object/from16 v10, p0

    goto/16 :goto_1

    :cond_2
    move/from16 v17, v5

    move/from16 v24, v7

    move/from16 v25, v9

    const/4 v4, 0x2

    if-ne v13, v4, :cond_3

    const v2, 0x3dcccccd    # 0.1f

    sub-float v2, v3, v2

    div-float/2addr v2, v3

    move-object/from16 v10, p0

    .line 267
    iget-object v4, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mMeasurePathFullTick:Landroid/graphics/PathMeasure;

    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    .line 268
    iget v5, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mDeltaTickLength:F

    sub-float v5, v4, v5

    .line 270
    iget-object v6, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mMeasurePathPointStart:Landroid/graphics/PathMeasure;

    invoke-virtual {v6}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v6

    .line 271
    iget v7, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mDeltaPathPointStartLength:F

    sub-float v7, v6, v7

    .line 273
    iget-object v8, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v9, 0x2

    new-array v11, v9, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x3

    new-array v13, v12, [Landroid/animation/Keyframe;

    const/4 v12, 0x0

    .line 275
    invoke-static {v12, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    aput-object v0, v13, v18

    .line 276
    invoke-static {v2, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v13, v4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 277
    invoke-static {v0, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    aput-object v5, v13, v9

    .line 274
    invoke-static {v15, v13}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v11, v18

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Keyframe;

    .line 279
    invoke-static {v12, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    aput-object v1, v5, v18

    .line 280
    invoke-static {v2, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    aput-object v1, v5, v4

    .line 281
    invoke-static {v0, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    aput-object v0, v5, v9

    .line 278
    invoke-static {v14, v5}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v11, v4

    .line 273
    invoke-virtual {v8, v11}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_1

    :cond_3
    move-object/from16 v10, p0

    .line 283
    iget-object v2, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mMeasurePathFullTick:Landroid/graphics/PathMeasure;

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    iget v4, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mDeltaTickLength:F

    sub-float/2addr v2, v4

    .line 284
    iget-object v4, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mMeasurePathPointStart:Landroid/graphics/PathMeasure;

    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    iget v5, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mDeltaPathPointStartLength:F

    sub-float/2addr v4, v5

    .line 286
    iget-object v5, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v6, 0x2

    new-array v7, v6, [Landroid/animation/PropertyValuesHolder;

    new-array v8, v6, [Landroid/animation/Keyframe;

    const/4 v9, 0x0

    .line 288
    invoke-static {v9, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    aput-object v0, v8, v18

    const/high16 v0, 0x3f800000    # 1.0f

    .line 289
    invoke-static {v0, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    const/4 v11, 0x1

    aput-object v2, v8, v11

    .line 287
    invoke-static {v15, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v7, v18

    new-array v2, v6, [Landroid/animation/Keyframe;

    .line 291
    invoke-static {v9, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    aput-object v1, v2, v18

    .line 292
    invoke-static {v0, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    aput-object v0, v2, v11

    .line 290
    invoke-static {v14, v2}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v7, v11

    .line 286
    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_1
    move/from16 v9, v17

    move/from16 v5, v24

    move/from16 v7, v25

    goto/16 :goto_4

    :cond_4
    const v2, 0x3ecccccd    # 0.4f

    cmpl-float v4, v3, v2

    if-lez v4, :cond_5

    const/4 v4, 0x2

    goto :goto_2

    :cond_5
    const/4 v4, 0x1

    :goto_2
    const v5, 0x3f666666    # 0.9f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_6

    add-int/lit8 v4, v4, 0x1

    .line 302
    :cond_6
    iget-object v5, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRectF:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    move/from16 v7, p1

    int-to-float v8, v7

    sub-float/2addr v6, v8

    float-to-int v6, v6

    .line 303
    iget v5, v5, Landroid/graphics/RectF;->top:F

    move/from16 v8, p2

    int-to-float v9, v8

    sub-float/2addr v5, v9

    float-to-int v5, v5

    move/from16 v9, p3

    neg-int v12, v9

    .line 305
    iget v13, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRadius:F

    sub-float v13, v13, p4

    move/from16 v21, v5

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    sub-float v2, v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    div-float/2addr v4, v3

    add-float/2addr v4, v2

    .line 313
    iget-object v5, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mMeasurePathFullTick:Landroid/graphics/PathMeasure;

    invoke-virtual {v5}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    move/from16 v17, v6

    .line 314
    iget-object v6, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mMeasurePathPointStart:Landroid/graphics/PathMeasure;

    invoke-virtual {v6}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v6

    .line 316
    iget-object v7, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v8, 0x3

    new-array v9, v8, [Landroid/animation/PropertyValuesHolder;

    move/from16 v16, v12

    const/4 v8, 0x4

    new-array v12, v8, [Landroid/animation/Keyframe;

    const/4 v8, 0x0

    .line 318
    invoke-static {v8, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    aput-object v0, v12, v18

    .line 319
    invoke-static {v2, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v12, v5

    .line 320
    invoke-static {v4, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    const/4 v5, 0x2

    aput-object v0, v12, v5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 321
    invoke-static {v0, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v19

    const/4 v0, 0x3

    aput-object v19, v12, v0

    .line 317
    invoke-static {v15, v12}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    aput-object v12, v9, v18

    const/4 v12, 0x4

    new-array v12, v12, [Landroid/animation/Keyframe;

    .line 323
    invoke-static {v8, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    aput-object v1, v12, v18

    .line 324
    invoke-static {v2, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v12, v2

    .line 325
    invoke-static {v4, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    aput-object v1, v12, v5

    const/high16 v1, 0x3f800000    # 1.0f

    .line 326
    invoke-static {v1, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    aput-object v6, v12, v0

    .line 322
    invoke-static {v14, v12}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v9, v2

    new-array v0, v0, [Landroid/animation/Keyframe;

    .line 328
    invoke-static {v8, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    aput-object v6, v0, v18

    .line 329
    invoke-static {v4, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    aput-object v4, v0, v2

    .line 330
    invoke-static {v1, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    aput-object v1, v0, v5

    .line 327
    invoke-static {v11, v0}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v9, v5

    .line 316
    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto/16 :goto_3

    :cond_7
    move/from16 v17, v6

    move/from16 v16, v12

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    sub-float v2, v3, v2

    div-float/2addr v2, v3

    .line 334
    iget-object v4, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v6, 0x3

    new-array v7, v6, [Landroid/animation/PropertyValuesHolder;

    new-array v8, v6, [Landroid/animation/Keyframe;

    const/4 v9, 0x0

    .line 336
    invoke-static {v9, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    aput-object v0, v8, v18

    .line 337
    invoke-static {v2, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    const/4 v12, 0x1

    aput-object v0, v8, v12

    const/high16 v0, 0x3f800000    # 1.0f

    .line 338
    invoke-static {v0, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v19

    aput-object v19, v8, v5

    .line 335
    invoke-static {v15, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    aput-object v8, v7, v18

    new-array v8, v6, [Landroid/animation/Keyframe;

    .line 340
    invoke-static {v9, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    aput-object v1, v8, v18

    .line 341
    invoke-static {v2, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    aput-object v1, v8, v12

    .line 342
    invoke-static {v0, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    aput-object v1, v8, v5

    .line 339
    invoke-static {v14, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v7, v12

    new-array v1, v6, [Landroid/animation/Keyframe;

    .line 344
    invoke-static {v9, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    aput-object v6, v1, v18

    .line 345
    invoke-static {v2, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    aput-object v2, v1, v12

    .line 346
    invoke-static {v0, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    aput-object v0, v1, v5

    .line 343
    invoke-static {v11, v1}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v7, v5

    .line 334
    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_3

    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v12, 0x1

    .line 348
    iget-object v1, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-array v2, v12, [Landroid/animation/PropertyValuesHolder;

    new-array v4, v5, [Landroid/animation/Keyframe;

    .line 350
    invoke-static {v9, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    aput-object v5, v4, v18

    .line 351
    invoke-static {v0, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    aput-object v0, v4, v12

    .line 349
    invoke-static {v11, v4}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v2, v18

    .line 348
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_3
    move v9, v13

    move/from16 v7, v16

    move/from16 v23, v17

    move/from16 v5, v21

    .line 359
    :goto_4
    iget-object v0, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x43fa0000    # 500.0f

    mul-float/2addr v1, v3

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 361
    new-instance v11, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, v23

    move/from16 v4, p2

    move/from16 v6, p3

    move/from16 v8, p4

    invoke-direct/range {v0 .. v9}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;-><init>(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;IIIIIIFF)V

    .line 405
    iget-object v0, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 406
    iget-object v0, v10, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$2;

    invoke-direct {v1, v10, v11}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$2;-><init>(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private setAnimParams(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)V
    .locals 8

    .line 212
    iget v1, p1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentLeft:I

    iget v2, p1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentTop:I

    iget v3, p1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentAlpha:I

    iget v4, p1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentRadius:F

    iget v5, p1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mTickLength:F

    iget v6, p1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathPointStartLength:F

    iget v7, p1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mExecFraction:F

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setAnimParams(IIIFFFF)V

    return-void
.end method

.method private setBitmap()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_check_drawable_start_unchecked:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$color;->os_fill_quaternary_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 165
    invoke-static {v0}, Lcom/transsion/widgetslib/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mNormalBitmap:Landroid/graphics/Bitmap;

    .line 166
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_checkbox_checked_bg:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/widgetslib/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCheckedBg:Landroid/graphics/Bitmap;

    return-void
.end method

.method private setChecked(Z)V
    .locals 10

    .line 138
    iput-boolean p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mChecked:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->getIntrinsicWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    :goto_0
    iput v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentLeft:I

    if-eqz p1, :cond_1

    move v1, v0

    goto :goto_1

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->getIntrinsicHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    :goto_1
    iput v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentTop:I

    if-eqz p1, :cond_2

    .line 142
    iget v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mAlpha:I

    :cond_2
    iput v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentAlpha:I

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    move v1, v0

    goto :goto_2

    .line 143
    :cond_3
    iget v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRadius:F

    :goto_2
    iput v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentRadius:F

    .line 144
    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathBorder:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    if-nez p1, :cond_4

    .line 146
    iget-object v2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathBorder:Landroid/graphics/Path;

    iget v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentLeft:I

    int-to-float v3, v1

    iget v4, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentTop:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v5, v1

    iget v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentTop:I

    .line 147
    invoke-virtual {p0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v1, v6

    int-to-float v6, v1

    iget v8, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentRadius:F

    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move v7, v8

    .line 146
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 150
    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mMeasurePathFullTick:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mDeltaTickLength:F

    sub-float/2addr v1, v2

    goto :goto_3

    :cond_5
    move v1, v0

    :goto_3
    iput v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mTickLength:F

    .line 151
    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathTick:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    if-eqz p1, :cond_6

    .line 153
    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mMeasurePathFullTick:Landroid/graphics/PathMeasure;

    iget v2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mDeltaTickLength:F

    iget v3, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mTickLength:F

    iget-object v4, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathTick:Landroid/graphics/Path;

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    :cond_6
    if-eqz p1, :cond_7

    .line 156
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mMeasurePathPointStart:Landroid/graphics/PathMeasure;

    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mDeltaPathPointStartLength:F

    sub-float v0, p1, v0

    :cond_7
    iput v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathPointStartLength:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 194
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mNormalBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCheckedBg:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 200
    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {v1, v2, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 201
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mNormalBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRectF:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 203
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentAlpha:I

    const/16 v3, 0x1f

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathBorder:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 205
    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCheckedBg:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v2, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 206
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 208
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathTick:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPaintTick:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mNormalBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_ctm_checked_box_wh:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mNormalBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_ctm_checked_box_wh:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 437
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public start(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V
    .locals 1

    .line 420
    instance-of v0, p1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 422
    check-cast p1, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setAnimParams(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)V

    .line 423
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 431
    iget-boolean v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mChecked:Z

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setChecked(Z)V

    :cond_0
    return-void
.end method

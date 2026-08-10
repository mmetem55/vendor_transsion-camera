.class public Lcom/transsion/widgetslib/drawable/OSRadioDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "OSRadioDrawable.java"

# interfaces
.implements Lcom/transsion/widgetslib/drawable/ReversibleDrawable;


# static fields
.field private static final FRAMES_INNER_MAX_RADIUS_RATIO:F = 0.2f

.field private static final FRAMES_INNER_MIN_RADIUS_RATIO:F = 0.2f

.field private static final FRAMES_INNER_RADIUS_RATIO:F = 0.23333333f

.field private static final FRAMES_OUTER_RADIUS_RATIO:F = 0.2f

.field private static final FRAMES_STROKE_COLOR_RATIO:F = 0.16666667f

.field private static final FRAMES_TOTAL:I = 0x1e

.field private static final OUTER_MIN_RADIUS:F = 0.1f

.field private static final PVH_INNER_RADIUS:Ljava/lang/String; = "pvh_inner_radius"

.field private static final PVH_OUTER_RADIUS:Ljava/lang/String; = "pvh_outer_radius"

.field private static final PVH_STROKE_COLOR:Ljava/lang/String; = "pvh_stroke_color"


# instance fields
.field private mChecked:Z

.field private mCheckedBitmap:Landroid/graphics/Bitmap;

.field private final mContext:Landroid/content/Context;

.field private mEndColor:I

.field private mExecFraction:F

.field private mInnerEndRadius:F

.field private mInnerMaxRadius:F

.field private mInnerMinRadius:F

.field private mInnerRadius:F

.field private mNormalBitmap:Landroid/graphics/Bitmap;

.field private mOuterRadius:F

.field private mOuterStartRadius:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPathCheckedInner:Landroid/graphics/Path;

.field private final mPathCheckedOuter:Landroid/graphics/Path;

.field private final mRectF:Landroid/graphics/RectF;

.field private mStartColor:I

.field private mStrokeColor:I

.field private final mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 68
    iput v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mExecFraction:F

    .line 69
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mRectF:Landroid/graphics/RectF;

    .line 74
    iput-object p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mContext:Landroid/content/Context;

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPaint:Landroid/graphics/Paint;

    .line 77
    sget v0, Lcom/transsion/widgetslib/R$color;->os_fill_quaternary_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStartColor:I

    .line 78
    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->getOsPlatformBasicColor(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mEndColor:I

    .line 80
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedOuter:Landroid/graphics/Path;

    .line 81
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedInner:Landroid/graphics/Path;

    const/4 p1, 0x0

    new-array p1, p1, [F

    .line 83
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 85
    invoke-direct {p0}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->setBitmap()V

    .line 86
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->setChecked(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)F
    .locals 0

    .line 44
    iget p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mExecFraction:F

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;F)F
    .locals 0

    .line 44
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mExecFraction:F

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStrokeColor:I

    return p0
.end method

.method static synthetic access$102(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStrokeColor:I

    return p1
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)F
    .locals 0

    .line 44
    iget p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterRadius:F

    return p0
.end method

.method static synthetic access$202(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;F)F
    .locals 0

    .line 44
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterRadius:F

    return p1
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)F
    .locals 0

    .line 44
    iget p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerRadius:F

    return p0
.end method

.method static synthetic access$302(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;F)F
    .locals 0

    .line 44
    iput p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerRadius:F

    return p1
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)Landroid/graphics/Path;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedOuter:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)Landroid/graphics/Path;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedInner:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/transsion/widgetslib/drawable/OSRadioDrawable;
    .locals 1

    const/4 v0, 0x0

    .line 491
    invoke-static {p0, v0}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->getInstance(Landroid/content/Context;Z)Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Z)Lcom/transsion/widgetslib/drawable/OSRadioDrawable;
    .locals 1

    .line 487
    new-instance v0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method private setAnimParams(IFFF)V
    .locals 35

    move-object/from16 v8, p0

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    .line 199
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 200
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    .line 201
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    .line 202
    sget-object v7, Lcom/transsion/widgetslib/view/OSRadioButton;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startAnim, centerX: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", centerY: "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", bounds: "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mChecked: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mChecked:Z

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", execFraction: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", this:"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 202
    invoke-static {v7, v4}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 207
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    .line 209
    invoke-static {v10, v10}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v12, v12}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v13

    .line 211
    iget-boolean v14, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mChecked:Z

    const-string v15, ")"

    const-string v12, "), startInnerRadius-endInnerRadius: ("

    const-string v10, "), startOuterRadius-endOuterRadius: ("

    move-object/from16 v18, v13

    const-string v13, ")-("

    move-object/from16 v19, v11

    const-string v11, ", startStrokeColor-endStrokeColor: ("

    move-object/from16 v20, v7

    const-string v7, "-"

    move-object/from16 v21, v15

    const-string v15, "pvh_stroke_color"

    move-object/from16 v23, v12

    const-string v12, "pvh_outer_radius"

    move-object/from16 v24, v7

    const-string v7, "pvh_inner_radius"

    move-object/from16 v26, v10

    const v27, 0x3e4ccccd    # 0.2f

    if-eqz v14, :cond_8

    .line 212
    iget v14, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mEndColor:I

    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v14

    sub-int/2addr v14, v4

    .line 213
    iget v10, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mEndColor:I

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v10

    sub-int/2addr v10, v5

    move/from16 v18, v10

    .line 214
    iget v10, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mEndColor:I

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    sub-int/2addr v10, v6

    const v19, 0x3e6eeeef

    cmpl-float v29, v3, v19

    if-lez v29, :cond_0

    const/16 v29, 0x2

    goto :goto_0

    :cond_0
    const/16 v29, 0x1

    :goto_0
    const v30, 0x3eddddde

    cmpl-float v30, v3, v30

    if-lez v30, :cond_1

    add-int/lit8 v29, v29, 0x1

    :cond_1
    const v30, 0x3f222222

    cmpl-float v30, v3, v30

    if-lez v30, :cond_2

    add-int/lit8 v29, v29, 0x1

    :cond_2
    const v30, 0x3f555555

    cmpl-float v30, v3, v30

    if-lez v30, :cond_3

    add-int/lit8 v29, v29, 0x1

    :cond_3
    move/from16 v30, v10

    move/from16 v10, v29

    move/from16 v29, v14

    .line 229
    iget-object v14, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedOuter:Landroid/graphics/Path;

    invoke-virtual {v14}, Landroid/graphics/Path;->reset()V

    .line 230
    iget-object v14, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedOuter:Landroid/graphics/Path;

    move/from16 v31, v6

    iget v6, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    move/from16 v32, v5

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move/from16 v33, v4

    const/4 v4, 0x0

    invoke-virtual {v14, v4, v4, v6, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 231
    iget-object v5, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedInner:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    const/4 v5, 0x1

    if-ne v10, v5, :cond_4

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Keyframe;

    .line 234
    invoke-static {v4, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const/4 v14, 0x0

    aput-object v4, v6, v14

    iget v4, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerEndRadius:F

    const/high16 v12, 0x3f800000    # 1.0f

    .line 235
    invoke-static {v12, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    aput-object v4, v6, v5

    .line 233
    invoke-static {v7, v6}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    :goto_1
    move-object/from16 v34, v13

    goto/16 :goto_2

    :cond_4
    const/4 v6, 0x2

    const/4 v14, 0x0

    if-ne v10, v6, :cond_5

    sub-float v12, v3, v19

    div-float/2addr v12, v3

    const/4 v15, 0x3

    new-array v15, v15, [Landroid/animation/Keyframe;

    .line 240
    invoke-static {v4, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    aput-object v4, v15, v14

    iget v4, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerMinRadius:F

    .line 241
    invoke-static {v12, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    aput-object v4, v15, v5

    iget v4, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerEndRadius:F

    const/high16 v5, 0x3f800000    # 1.0f

    .line 242
    invoke-static {v5, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    aput-object v4, v15, v6

    .line 239
    invoke-static {v7, v15}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    goto :goto_1

    :cond_5
    const/4 v4, 0x3

    if-ne v10, v4, :cond_6

    sub-float v4, v3, v19

    sub-float v4, v4, v27

    div-float/2addr v4, v3

    div-float v27, v27, v3

    add-float v5, v27, v4

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Keyframe;

    const/4 v12, 0x0

    .line 248
    invoke-static {v12, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v12

    const/4 v14, 0x0

    aput-object v12, v6, v14

    iget v12, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerMaxRadius:F

    .line 249
    invoke-static {v4, v12}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v6, v12

    iget v4, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerMinRadius:F

    .line 250
    invoke-static {v5, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v6, v5

    iget v4, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerEndRadius:F

    const/high16 v5, 0x3f800000    # 1.0f

    .line 251
    invoke-static {v5, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v6, v5

    .line 247
    invoke-static {v7, v6}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 252
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const/4 v4, 0x4

    if-ne v10, v4, :cond_7

    sub-float v4, v3, v19

    sub-float v4, v4, v27

    sub-float v4, v4, v27

    div-float/2addr v4, v3

    div-float v27, v27, v3

    add-float v5, v27, v4

    add-float v6, v27, v5

    const/4 v14, 0x3

    new-array v15, v14, [Landroid/animation/Keyframe;

    const/4 v14, 0x0

    .line 259
    invoke-static {v14, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v17

    const/16 v19, 0x0

    aput-object v17, v15, v19

    const v14, 0x3dcccccd    # 0.1f

    .line 260
    invoke-static {v4, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v25

    const/16 v27, 0x1

    aput-object v25, v15, v27

    move-object/from16 v34, v13

    const/high16 v13, 0x3f800000    # 1.0f

    .line 261
    invoke-static {v13, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v28

    const/4 v13, 0x2

    aput-object v28, v15, v13

    .line 258
    invoke-static {v12, v15}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 262
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x5

    new-array v12, v12, [Landroid/animation/Keyframe;

    const/4 v14, 0x0

    .line 265
    invoke-static {v14, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v14

    aput-object v14, v12, v19

    .line 266
    invoke-static {v4, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    aput-object v4, v12, v27

    iget v4, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerMaxRadius:F

    .line 267
    invoke-static {v5, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    aput-object v4, v12, v13

    iget v4, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerMinRadius:F

    .line 268
    invoke-static {v6, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v12, v5

    iget v4, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerEndRadius:F

    const/high16 v5, 0x3f800000    # 1.0f

    .line 269
    invoke-static {v5, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v12, v5

    .line 264
    invoke-static {v7, v12}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    goto/16 :goto_2

    :cond_7
    move-object/from16 v34, v13

    sub-float v4, v3, v19

    sub-float v4, v4, v27

    sub-float v4, v4, v27

    sub-float v4, v4, v27

    div-float/2addr v4, v3

    div-float v27, v27, v3

    add-float v5, v27, v4

    add-float v6, v27, v5

    add-float v13, v27, v6

    const/4 v14, 0x3

    new-array v3, v14, [Landroid/animation/Keyframe;

    const/4 v14, 0x0

    .line 277
    invoke-static {v14, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v17

    const/16 v19, 0x0

    aput-object v17, v3, v19

    const/high16 v14, 0x3f800000    # 1.0f

    .line 278
    invoke-static {v4, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v16

    const/16 v27, 0x1

    aput-object v16, v3, v27

    .line 279
    invoke-static {v14, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v16

    const/16 v28, 0x2

    aput-object v16, v3, v28

    .line 276
    invoke-static {v15, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 280
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x4

    new-array v15, v3, [Landroid/animation/Keyframe;

    const/4 v3, 0x0

    .line 283
    invoke-static {v3, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v16

    aput-object v16, v15, v19

    .line 284
    invoke-static {v4, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    aput-object v4, v15, v27

    const v4, 0x3dcccccd    # 0.1f

    .line 285
    invoke-static {v5, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v16

    aput-object v16, v15, v28

    .line 286
    invoke-static {v14, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v17

    const/4 v4, 0x3

    aput-object v17, v15, v4

    .line 282
    invoke-static {v12, v15}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 287
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x5

    new-array v4, v4, [Landroid/animation/Keyframe;

    .line 290
    invoke-static {v3, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    aput-object v3, v4, v19

    .line 291
    invoke-static {v5, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    aput-object v3, v4, v27

    iget v3, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerMaxRadius:F

    .line 292
    invoke-static {v6, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v4, v5

    iget v3, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerMinRadius:F

    .line 293
    invoke-static {v13, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v4, v5

    iget v3, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerEndRadius:F

    const/high16 v5, 0x3f800000    # 1.0f

    .line 294
    invoke-static {v5, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    const/4 v5, 0x4

    aput-object v3, v4, v5

    .line 289
    invoke-static {v7, v4}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 296
    :goto_2
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checked anim, keyframeCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v4, v34

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mEndColor:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v5, v26

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v6, v24

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x3dcccccd    # 0.1f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v10, v23

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerEndRadius:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v13, v21

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v20

    invoke-static {v3, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v5, v18

    move/from16 v3, v29

    move/from16 v7, v30

    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_8
    move/from16 v33, v4

    move/from16 v32, v5

    move/from16 v31, v6

    move-object v4, v13

    move-object/from16 v3, v20

    move-object/from16 v13, v21

    move-object/from16 v10, v23

    move-object/from16 v6, v24

    move-object/from16 v5, v26

    .line 302
    iput v0, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStrokeColor:I

    .line 303
    iget v14, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStartColor:I

    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v14

    sub-int v14, v14, v33

    move/from16 v20, v14

    .line 304
    iget v14, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStartColor:I

    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v14

    sub-int v14, v14, v32

    move/from16 v21, v14

    .line 305
    iget v14, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStartColor:I

    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    sub-int v14, v14, v31

    const v23, 0x3e2aaaab

    cmpl-float v24, p4, v23

    if-lez v24, :cond_9

    move/from16 v24, v14

    .line 309
    iget-object v14, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedOuter:Landroid/graphics/Path;

    invoke-virtual {v14}, Landroid/graphics/Path;->reset()V

    .line 310
    iget-object v14, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedOuter:Landroid/graphics/Path;

    move-object/from16 v26, v3

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object/from16 v25, v10

    move-object/from16 v29, v13

    const/4 v10, 0x0

    const v13, 0x3dcccccd    # 0.1f

    invoke-virtual {v14, v10, v10, v13, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    const/4 v3, 0x2

    goto :goto_3

    :cond_9
    move-object/from16 v26, v3

    move-object/from16 v25, v10

    move-object/from16 v29, v13

    move/from16 v24, v14

    const/4 v3, 0x1

    :goto_3
    const v10, 0x3ebbbbbc

    cmpl-float v10, p4, v10

    if-lez v10, :cond_a

    add-int/lit8 v3, v3, 0x1

    :cond_a
    const v10, 0x3f111111

    cmpl-float v10, p4, v10

    if-lez v10, :cond_b

    add-int/lit8 v3, v3, 0x1

    :cond_b
    const v10, 0x3f444444

    cmpl-float v10, p4, v10

    if-lez v10, :cond_c

    add-int/lit8 v3, v3, 0x1

    :cond_c
    const/4 v10, 0x5

    if-ne v3, v10, :cond_d

    sub-float v13, p4, v23

    sub-float v13, v13, v27

    sub-float v13, v13, v27

    sub-float v13, v13, v27

    div-float v13, v13, p4

    div-float v27, v27, p4

    add-float v14, v27, v13

    move-object/from16 v22, v6

    add-float v6, v27, v14

    move-object/from16 v30, v5

    add-float v5, v27, v6

    new-array v10, v10, [Landroid/animation/Keyframe;

    move-object/from16 v34, v4

    const/4 v4, 0x0

    .line 329
    invoke-static {v4, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v17

    const/16 v23, 0x0

    aput-object v17, v10, v23

    iget v4, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerMinRadius:F

    .line 330
    invoke-static {v13, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const/4 v13, 0x1

    aput-object v4, v10, v13

    iget v4, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerMaxRadius:F

    .line 331
    invoke-static {v14, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const/4 v13, 0x2

    aput-object v4, v10, v13

    const/4 v4, 0x0

    .line 332
    invoke-static {v6, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v10, v14

    const/high16 v13, 0x3f800000    # 1.0f

    .line 333
    invoke-static {v13, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v14

    const/4 v13, 0x4

    aput-object v14, v10, v13

    .line 328
    invoke-static {v7, v10}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 334
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v7, v13, [Landroid/animation/Keyframe;

    .line 337
    invoke-static {v4, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    const/4 v4, 0x0

    aput-object v10, v7, v4

    .line 338
    invoke-static {v6, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v7, v6

    iget v4, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    .line 339
    invoke-static {v5, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v7, v6

    iget v4, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    const/high16 v10, 0x3f800000    # 1.0f

    .line 340
    invoke-static {v10, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const/4 v10, 0x3

    aput-object v4, v7, v10

    .line 336
    invoke-static {v12, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 341
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v4, v10, [Landroid/animation/Keyframe;

    const/4 v7, 0x0

    aput-object v19, v4, v7

    const/4 v7, 0x0

    .line 345
    invoke-static {v5, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    aput-object v18, v4, v6

    .line 343
    invoke-static {v15, v4}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    goto/16 :goto_4

    :cond_d
    move-object/from16 v34, v4

    move-object/from16 v30, v5

    move-object/from16 v22, v6

    const/4 v4, 0x4

    if-ne v3, v4, :cond_e

    sub-float v5, p4, v23

    sub-float v5, v5, v27

    sub-float v5, v5, v27

    div-float v5, v5, p4

    div-float v27, v27, p4

    add-float v6, v27, v5

    add-float v10, v27, v6

    new-array v13, v4, [Landroid/animation/Keyframe;

    const/4 v4, 0x0

    .line 353
    invoke-static {v4, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v14

    const/16 v17, 0x0

    aput-object v14, v13, v17

    iget v14, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerMaxRadius:F

    .line 354
    invoke-static {v5, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    const/4 v14, 0x1

    aput-object v5, v13, v14

    .line 355
    invoke-static {v6, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    const/16 v17, 0x2

    aput-object v5, v13, v17

    const/high16 v5, 0x3f800000    # 1.0f

    .line 356
    invoke-static {v5, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v17

    const/4 v5, 0x3

    aput-object v17, v13, v5

    .line 352
    invoke-static {v7, v13}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 357
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Keyframe;

    .line 360
    invoke-static {v4, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    const/4 v4, 0x0

    aput-object v7, v5, v4

    .line 361
    invoke-static {v6, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    aput-object v4, v5, v14

    iget v4, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    .line 362
    invoke-static {v10, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v5, v6

    iget v4, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    const/high16 v7, 0x3f800000    # 1.0f

    .line 363
    invoke-static {v7, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const/4 v13, 0x3

    aput-object v4, v5, v13

    .line 359
    invoke-static {v12, v5}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 364
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v4, v13, [Landroid/animation/Keyframe;

    const/4 v5, 0x0

    aput-object v19, v4, v5

    const/4 v5, 0x0

    .line 368
    invoke-static {v10, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    aput-object v18, v4, v6

    .line 366
    invoke-static {v15, v4}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    goto/16 :goto_4

    :cond_e
    const/4 v13, 0x3

    if-ne v3, v13, :cond_f

    sub-float v4, p4, v23

    sub-float v4, v4, v27

    div-float v4, v4, p4

    div-float v27, v27, p4

    add-float v5, v27, v4

    new-array v6, v13, [Landroid/animation/Keyframe;

    const/4 v10, 0x0

    .line 375
    invoke-static {v10, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v6, v14

    .line 376
    invoke-static {v4, v10}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v13

    const/16 v23, 0x1

    aput-object v13, v6, v23

    const/high16 v13, 0x3f800000    # 1.0f

    .line 377
    invoke-static {v13, v10}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v17

    const/4 v13, 0x2

    aput-object v17, v6, v13

    .line 374
    invoke-static {v7, v6}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 378
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Keyframe;

    .line 381
    invoke-static {v10, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    aput-object v7, v6, v14

    .line 382
    invoke-static {v4, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    aput-object v4, v6, v23

    iget v4, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    .line 383
    invoke-static {v5, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    aput-object v4, v6, v13

    iget v4, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    const/high16 v7, 0x3f800000    # 1.0f

    .line 384
    invoke-static {v7, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v6, v7

    .line 380
    invoke-static {v12, v6}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 385
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v4, v7, [Landroid/animation/Keyframe;

    const/4 v6, 0x0

    aput-object v19, v4, v6

    const/4 v10, 0x0

    .line 389
    invoke-static {v5, v10}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    aput-object v18, v4, v13

    .line 387
    invoke-static {v15, v4}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    goto :goto_4

    :cond_f
    move v7, v13

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x2

    if-ne v3, v13, :cond_10

    sub-float v4, p4, v23

    div-float v4, v4, p4

    new-array v5, v7, [Landroid/animation/Keyframe;

    .line 395
    invoke-static {v10, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v14

    aput-object v14, v5, v6

    iget v10, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    .line 396
    invoke-static {v4, v10}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    const/4 v14, 0x1

    aput-object v10, v5, v14

    iget v10, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    const/high16 v14, 0x3f800000    # 1.0f

    .line 397
    invoke-static {v14, v10}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    aput-object v10, v5, v13

    .line 394
    invoke-static {v12, v5}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 398
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v5, v7, [Landroid/animation/Keyframe;

    aput-object v19, v5, v6

    const/4 v7, 0x0

    .line 402
    invoke-static {v4, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v5, v7

    aput-object v18, v5, v13

    .line 400
    invoke-static {v15, v5}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    goto :goto_4

    :cond_10
    const/4 v7, 0x1

    new-array v4, v13, [Landroid/animation/Keyframe;

    aput-object v19, v4, v6

    aput-object v18, v4, v7

    .line 405
    invoke-static {v15, v4}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 407
    :goto_4
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unchecked anim, keyframeCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStartColor:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v1, v25

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v1, v29

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v26

    invoke-static {v2, v1}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v3, v20

    move/from16 v5, v21

    move/from16 v7, v24

    .line 414
    :goto_5
    iget-object v1, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 416
    iget-object v0, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x43fa0000    # 500.0f

    mul-float v1, v1, p4

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 417
    new-instance v9, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v2, v33

    move/from16 v4, v32

    move/from16 v6, v31

    invoke-direct/range {v0 .. v7}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$1;-><init>(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;IIIIII)V

    .line 452
    iget-object v0, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 453
    iget-object v0, v8, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$2;

    invoke-direct {v1, v8, v9}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable$2;-><init>(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private setAnimParams(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)V
    .locals 3

    .line 195
    iget v0, p1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStrokeColor:I

    iget v1, p1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterRadius:F

    iget v2, p1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerRadius:F

    iget p1, p1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mExecFraction:F

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->setAnimParams(IFFF)V

    return-void
.end method

.method private setBitmap()V
    .locals 8

    .line 110
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$drawable;->os_radio_drawable_start_unchecked:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    iget v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStartColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 116
    invoke-static {v0}, Lcom/transsion/widgetslib/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mNormalBitmap:Landroid/graphics/Bitmap;

    .line 117
    sget-object v0, Lcom/transsion/widgetslib/view/OSRadioButton;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBitmap, width--height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 119
    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    int-to-float v4, v1

    div-float/2addr v4, v3

    .line 123
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v5, 0x1

    const/high16 v6, 0x40400000    # 3.0f

    .line 124
    iget-object v7, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    sub-float/2addr v3, v5

    iput v3, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    .line 126
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mCheckedBitmap:Landroid/graphics/Bitmap;

    .line 127
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mCheckedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 128
    new-instance v1, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 129
    iget v3, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mEndColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget v3, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 132
    iget v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerMaxRadius:F

    const v1, 0x3ee66666    # 0.45f

    mul-float/2addr v1, v0

    .line 133
    iput v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerMinRadius:F

    const v1, 0x3f0ccccd    # 0.55f

    mul-float/2addr v0, v1

    .line 134
    iput v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerEndRadius:F

    return-void
.end method

.method private setChecked(Z)V
    .locals 6

    .line 94
    iput-boolean p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mChecked:Z

    if-eqz p1, :cond_0

    .line 96
    iget v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mEndColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStartColor:I

    :goto_0
    iput v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStrokeColor:I

    const v0, 0x3dcccccd    # 0.1f

    if-eqz p1, :cond_1

    move v1, v0

    goto :goto_1

    .line 97
    :cond_1
    iget v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    :goto_1
    iput v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterRadius:F

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 98
    iget v2, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerEndRadius:F

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput v2, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerRadius:F

    .line 99
    sget-object v2, Lcom/transsion/widgetslib/view/OSRadioButton;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setChecked, mStrokeColor-mStartColor-mEndColor: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStrokeColor:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")-("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStartColor:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mEndColor:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "), checked: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", this: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setChecked, mOuterRadius-mStartRadius-mEndRadius: ("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterRadius:F

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setChecked, mInnerRadius-mStartRadius-mEndRadius: ("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerRadius:F

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterStartRadius:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedOuter:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 104
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedOuter:Landroid/graphics/Path;

    iget v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mOuterRadius:F

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 105
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedInner:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 106
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedInner:Landroid/graphics/Path;

    iget p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mInnerRadius:F

    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v1, v1, p0, v0}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 162
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mNormalBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mCheckedBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 168
    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mRectF:Landroid/graphics/RectF;

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

    .line 170
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mNormalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 184
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mRectF:Landroid/graphics/RectF;

    const/16 v1, 0x1f

    invoke-virtual {p1, v0, v3, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    .line 185
    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedOuter:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 186
    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mCheckedBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 188
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mPathCheckedInner:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 p0, -0x1

    .line 189
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 191
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mNormalBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_ctm_radio_btn_wh:I

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

    .line 157
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mNormalBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_ctm_radio_btn_wh:I

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

    .line 483
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

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

    .line 467
    instance-of v0, p1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    if-eqz v0, :cond_0

    .line 468
    invoke-interface {p1}, Lcom/transsion/widgetslib/drawable/ReversibleDrawable;->stop()V

    .line 469
    check-cast p1, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->setAnimParams(Lcom/transsion/widgetslib/drawable/OSRadioDrawable;)V

    .line 470
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 476
    invoke-virtual {p0}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

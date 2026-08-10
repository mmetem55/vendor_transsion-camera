.class public Lcom/transsion/camera/ui/setting/eyedetection/EyeBackground;
.super Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;
.source "EyeBackground.java"


# instance fields
.field mLinePaint:Landroid/graphics/Paint;

.field private final mStrokeWidth:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V
    .locals 3

    .line 28
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;-><init>(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701d5

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeBackground;->mStrokeWidth:I

    .line 32
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    int-to-float v2, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeBackground;->mLinePaint:Landroid/graphics/Paint;

    .line 36
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeBackground;->mLinePaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 36

    move-object/from16 v0, p0

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->getWidth()I

    move-result v1

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->getHeight()I

    move-result v2

    .line 44
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 45
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    .line 46
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    .line 47
    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15}, Landroid/graphics/RectF;-><init>()V

    if-lez v1, :cond_1

    if-gtz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v14, v1, v3

    int-to-float v2, v2

    div-float v13, v2, v3

    .line 56
    iget v5, v0, Lcom/transsion/camera/ui/setting/eyedetection/EyeBackground;->mStrokeWidth:I

    mul-int/lit8 v6, v5, 0x2

    int-to-float v12, v6

    mul-float v18, v12, v3

    sub-float/2addr v2, v12

    const/high16 v19, 0x41200000    # 10.0f

    div-float v20, v2, v19

    int-to-float v6, v5

    div-float v10, v6, v3

    .line 62
    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    int-to-float v5, v5

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    add-float v8, v20, v10

    mul-float v5, v14, v3

    const/high16 v27, 0x40a00000    # 5.0f

    div-float v16, v5, v27

    .line 65
    iget v5, v0, Lcom/transsion/camera/ui/setting/eyedetection/EyeBackground;->mStrokeWidth:I

    int-to-float v6, v5

    add-float v6, v16, v6

    mul-float/2addr v3, v13

    div-float v17, v3, v27

    add-float v21, v17, v20

    int-to-float v3, v5

    add-float v3, v21, v3

    invoke-virtual {v4, v10, v8, v6, v3}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v5, 0x43340000    # 180.0f

    const/high16 v6, 0x42b40000    # 90.0f

    const/4 v7, 0x0

    .line 66
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v3

    move-object/from16 v3, p1

    move/from16 v23, v14

    move v14, v8

    move-object/from16 v8, v22

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    sub-float v3, v1, v16

    .line 68
    iget v4, v0, Lcom/transsion/camera/ui/setting/eyedetection/EyeBackground;->mStrokeWidth:I

    int-to-float v5, v4

    sub-float v5, v3, v5

    sub-float v8, v1, v10

    int-to-float v4, v4

    add-float v4, v21, v4

    invoke-virtual {v9, v5, v14, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v7, 0x43870000    # 270.0f

    const/high16 v4, 0x42b40000    # 90.0f

    const/16 v21, 0x0

    .line 69
    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move-object/from16 v22, v6

    move-object v6, v9

    move v9, v8

    move v8, v4

    move v4, v9

    move/from16 v9, v21

    move/from16 v21, v14

    move v14, v10

    move-object/from16 v10, v22

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/high16 v5, 0x41100000    # 9.0f

    mul-float/2addr v5, v2

    div-float v5, v5, v19

    sub-float v6, v5, v14

    sub-float v7, v6, v17

    .line 71
    iget v8, v0, Lcom/transsion/camera/ui/setting/eyedetection/EyeBackground;->mStrokeWidth:I

    int-to-float v9, v8

    sub-float v9, v7, v9

    int-to-float v8, v8

    add-float v8, v16, v8

    invoke-virtual {v11, v14, v9, v8, v6}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v8, 0x42b40000    # 90.0f

    const/high16 v9, 0x42b40000    # 90.0f

    const/16 v16, 0x0

    .line 72
    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v10

    move-object/from16 v10, p1

    move/from16 v28, v12

    move v12, v8

    move v8, v13

    move v13, v9

    move/from16 v34, v14

    move/from16 v29, v21

    move/from16 v9, v23

    move/from16 v14, v16

    move/from16 v35, v5

    move-object v5, v15

    move-object/from16 v15, v17

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 74
    iget v10, v0, Lcom/transsion/camera/ui/setting/eyedetection/EyeBackground;->mStrokeWidth:I

    int-to-float v11, v10

    sub-float/2addr v3, v11

    int-to-float v10, v10

    sub-float/2addr v7, v10

    invoke-virtual {v5, v3, v7, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v14, 0x0

    const/high16 v15, 0x42b40000    # 90.0f

    .line 75
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object v13, v5

    move-object/from16 v17, v3

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    div-float v14, v9, v27

    add-float v3, v14, v34

    sub-float v5, v1, v18

    const/high16 v7, 0x40800000    # 4.0f

    div-float v10, v5, v7

    add-float v10, v28, v10

    .line 78
    iget-object v11, v0, Lcom/transsion/camera/ui/setting/eyedetection/EyeBackground;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v21, p1

    move/from16 v22, v3

    move/from16 v23, v29

    move/from16 v24, v10

    move/from16 v25, v29

    move-object/from16 v26, v11

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    div-float v13, v8, v27

    add-float v20, v20, v13

    add-float v30, v20, v34

    const/high16 v11, 0x40400000    # 3.0f

    mul-float v12, v2, v11

    div-float v32, v12, v19

    .line 80
    iget-object v12, v0, Lcom/transsion/camera/ui/setting/eyedetection/EyeBackground;->mLinePaint:Landroid/graphics/Paint;

    move/from16 v22, v34

    move/from16 v23, v30

    move/from16 v24, v34

    move/from16 v25, v32

    move-object/from16 v26, v12

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    mul-float/2addr v5, v11

    div-float/2addr v5, v7

    add-float v5, v5, v28

    sub-float/2addr v1, v14

    sub-float v1, v1, v34

    .line 83
    iget-object v7, v0, Lcom/transsion/camera/ui/setting/eyedetection/EyeBackground;->mLinePaint:Landroid/graphics/Paint;

    move/from16 v22, v5

    move/from16 v23, v29

    move/from16 v24, v1

    move/from16 v25, v29

    move-object/from16 v26, v7

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 85
    iget-object v7, v0, Lcom/transsion/camera/ui/setting/eyedetection/EyeBackground;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v28, p1

    move/from16 v29, v4

    move/from16 v31, v4

    move-object/from16 v33, v7

    invoke-virtual/range {v28 .. v33}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 89
    iget-object v7, v0, Lcom/transsion/camera/ui/setting/eyedetection/EyeBackground;->mLinePaint:Landroid/graphics/Paint;

    move/from16 v29, v3

    move/from16 v30, v6

    move/from16 v31, v10

    move/from16 v32, v6

    move-object/from16 v33, v7

    invoke-virtual/range {v28 .. v33}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v23, v6, v13

    const/high16 v3, 0x40e00000    # 7.0f

    mul-float/2addr v2, v3

    div-float v2, v2, v19

    .line 91
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/eyedetection/EyeBackground;->mLinePaint:Landroid/graphics/Paint;

    move/from16 v22, v34

    move/from16 v24, v34

    move/from16 v25, v2

    move-object/from16 v26, v3

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 94
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/eyedetection/EyeBackground;->mLinePaint:Landroid/graphics/Paint;

    move/from16 v29, v5

    move/from16 v31, v1

    move-object/from16 v33, v3

    invoke-virtual/range {v28 .. v33}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v5, v35, v13

    sub-float v32, v5, v34

    .line 96
    iget-object v0, v0, Lcom/transsion/camera/ui/setting/eyedetection/EyeBackground;->mLinePaint:Landroid/graphics/Paint;

    move/from16 v29, v4

    move/from16 v30, v2

    move/from16 v31, v4

    move-object/from16 v33, v0

    invoke-virtual/range {v28 .. v33}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    neg-float v0, v9

    neg-float v1, v8

    move-object/from16 v2, p1

    .line 99
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    :goto_0
    return-void
.end method

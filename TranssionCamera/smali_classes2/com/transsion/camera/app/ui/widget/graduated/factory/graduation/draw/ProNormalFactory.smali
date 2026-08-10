.class public Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;
.super Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;
.source "ProNormalFactory.java"


# instance fields
.field private final mCursorTextSize:I

.field private final mGraduationColor:I

.field private final mMinorInterval:I

.field private final mOffsetOfCursorAndText:I

.field private final mSlaveMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

.field private maxGraduationCount:I

.field private middleGraduationIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V
    .locals 19

    move-object/from16 v0, p0

    .line 50
    invoke-direct/range {p0 .. p2}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    const/16 v1, 0x13

    .line 38
    iput v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->maxGraduationCount:I

    const/16 v1, 0xa

    .line 39
    iput v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->middleGraduationIndex:I

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "max_graduation_count"

    move-object/from16 v3, p1

    .line 52
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-lez v2, :cond_0

    .line 54
    iput v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->maxGraduationCount:I

    .line 55
    div-int/2addr v2, v3

    iput v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->middleGraduationIndex:I

    .line 57
    :cond_0
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pro_graduation_interval:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mInterval:I

    .line 58
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pro_minor_graduation_interval:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mMinorInterval:I

    .line 60
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pro_major_graduation_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 61
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pro_major_graduation_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 62
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pro_slave_major_graduation_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 63
    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pro_slave_major_graduation_height:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 65
    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pro_minor_graduation_width:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 66
    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pro_minor_graduation_height:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 68
    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->default_stroke_border:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 70
    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_major_graduation_color:I

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v9

    .line 71
    invoke-virtual {v1, v4, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v12

    .line 72
    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->pro_minor_graduation_color:I

    invoke-virtual {v1, v4, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v16

    .line 73
    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_stroke_border_color:I

    invoke-virtual {v1, v4, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v17

    .line 74
    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->pro_stroke_border_color:I

    invoke-virtual {v1, v4, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v11

    .line 75
    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->graduation_and_text_offset:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    div-int/lit8 v8, v6, 0x2

    add-int/2addr v4, v8

    iput v4, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mOffsetOfCursorAndText:I

    .line 76
    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->graduation_text_size:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mCursorTextSize:I

    .line 77
    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->pro_graduation_text_color:I

    invoke-virtual {v1, v4, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mGraduationColor:I

    .line 79
    new-instance v1, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v1, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mPaint:Landroid/graphics/Paint;

    .line 80
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->pro_item_view_shadow_color:I

    invoke-virtual {v8, v3, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7, v7, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 83
    new-instance v1, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    move-object v4, v1

    move v7, v15

    const/4 v3, 0x1

    move v8, v11

    invoke-direct/range {v4 .. v9}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;-><init>(IIIII)V

    iput-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    const/4 v4, 0x2

    .line 86
    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->setShapeType(I)V

    .line 87
    new-instance v1, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    move-object v7, v1

    move v8, v2

    move v9, v10

    move v10, v15

    invoke-direct/range {v7 .. v12}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;-><init>(IIIII)V

    iput-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mSlaveMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    .line 90
    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->setShapeType(I)V

    .line 91
    new-instance v1, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    move-object v11, v1

    move v12, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v17

    invoke-direct/range {v11 .. v16}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;-><init>(IIIII)V

    iput-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMinorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    .line 93
    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->setShapeType(I)V

    return-void
.end method

.method private isIndicatorMajor(I)Z
    .locals 5

    .line 400
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleTexts:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleDrawables:Ljava/util/List;

    if-nez v0, :cond_0

    return v1

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndependentCursorIndexList:Ljava/util/List;

    const/4 v2, 0x1

    if-nez v0, :cond_3

    if-eqz p1, :cond_1

    .line 405
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->middleGraduationIndex:I

    sub-int/2addr v0, v2

    if-eq p1, v0, :cond_1

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->maxGraduationCount:I

    sub-int/2addr p0, v2

    if-ne p1, p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    .line 407
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_5

    .line 409
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndependentCursorIndexList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p1, v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 414
    :cond_5
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndependentCursorIndexList:Ljava/util/List;

    sub-int/2addr v0, v2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    if-eq p1, v0, :cond_6

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->maxGraduationCount:I

    sub-int/2addr p0, v2

    if-ne p1, p0, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    return v1
.end method

.method private updateGraduationTextAndDrable(ILcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;)V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleTexts:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleTexts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 386
    invoke-interface {p2, v0}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;->setText(Ljava/lang/String;)V

    .line 387
    invoke-interface {p2, v1}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleDrawables:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 391
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleDrawables:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 393
    invoke-interface {p2, p0}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 394
    invoke-interface {p2, v1}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;->setText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected buildMajorIndexList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 275
    :goto_0
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->maxGraduationCount:I

    if-ge v1, v2, :cond_0

    .line 276
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected buildMajorIndexList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 284
    :goto_0
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->maxGraduationCount:I

    if-ge v2, v3, :cond_4

    if-nez p1, :cond_0

    .line 286
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 290
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v2, v3, :cond_2

    move v3, v1

    .line 291
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 292
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 293
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 298
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method protected buildValues()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 266
    :goto_0
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->maxGraduationCount:I

    if-ge v1, v2, :cond_0

    .line 267
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected createDefaultGraduation()Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .locals 2

    .line 260
    new-instance v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    invoke-direct {v0, v1, p0}, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;-><init>(Landroid/graphics/Paint;Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;)V

    return-object v0
.end method

.method protected createGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .locals 1

    .line 246
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isMajor(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->isIndicatorMajor(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 248
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    goto :goto_0

    .line 250
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mSlaveMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    goto :goto_0

    .line 253
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMinorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    .line 255
    :goto_0
    new-instance v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;-><init>(Landroid/graphics/Paint;Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;)V

    return-object v0
.end method

.method public createGraduations(Z)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->buildValues()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    .line 99
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndependentCursorIndexList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->buildMajorIndexList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mMajorIndex:Ljava/util/List;

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->buildMajorIndexList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mMajorIndex:Ljava/util/List;

    .line 104
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->reverseIfNeeded(Z)V

    .line 105
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mGraduations:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    const/4 v12, 0x2

    if-ge v5, v1, :cond_9

    .line 117
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->createGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object v13

    .line 118
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->getValue(I)I

    move-result v14

    iput v14, v13, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    .line 119
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isSelectable(I)Z

    move-result v14

    iput-boolean v14, v13, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mSelectable:Z

    .line 120
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->isVibrate(I)Z

    move-result v14

    iput-boolean v14, v13, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mVibrate:Z

    .line 121
    iget-boolean v14, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mLowLight:Z

    invoke-virtual {v0, v5, v14}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->getIndicator(IZ)Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    move-result-object v14

    iput-object v14, v13, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    if-eqz v14, :cond_1

    .line 123
    iget v15, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndicatorRotateDegree:I

    invoke-interface {v14, v15}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;->rotateIndicator(I)V

    .line 126
    :cond_1
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isMajor(I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 127
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->getRangeInternal(I)I

    move-result v10

    goto :goto_2

    .line 129
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->isUseSameInternal()Z

    move-result v14

    if-nez v14, :cond_3

    .line 130
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->getRangeInternal(I)I

    move-result v10

    .line 134
    :cond_3
    :goto_2
    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14}, Landroid/graphics/Point;-><init>()V

    .line 135
    iget v15, v13, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mWidth:I

    div-int/lit8 v16, v15, 0x2

    add-int v4, v7, v16

    iput v4, v14, Landroid/graphics/Point;->x:I

    .line 136
    iget v4, v13, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mHeight:I

    div-int/lit8 v3, v4, 0x2

    iput v3, v14, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v1, -0x1

    if-ne v5, v3, :cond_4

    add-int/2addr v7, v15

    goto :goto_3

    :cond_4
    add-int v3, v15, v10

    add-int/2addr v7, v3

    add-int/2addr v15, v10

    add-int/2addr v6, v15

    :goto_3
    if-ne v5, v12, :cond_5

    move v8, v7

    .line 148
    :cond_5
    iput-object v14, v13, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    if-ge v9, v4, :cond_6

    move v9, v4

    .line 154
    :cond_6
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mGraduations:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isMajor(I)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v5, :cond_7

    .line 158
    new-instance v3, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;

    invoke-direct {v3, v13}, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;-><init>(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 160
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 162
    :cond_7
    invoke-virtual {v11, v13}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->add(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 163
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :goto_4
    new-instance v11, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;

    invoke-direct {v11}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;-><init>()V

    move/from16 v3, p1

    .line 166
    invoke-virtual {v11, v3}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->reverse(Z)V

    .line 167
    invoke-virtual {v11, v13}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->setPreMajor(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    goto :goto_5

    :cond_8
    move/from16 v3, p1

    .line 169
    invoke-virtual {v11, v13}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->add(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 174
    :cond_9
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorMoveCount:I

    const/4 v3, 0x1

    if-le v1, v3, :cond_11

    sub-int/2addr v1, v3

    .line 178
    div-int/2addr v6, v1

    .line 179
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndependentCursorIndexList:Ljava/util/List;

    if-eqz v1, :cond_a

    .line 180
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int v4, v1, v8

    sub-int v4, v7, v4

    .line 181
    iget v5, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorMoveCount:I

    sub-int/2addr v5, v1

    sub-int/2addr v5, v3

    div-int v6, v4, v5

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    .line 184
    :goto_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 185
    :goto_7
    iget v14, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorMoveCount:I

    if-ge v5, v14, :cond_10

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->createDefaultGraduation()Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object v14

    .line 187
    iput v5, v14, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    .line 188
    iput-boolean v3, v14, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mSelectable:Z

    .line 189
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->isVibrate(I)Z

    move-result v15

    iput-boolean v15, v14, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mVibrate:Z

    const/4 v15, 0x0

    .line 190
    iput-object v15, v14, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    .line 192
    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    .line 193
    iget v3, v14, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mWidth:I

    div-int/lit8 v17, v3, 0x2

    add-int v12, v10, v17

    iput v12, v15, Landroid/graphics/Point;->x:I

    .line 194
    iget v12, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorMoveCount:I

    move-object/from16 v17, v11

    div-int/lit8 v11, v12, 0x2

    if-ne v5, v11, :cond_b

    div-int/lit8 v11, v7, 0x2

    if-le v11, v10, :cond_b

    .line 195
    iput v11, v15, Landroid/graphics/Point;->x:I

    move v10, v11

    .line 198
    :cond_b
    iget v11, v14, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mHeight:I

    const/16 v18, 0x2

    div-int/lit8 v11, v11, 0x2

    iput v11, v15, Landroid/graphics/Point;->y:I

    add-int/lit8 v12, v12, -0x2

    if-ne v5, v12, :cond_c

    sub-int v3, v7, v3

    move v10, v3

    goto :goto_8

    :cond_c
    if-ge v5, v1, :cond_d

    add-int/2addr v10, v8

    goto :goto_8

    :cond_d
    add-int/2addr v10, v6

    .line 208
    :goto_8
    iput-object v15, v14, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    .line 209
    iget v3, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mPauseIndependentIndex:I

    if-lez v3, :cond_e

    if-ne v5, v3, :cond_e

    move-object v11, v14

    goto :goto_9

    :cond_e
    move-object/from16 v11, v17

    :goto_9
    if-nez v5, :cond_f

    .line 214
    new-instance v3, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;

    invoke-direct {v3, v14}, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;-><init>(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 216
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 218
    :cond_f
    invoke-virtual {v13, v14}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->add(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 219
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :goto_a
    new-instance v13, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;

    invoke-direct {v13}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;-><init>()V

    .line 222
    invoke-virtual {v13, v14}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->setPreMajor(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    add-int/lit8 v5, v5, 0x1

    move/from16 v12, v18

    const/4 v3, 0x1

    goto :goto_7

    :cond_10
    move-object/from16 v17, v11

    .line 224
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setCursorRanges(Ljava/util/List;)V

    goto :goto_b

    :cond_11
    const/4 v11, 0x0

    .line 227
    :goto_b
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v1, v7}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setContentWidth(I)V

    .line 228
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v1, v9}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setContentHeight(I)V

    .line 229
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setRanges(Ljava/util/List;)V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->getAnimTranslateMax()I

    move-result v1

    .line 232
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    add-int/2addr v9, v1

    invoke-virtual {v2, v9}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setExceptedHeight(I)V

    .line 233
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setAnimTranslateMax(I)V

    .line 234
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->getAnimDistanceThreshold()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setAnimDistanceThreshold(I)V

    .line 235
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setPauseGraduation(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 236
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mPauseIndependentIndex:I

    if-lez v1, :cond_12

    .line 237
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v1, v11}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setPauseGraduation(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 240
    :cond_12
    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mGraduations:Ljava/util/List;

    return-object v0
.end method

.method protected getIndicator(IZ)Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;
    .locals 7

    .line 340
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleTexts:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleDrawables:Ljava/util/List;

    if-nez p2, :cond_0

    return-object v0

    .line 343
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndependentCursorIndexList:Ljava/util/List;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez p2, :cond_4

    if-eqz p1, :cond_1

    .line 344
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->middleGraduationIndex:I

    add-int/lit8 p2, p2, -0x1

    if-eq p1, p2, :cond_1

    iget p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->maxGraduationCount:I

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_a

    .line 345
    :cond_1
    new-instance v0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;

    iget p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mOffsetOfCursorAndText:I

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mGraduationColor:I

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mCursorTextSize:I

    invoke-direct {v0, p2, v3, v4, v1}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;-><init>(IIIF)V

    .line 347
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->middleGraduationIndex:I

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_2

    .line 348
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleTexts:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 349
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleTexts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 v2, p1, 0x2

    goto :goto_0

    .line 351
    :cond_2
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->maxGraduationCount:I

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_3

    .line 352
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleTexts:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 353
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleTexts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 v2, p1, -0x1

    .line 356
    :cond_3
    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->updateGraduationTextAndDrable(ILcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;)V

    goto :goto_3

    .line 359
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    move v3, v2

    :goto_1
    if-ge v3, p2, :cond_6

    .line 361
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndependentCursorIndexList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p1, v4, :cond_5

    .line 362
    new-instance v0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mOffsetOfCursorAndText:I

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mGraduationColor:I

    iget v6, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mCursorTextSize:I

    invoke-direct {v0, v4, v5, v6, v1}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;-><init>(IIIF)V

    .line 363
    invoke-direct {p0, v3, v0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->updateGraduationTextAndDrable(ILcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 367
    :cond_6
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndependentCursorIndexList:Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 p2, p2, 0x3

    if-eq p1, p2, :cond_7

    iget p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->maxGraduationCount:I

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_a

    .line 368
    :cond_7
    new-instance v0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;

    iget p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mOffsetOfCursorAndText:I

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mGraduationColor:I

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mCursorTextSize:I

    invoke-direct {v0, p2, v3, v4, v1}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;-><init>(IIIF)V

    .line 370
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->maxGraduationCount:I

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_8

    .line 371
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleTexts:Ljava/util/List;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 372
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleTexts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 v2, p1, -0x1

    goto :goto_2

    .line 375
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndependentCursorIndexList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 377
    :cond_9
    :goto_2
    invoke-direct {p0, v2, v0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->updateGraduationTextAndDrable(ILcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;)V

    :cond_a
    :goto_3
    return-object v0
.end method

.method protected getRangeInternal(I)I
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndependentCursorIndexList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 313
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mInterval:I

    return p0

    .line 316
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 318
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndependentCursorIndexList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 319
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mMinorInterval:I

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 322
    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isMajor(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 323
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mInterval:I

    return p0

    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 325
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isMajor(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 326
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mMinorInterval:I

    return p0

    :cond_4
    return v1
.end method

.method protected isUseSameInternal()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isVibrate(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.class public abstract Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;
.super Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;
.source "BaseDrawGraduationFactory.java"


# instance fields
.field protected mInterval:I

.field protected mMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

.field protected mMinorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

.field protected mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V
    .locals 10

    .line 38
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;-><init>(Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 43
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->default_graduation_interval:I

    .line 44
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mInterval:I

    .line 46
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->default_major_graduation_width:I

    .line 47
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 48
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->default_major_graduation_height:I

    .line 49
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 51
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->default_minor_graduation_width:I

    .line 52
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 53
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->default_minor_graduation_height:I

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 56
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->default_stroke_border:I

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 59
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_major_graduation_color:I

    const/4 v3, 0x0

    .line 60
    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    .line 61
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_minor_graduation_color:I

    .line 62
    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    .line 63
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_stroke_border_color:I

    .line 64
    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mPaint:Landroid/graphics/Paint;

    .line 67
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    new-instance v9, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    move-object v0, v9

    move v3, v7

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;-><init>(IIIII)V

    iput-object v9, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    .line 73
    new-instance v0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    move-object v3, v0

    move v4, p2

    move v5, v6

    move v6, v7

    move v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;-><init>(IIIII)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMinorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    return-void
.end method


# virtual methods
.method protected buildMajorIndexList(Ljava/util/List;)Ljava/util/List;
    .locals 0
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

    const/4 p0, 0x0

    return-object p0
.end method

.method protected createDefaultGraduation()Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .locals 2

    .line 87
    new-instance v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    invoke-direct {v0, v1, p0}, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;-><init>(Landroid/graphics/Paint;Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;)V

    return-object v0
.end method

.method protected createGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .locals 2

    .line 81
    new-instance v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mPaint:Landroid/graphics/Paint;

    .line 82
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isMajor(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMinorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    :goto_0
    invoke-direct {v0, v1, p0}, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;-><init>(Landroid/graphics/Paint;Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;)V

    return-object v0
.end method

.method protected getAnimDistanceThreshold()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mInterval:I

    mul-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mWidth:I

    add-int/2addr v0, p0

    return v0
.end method

.method protected getAnimTranslateMax()I
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mHeight:I

    return p0
.end method

.method protected getIndependentWidth()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getRangeInternal(I)I
    .locals 0

    .line 92
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mInterval:I

    return p0
.end method

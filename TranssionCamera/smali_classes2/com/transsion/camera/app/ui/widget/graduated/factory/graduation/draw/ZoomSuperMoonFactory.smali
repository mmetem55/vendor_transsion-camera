.class public Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomSuperMoonFactory;
.super Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseZoomFactory;
.source "ZoomSuperMoonFactory.java"


# instance fields
.field private final mGreyMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

.field private final mGreyMinorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

.field private final mIndicator:Landroid/graphics/drawable/Drawable;

.field private final mOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V
    .locals 6

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseZoomFactory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->super_moon_indicator_offset:I

    .line 45
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomSuperMoonFactory;->mOffset:I

    .line 46
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->super_moon_grey_graduation_color:I

    .line 47
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    .line 48
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_graduation_moon_indicator:I

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomSuperMoonFactory;->mIndicator:Landroid/graphics/drawable/Drawable;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->super_moon_graduation_interval:I

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mInterval:I

    .line 53
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mWidth:I

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mHeight:I

    iget v3, v0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mBorder:I

    iget v4, v0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mBorderColor:I

    move-object v0, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;-><init>(IIIII)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomSuperMoonFactory;->mGreyMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    .line 57
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMinorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mWidth:I

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mHeight:I

    iget v3, v0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mBorder:I

    iget v4, v0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mBorderColor:I

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;-><init>(IIIII)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomSuperMoonFactory;->mGreyMinorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

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

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Integer;

    .line 76
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    const/16 v2, 0x1f4

    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    const/16 v2, 0x9c4

    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    const/16 v2, 0xbb8

    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    const/16 v2, 0xdac

    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    const/16 v2, 0xfa0

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    const/16 v2, 0x1194

    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    const/16 v2, 0x1388

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    const/16 v2, 0x157c

    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    const/16 v1, 0x1770

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x8

    aput-object p0, v0, v1

    .line 76
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected buildValues()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x1f4

    :goto_0
    const/16 v1, 0x1770

    if-gt v0, v1, :cond_0

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x64

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method protected createGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    const/16 v1, 0x9c4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 97
    new-instance v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mPaint:Landroid/graphics/Paint;

    .line 98
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isMajor(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomSuperMoonFactory;->mGreyMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomSuperMoonFactory;->mGreyMinorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    :goto_0
    invoke-direct {v0, v1, p0}, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;-><init>(Landroid/graphics/Paint;Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;)V

    return-object v0

    .line 100
    :cond_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->createGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object p0

    return-object p0
.end method

.method protected getIndicator(IZ)Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    const/16 v1, 0x9c4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 106
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/indicator/SuperMoonIndicator;

    iget p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomSuperMoonFactory;->mOffset:I

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mInterval:I

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomSuperMoonFactory;->mIndicator:Landroid/graphics/drawable/Drawable;

    invoke-direct {p1, p2, v0, v1, p0}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/SuperMoonIndicator;-><init>(IILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;)V

    return-object p1

    .line 109
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->getIndicator(IZ)Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    move-result-object p0

    return-object p0
.end method

.method protected isVibrate(I)Z
    .locals 1

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    const/16 v0, 0x9c4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

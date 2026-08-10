.class public Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;
.super Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;
.source "PTMasterFactory.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected final border:I

.field protected borderColor:I

.field protected mCursorTextSize:I

.field protected mGraduationColor:I

.field protected mGraduationColorBlack:I

.field protected mMajorWidth:I

.field protected final mMinorHeight:I

.field protected mMinorWidth:I

.field protected mOffsetOfCursorAndText:I

.field protected final mResources:Landroid/content/res/Resources;

.field protected final majorHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PTMasterFactory"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V
    .locals 10

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    const/4 p2, 0x0

    .line 28
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->mMajorWidth:I

    .line 30
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->mMinorWidth:I

    .line 33
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->borderColor:I

    .line 34
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->mOffsetOfCursorAndText:I

    .line 35
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->mCursorTextSize:I

    .line 36
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->mGraduationColor:I

    .line 37
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->mGraduationColorBlack:I

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->mResources:Landroid/content/res/Resources;

    .line 43
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_middle_color:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 44
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pmaster_graduation_interval:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mInterval:I

    .line 46
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pmaster_major_graduation_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->mMajorWidth:I

    .line 47
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pmaster_major_graduation_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->majorHeight:I

    .line 48
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pmaster_minor_graduation_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->mMinorWidth:I

    .line 49
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pmaster_minor_graduation_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->mMinorHeight:I

    .line 51
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pmasterr_graduation_border:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->border:I

    .line 53
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->pmaster_major_graduation_color:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    .line 54
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->pmaster_minor_graduation_color:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v9

    .line 55
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_stroke_border_color:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->borderColor:I

    .line 57
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->graduation_and_text_offset:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v2, v3, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->mOffsetOfCursorAndText:I

    .line 58
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->graduation_text_size:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->mCursorTextSize:I

    .line 59
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->pro_graduation_text_color:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->mGraduationColor:I

    .line 60
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->pro_graduation_text_color_black:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->mGraduationColorBlack:I

    .line 62
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->mMajorWidth:I

    move-object v1, p1

    move v4, v7

    move v5, v6

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;-><init>(IIIII)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    .line 66
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->mMinorWidth:I

    move-object v4, p1

    move v6, p2

    move v8, v9

    invoke-direct/range {v4 .. v9}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;-><init>(IIIII)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMinorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    return-void
.end method


# virtual methods
.method protected buildMajorIndexList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
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

    .line 86
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method protected createGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .locals 0

    .line 81
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->createGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object p0

    return-object p0
.end method

.method public createGraduations(Z)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->buildValues()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    .line 148
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndependentCursorIndexList:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->buildMajorIndexList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mMajorIndex:Ljava/util/List;

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->buildMajorIndexList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mMajorIndex:Ljava/util/List;

    .line 152
    sget-object v2, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildMajorIndexList, mMajorIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v4, [Ljava/util/List;

    iget-object v7, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mMajorIndex:Ljava/util/List;

    aput-object v7, v6, v3

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->reverseIfNeeded(Z)V

    .line 155
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 163
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 164
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mGraduations:Ljava/util/List;

    move v7, v3

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    const/4 v13, 0x0

    :goto_1
    if-ge v7, v2, :cond_7

    .line 168
    invoke-virtual {v0, v7}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->createGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object v14

    .line 169
    invoke-virtual {v0, v7}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->getValue(I)I

    move-result v15

    iput v15, v14, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    .line 170
    invoke-virtual {v0, v7}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isSelectable(I)Z

    move-result v15

    iput-boolean v15, v14, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mSelectable:Z

    .line 171
    invoke-virtual {v0, v7}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isVibrate(I)Z

    move-result v15

    iput-boolean v15, v14, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mVibrate:Z

    .line 172
    iget-boolean v15, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mLowLight:Z

    invoke-virtual {v0, v7, v15}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->getIndicator(IZ)Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    move-result-object v15

    iput-object v15, v14, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    .line 174
    invoke-virtual {v0, v7}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isMajor(I)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 175
    invoke-virtual {v0, v9}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->getRangeInternal(I)I

    move-result v11

    add-int/lit8 v9, v9, 0x1

    :cond_1
    if-nez v7, :cond_2

    .line 180
    iget v10, v14, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mHeight:I

    div-int/lit8 v10, v10, 0x2

    .line 183
    :cond_2
    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    .line 184
    iget v3, v14, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mWidth:I

    div-int/lit8 v17, v3, 0x2

    add-int v6, v8, v17

    iput v6, v15, Landroid/graphics/Point;->x:I

    .line 185
    iput v10, v15, Landroid/graphics/Point;->y:I

    add-int/lit8 v6, v2, -0x1

    if-ne v7, v6, :cond_3

    goto :goto_2

    :cond_3
    add-int/2addr v3, v11

    :goto_2
    add-int/2addr v8, v3

    .line 193
    iput-object v15, v14, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    .line 195
    iget v3, v14, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mHeight:I

    if-ge v12, v3, :cond_4

    move v12, v3

    .line 199
    :cond_4
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mGraduations:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual {v0, v7}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isMajor(I)Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v7, :cond_5

    .line 203
    new-instance v3, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;

    invoke-direct {v3, v14}, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;-><init>(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 205
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 207
    :cond_5
    invoke-virtual {v13, v14}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->add(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 208
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :goto_3
    new-instance v13, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;

    invoke-direct {v13}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;-><init>()V

    .line 211
    invoke-virtual {v13, v1}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->reverse(Z)V

    .line 212
    invoke-virtual {v13, v14}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->setPreMajor(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    goto :goto_4

    .line 214
    :cond_6
    invoke-virtual {v13, v14}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->add(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    :goto_4
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    goto :goto_1

    .line 219
    :cond_7
    iget v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorMoveCount:I

    if-le v2, v4, :cond_e

    sub-int/2addr v2, v4

    .line 224
    div-int v2, v8, v2

    .line 225
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndependentCursorIndexList:Ljava/util/List;

    if-eqz v3, :cond_8

    .line 226
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->getIndependentWidth()I

    move-result v3

    mul-int/2addr v3, v2

    sub-int v3, v8, v3

    iget v6, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorMoveCount:I

    sub-int/2addr v6, v2

    sub-int/2addr v6, v4

    div-int/2addr v3, v6

    goto :goto_5

    :cond_8
    move v3, v2

    const/4 v2, 0x0

    .line 230
    :goto_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    .line 231
    :goto_6
    iget v11, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorMoveCount:I

    if-ge v7, v11, :cond_d

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->createDefaultGraduation()Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object v11

    .line 233
    iget-boolean v13, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mReversed:Z

    if-eqz v13, :cond_9

    iget v13, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorMoveCount:I

    sub-int/2addr v13, v4

    sub-int/2addr v13, v7

    goto :goto_7

    :cond_9
    move v13, v7

    :goto_7
    iput v13, v11, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    .line 234
    iput-boolean v4, v11, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mSelectable:Z

    .line 235
    invoke-virtual {v0, v7}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isVibrate(I)Z

    move-result v13

    iput-boolean v13, v11, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mVibrate:Z

    const/4 v13, 0x0

    .line 236
    iput-object v13, v11, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    .line 238
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    .line 239
    iget v14, v11, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mWidth:I

    div-int/lit8 v14, v14, 0x2

    add-int v14, v16, v14

    iput v14, v13, Landroid/graphics/Point;->x:I

    .line 240
    iget v14, v11, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mHeight:I

    div-int/lit8 v14, v14, 0x2

    iput v14, v13, Landroid/graphics/Point;->y:I

    if-ge v7, v2, :cond_a

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->getIndependentWidth()I

    move-result v14

    add-int v16, v16, v14

    goto :goto_8

    :cond_a
    add-int v16, v16, v3

    .line 246
    :goto_8
    iput-object v13, v11, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    .line 247
    iget v13, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mPauseIndependentIndex:I

    if-lez v13, :cond_b

    if-ne v7, v13, :cond_b

    move-object v9, v11

    :cond_b
    if-nez v7, :cond_c

    .line 252
    new-instance v10, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;

    invoke-direct {v10, v11}, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;-><init>(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 254
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 256
    :cond_c
    invoke-virtual {v10, v11}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->add(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 257
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    :goto_9
    new-instance v10, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;

    invoke-direct {v10}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;-><init>()V

    .line 260
    invoke-virtual {v10, v1}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->reverse(Z)V

    .line 261
    invoke-virtual {v10, v11}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->setPreMajor(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 263
    :cond_d
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v1, v6}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setCursorRanges(Ljava/util/List;)V

    goto :goto_a

    :cond_e
    const/4 v9, 0x0

    .line 266
    :goto_a
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v1, v8}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setContentWidth(I)V

    .line 267
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v1, v12}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setContentHeight(I)V

    .line 268
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v1, v5}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setRanges(Ljava/util/List;)V

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->getAnimTranslateMax()I

    move-result v1

    .line 271
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    add-int/2addr v12, v1

    invoke-virtual {v2, v12}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setExceptedHeight(I)V

    .line 272
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setAnimTranslateMax(I)V

    .line 273
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->getAnimDistanceThreshold()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setAnimDistanceThreshold(I)V

    .line 274
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setPauseGraduation(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 275
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mPauseIndependentIndex:I

    if-lez v1, :cond_f

    .line 276
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v1, v9}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setPauseGraduation(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 279
    :cond_f
    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mGraduations:Ljava/util/List;

    return-object v0
.end method

.method protected getBorderColor(IZ)I
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isMajor(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->pmaster_stroke_border_color_lowlight:I

    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    goto :goto_0

    .line 140
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_stroke_border_color:I

    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected getGraduationColor(IZ)I
    .locals 1

    .line 122
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isMajor(I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->pmaster_major_graduation_color_lowlight:I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    goto :goto_0

    .line 125
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->pmaster_major_graduation_color:I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->pmaster_minor_graduation_color_lowlight:I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    goto :goto_0

    .line 129
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->pmaster_minor_graduation_color:I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    :goto_0
    return p0
.end method

.method protected getIndicator(IZ)Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleTexts:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleDrawables:Ljava/util/List;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 112
    new-instance v1, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->mOffsetOfCursorAndText:I

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->mGraduationColorBlack:I

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->mGraduationColor:I

    :goto_0
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->mCursorTextSize:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v0, p2, v2, v3}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;-><init>(IIIF)V

    .line 113
    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;->updateGraduationTextAndDrable(ILcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;)V

    :cond_2
    return-object v1
.end method

.method protected updateGraduationTextAndDrable(ILcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleTexts:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 284
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleTexts:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 285
    invoke-interface {p2, p0}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;->setText(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 286
    invoke-interface {p2, p0}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

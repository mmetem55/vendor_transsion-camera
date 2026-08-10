.class public abstract Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseZoomFactory;
.super Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;
.source "BaseZoomFactory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    return-void
.end method


# virtual methods
.method public createGraduations(Z)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;",
            ">;"
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->buildValues()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    .line 37
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->buildMajorIndexList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mMajorIndex:Ljava/util/List;

    .line 38
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->reverseIfNeeded(Z)V

    .line 39
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move v6, v5

    move v7, v6

    move-object v8, v4

    move v4, v7

    :goto_0
    if-ge v3, v0, :cond_6

    .line 51
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->createGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object v9

    .line 52
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->getValue(I)I

    move-result v10

    iput v10, v9, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    .line 53
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isSelectable(I)Z

    move-result v10

    iput-boolean v10, v9, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mSelectable:Z

    .line 54
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isVibrate(I)Z

    move-result v10

    iput-boolean v10, v9, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mVibrate:Z

    .line 55
    iget-boolean v10, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mLowLight:Z

    invoke-virtual {p0, v3, v10}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->getIndicator(IZ)Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    move-result-object v10

    iput-object v10, v9, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    if-eqz v10, :cond_0

    .line 57
    iget v11, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndicatorRotateDegree:I

    invoke-interface {v10, v11}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;->rotateIndicator(I)V

    .line 60
    :cond_0
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isMajor(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 61
    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->getRangeInternal(I)I

    move-result v7

    add-int/lit8 v6, v6, 0x1

    .line 65
    :cond_1
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 66
    iget v11, v9, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mWidth:I

    div-int/lit8 v12, v11, 0x2

    add-int/2addr v12, v4

    iput v12, v10, Landroid/graphics/Point;->x:I

    .line 67
    iget v12, v9, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mHeight:I

    div-int/lit8 v13, v12, 0x2

    iput v13, v10, Landroid/graphics/Point;->y:I

    add-int/lit8 v13, v0, -0x1

    if-ne v3, v13, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr v11, v7

    :goto_1
    add-int/2addr v4, v11

    .line 75
    iput-object v10, v9, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    if-ge v5, v12, :cond_3

    move v5, v12

    .line 81
    :cond_3
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isMajor(I)Z

    move-result v10

    if-eqz v10, :cond_5

    if-nez v3, :cond_4

    .line 85
    new-instance v8, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;

    invoke-direct {v8, v9}, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;-><init>(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 87
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 89
    :cond_4
    invoke-virtual {v8, v9}, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->add(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 90
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :goto_2
    new-instance v8, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;

    invoke-direct {v8}, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;-><init>()V

    .line 93
    invoke-virtual {v8, p1}, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->reverse(Z)V

    .line 94
    invoke-virtual {v8, v9}, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->setLeftGraduation(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    goto :goto_3

    .line 96
    :cond_5
    invoke-virtual {v8, v9}, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->add(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setContentWidth(I)V

    .line 101
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {p1, v5}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setContentHeight(I)V

    .line 102
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setRanges(Ljava/util/List;)V

    .line 104
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->getAnimTranslateMax()I

    move-result p1

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    add-int/2addr v5, p1

    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setExceptedHeight(I)V

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setAnimTranslateMax(I)V

    .line 107
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->getAnimDistanceThreshold()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setAnimDistanceThreshold(I)V

    return-object v2
.end method

.method protected getBackLongFocusCameraMiniZoom()I
    .locals 1

    .line 114
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    .line 115
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 p0, 0xc8

    return p0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result p0

    return p0
.end method

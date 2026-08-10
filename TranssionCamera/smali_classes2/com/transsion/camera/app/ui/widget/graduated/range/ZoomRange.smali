.class public Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;
.super Ljava/lang/Object;
.source "ZoomRange.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/graduated/range/IRange;


# instance fields
.field private mCoordinateSlop:F

.field private mCoordinateThreshold:F

.field private final mGraduations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

.field private mMaxCoordinate:F

.field private mMaxValue:I

.field private mMinCoordinate:F

.field private mMinValue:I

.field private mOffsetX:I

.field private mOffsetY:I

.field private final mResultGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

.field private mReverse:Z

.field private mRightGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

.field private mValueSlop:F

.field private mValueThreshold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mGraduations:Ljava/util/List;

    .line 50
    new-instance v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/FakeGraduation;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/graduated/graduation/FakeGraduation;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mResultGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    return-void
.end method

.method private assignRange()V
    .locals 5

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mGraduations:Ljava/util/List;

    .line 84
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mRightGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    .line 85
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mLeftGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mMinCoordinate:F

    .line 86
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iput v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mMaxCoordinate:F

    .line 88
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mReverse:Z

    if-eqz v4, :cond_0

    .line 89
    iget v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mMinValue:I

    .line 90
    iget v0, v1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mMaxValue:I

    goto :goto_0

    .line 92
    :cond_0
    iget v1, v1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mMinValue:I

    .line 93
    iget v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mMaxValue:I

    .line 96
    :goto_0
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mMaxValue:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mMinValue:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr v3, v2

    div-float/2addr v0, v3

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mValueSlop:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 97
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mCoordinateSlop:F

    const/4 v0, 0x5

    .line 99
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mValueThreshold:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    .line 100
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mCoordinateThreshold:F

    return-void
.end method

.method private coordinateToGraduationNormal(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .locals 4

    int-to-float v0, p1

    .line 168
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mMinCoordinate:F

    cmpg-float v2, v0, v1

    if-lez v2, :cond_3

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mMaxCoordinate:F

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float v3, v0, v2

    if-gtz v3, :cond_1

    .line 172
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mCoordinateThreshold:F

    sub-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mRightGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    return-object p0

    .line 177
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mResultGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget-object v3, v2, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iput p1, v3, Landroid/graphics/Point;->x:I

    .line 178
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mValueSlop:F

    sub-float/2addr v0, v1

    mul-float/2addr p1, v0

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mMinValue:I

    int-to-float p0, p0

    add-float/2addr p1, p0

    float-to-int p0, p1

    iput p0, v2, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    .line 181
    rem-int/lit8 p1, p0, 0xa

    if-eqz p1, :cond_2

    sub-int/2addr p0, p1

    .line 183
    iput p0, v2, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    :cond_2
    return-object v2

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private coordinateToGraduationReverse(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .locals 4

    int-to-float v0, p1

    .line 191
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mMinCoordinate:F

    cmpg-float v2, v0, v1

    if-lez v2, :cond_3

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mMaxCoordinate:F

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float v3, v0, v2

    if-gtz v3, :cond_1

    .line 195
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mCoordinateThreshold:F

    sub-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mRightGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    return-object p0

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mResultGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget-object v3, v2, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iput p1, v3, Landroid/graphics/Point;->x:I

    .line 201
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mMaxValue:I

    int-to-float p1, p1

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mValueSlop:F

    sub-float/2addr v0, v1

    mul-float/2addr p0, v0

    sub-float/2addr p1, p0

    float-to-int p0, p1

    iput p0, v2, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    .line 204
    rem-int/lit8 p1, p0, 0xa

    if-eqz p1, :cond_2

    sub-int/2addr p0, p1

    .line 206
    iput p0, v2, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    :cond_2
    return-object v2

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private valueToGraduationNormal(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .locals 4

    .line 111
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mMinValue:I

    if-le p1, v0, :cond_3

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mMaxValue:I

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mValueThreshold:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_1

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mRightGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    return-object p0

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mResultGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iput p1, v1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    .line 120
    iget-object v2, v1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mCoordinateSlop:F

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float/2addr v3, p1

    iget p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mMinCoordinate:F

    add-float/2addr v3, p1

    float-to-int p1, v3

    iput p1, v2, Landroid/graphics/Point;->x:I

    .line 123
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mCoordinateThreshold:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_2

    .line 125
    rem-int p0, p1, p0

    if-eqz p0, :cond_2

    sub-int/2addr p1, p0

    .line 127
    iput p1, v2, Landroid/graphics/Point;->x:I

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private valueToGraduationReverse(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .locals 4

    .line 135
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mMinValue:I

    if-lt p1, v0, :cond_3

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mMaxValue:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mValueThreshold:I

    add-int/2addr v0, v2

    if-ge p1, v0, :cond_1

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mRightGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    return-object p0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mResultGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iput p1, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    .line 144
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mCoordinateSlop:F

    sub-int/2addr v1, p1

    int-to-float p1, v1

    mul-float/2addr v3, p1

    iget p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mMinCoordinate:F

    add-float/2addr v3, p1

    float-to-int p1, v3

    iput p1, v2, Landroid/graphics/Point;->x:I

    .line 147
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mCoordinateThreshold:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_2

    .line 149
    rem-int p0, p1, p0

    if-eqz p0, :cond_2

    sub-int/2addr p1, p0

    .line 151
    iput p1, v2, Landroid/graphics/Point;->x:I

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public add(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mGraduations:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public coordinateToGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mReverse:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->coordinateToGraduationReverse(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object p0

    goto :goto_0

    .line 163
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->coordinateToGraduationNormal(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public offset(II)V
    .locals 4

    .line 70
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mOffsetX:I

    if-nez v0, :cond_1

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mOffsetY:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    move v1, p2

    goto :goto_1

    :cond_1
    :goto_0
    sub-int v0, p1, v0

    .line 72
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mOffsetY:I

    sub-int v1, p2, v1

    .line 74
    :goto_1
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mGraduations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    .line 75
    invoke-virtual {v3, v0, v1}, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->offset(II)V

    goto :goto_2

    .line 77
    :cond_2
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mOffsetX:I

    .line 78
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mOffsetY:I

    .line 79
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->assignRange()V

    return-void
.end method

.method public reverse(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mReverse:Z

    return-void
.end method

.method public setLeftGraduation(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mLeftGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    return-void
.end method

.method public valueToGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->mReverse:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->valueToGraduationReverse(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object p0

    goto :goto_0

    .line 107
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->valueToGraduationNormal(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object p0

    :goto_0
    return-object p0
.end method

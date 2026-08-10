.class public Lcom/transsion/camera/app/ui/widget/graduated/range/Range;
.super Ljava/lang/Object;
.source "Range.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/graduated/range/IRange;


# instance fields
.field private final mGraduations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxCoordinate:F

.field private mMaxValue:I

.field private mMinCoordinate:F

.field private mMinValue:I

.field private mOffsetX:I

.field private mOffsetY:I

.field private mPreMajor:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

.field private mReverse:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mGraduations:Ljava/util/List;

    return-void
.end method

.method private assignRange()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mGraduations:Ljava/util/List;

    .line 71
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    .line 73
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mPreMajor:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget-object v2, v1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mMinCoordinate:F

    .line 74
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mMaxCoordinate:F

    .line 76
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mReverse:Z

    if-eqz v2, :cond_0

    .line 77
    iget v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mMinValue:I

    .line 78
    iget v0, v1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mMaxValue:I

    goto :goto_0

    .line 80
    :cond_0
    iget v1, v1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mMinValue:I

    .line 81
    iget v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mMaxValue:I

    :goto_0
    return-void
.end method

.method private valueToGraduationNormal(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .locals 4

    .line 93
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mMinValue:I

    if-le p1, v0, :cond_3

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mMaxValue:I

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mPreMajor:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 99
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mPreMajor:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mGraduations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    .line 101
    iget-boolean v3, v2, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mSelectable:Z

    if-nez v3, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    iget v3, v2, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v0, :cond_2

    move-object v1, v2

    move v0, v3

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private valueToGraduationReverse(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .locals 4

    .line 117
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mMinValue:I

    if-lt p1, v0, :cond_3

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mMaxValue:I

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mPreMajor:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 123
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mPreMajor:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mGraduations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    .line 125
    iget-boolean v3, v2, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mSelectable:Z

    if-nez v3, :cond_1

    goto :goto_0

    .line 128
    :cond_1
    iget v3, v2, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v0, :cond_2

    move-object v1, v2

    move v0, v3

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public add(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mGraduations:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public coordinateToGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .locals 4

    int-to-float v0, p1

    .line 144
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mMinCoordinate:F

    cmpg-float v1, v0, v1

    if-lez v1, :cond_3

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mMaxCoordinate:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_1

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mPreMajor:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 150
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mPreMajor:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mGraduations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    .line 152
    iget-boolean v3, v2, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mSelectable:Z

    if-nez v3, :cond_1

    goto :goto_0

    .line 155
    :cond_1
    iget-object v3, v2, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v0, :cond_2

    move-object v1, v2

    move v0, v3

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public offset(II)V
    .locals 4

    .line 56
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mOffsetX:I

    if-nez v0, :cond_1

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mOffsetY:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    move v1, p2

    goto :goto_1

    :cond_1
    :goto_0
    sub-int v0, p1, v0

    .line 58
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mOffsetY:I

    sub-int v1, p2, v1

    .line 60
    :goto_1
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mGraduations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    .line 61
    invoke-virtual {v3, v0, v1}, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->offset(II)V

    goto :goto_2

    .line 63
    :cond_2
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mOffsetX:I

    .line 64
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mOffsetY:I

    .line 66
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->assignRange()V

    return-void
.end method

.method public reverse(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mReverse:Z

    return-void
.end method

.method public setPreMajor(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mPreMajor:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    return-void
.end method

.method public valueToGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->mReverse:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->valueToGraduationReverse(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object p0

    goto :goto_0

    .line 89
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->valueToGraduationNormal(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object p0

    :goto_0
    return-object p0
.end method

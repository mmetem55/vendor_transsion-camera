.class public Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;
.super Ljava/lang/Object;
.source "PointAnimUtilHelper.java"


# static fields
.field public static CIRCLE_RADIU:F = 0.0f

.field public static CIRCLE_SPACING:I = 0x0

.field public static POINT_OFFSET:I = 0x0

.field public static final STATE_CHANGING:I = 0x4

.field public static final STATE_UNSELECTED:I = 0x1


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mDuration:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mLayoutDir:I

.field private mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/widgetslib/util/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mSelected:Z

.field private mStartTime:J

.field public mState:I

.field private final mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    .line 40
    iput v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mDuration:I

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mSelected:Z

    const/4 v0, 0x1

    .line 51
    iput v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mState:I

    .line 54
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mTargetView:Landroid/view/View;

    .line 55
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 57
    sget p1, Lcom/transsion/widgetslib/R$dimen;->os_overflowmenu_circle_radiu:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    sput p1, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->CIRCLE_RADIU:F

    .line 58
    sget p1, Lcom/transsion/widgetslib/R$dimen;->os_overflowmenu_circle_spacing:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    sput p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->CIRCLE_SPACING:I

    int-to-float p0, p0

    .line 59
    sget p1, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->CIRCLE_RADIU:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    add-float/2addr p0, p1

    float-to-int p0, p0

    sput p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->POINT_OFFSET:I

    return-void
.end method


# virtual methods
.method public initCirclePosition(Ljava/util/ArrayList;)V
    .locals 11

    .line 72
    iget v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mLayoutDir:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 73
    iget v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mCenterX:I

    sget v4, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->POINT_OFFSET:I

    add-int v5, v0, v4

    sub-int/2addr v0, v4

    .line 75
    new-instance v4, Lcom/transsion/widgetslib/util/Point;

    sget v6, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->CIRCLE_RADIU:F

    invoke-direct {v4, v5, v0, v6}, Lcom/transsion/widgetslib/util/Point;-><init>(IIF)V

    .line 77
    iget v6, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mCenterY:I

    .line 78
    new-instance v7, Lcom/transsion/widgetslib/util/Point;

    sget v8, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->CIRCLE_RADIU:F

    invoke-direct {v7, v5, v6, v8}, Lcom/transsion/widgetslib/util/Point;-><init>(IIF)V

    .line 80
    iget v8, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mCenterY:I

    sget v9, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->POINT_OFFSET:I

    add-int/2addr v8, v9

    .line 81
    new-instance v9, Lcom/transsion/widgetslib/util/Point;

    sget v10, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->CIRCLE_RADIU:F

    invoke-direct {v9, v5, v8, v10}, Lcom/transsion/widgetslib/util/Point;-><init>(IIF)V

    .line 82
    invoke-virtual {p1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 83
    invoke-virtual {p1, v2, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 84
    invoke-virtual {p1, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 85
    invoke-virtual {v4, v5, v0}, Lcom/transsion/widgetslib/util/Point;->setDestPos(II)V

    .line 86
    invoke-virtual {v7, v5, v6}, Lcom/transsion/widgetslib/util/Point;->setDestPos(II)V

    goto :goto_0

    .line 90
    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mCenterX:I

    sget v4, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->POINT_OFFSET:I

    sub-int v5, v0, v4

    sub-int/2addr v0, v4

    .line 92
    new-instance v4, Lcom/transsion/widgetslib/util/Point;

    sget v6, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->CIRCLE_RADIU:F

    invoke-direct {v4, v5, v0, v6}, Lcom/transsion/widgetslib/util/Point;-><init>(IIF)V

    .line 94
    iget v6, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mCenterY:I

    .line 95
    new-instance v7, Lcom/transsion/widgetslib/util/Point;

    sget v8, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->CIRCLE_RADIU:F

    invoke-direct {v7, v5, v6, v8}, Lcom/transsion/widgetslib/util/Point;-><init>(IIF)V

    .line 97
    iget v8, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mCenterY:I

    sget v9, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->POINT_OFFSET:I

    add-int/2addr v8, v9

    .line 98
    new-instance v9, Lcom/transsion/widgetslib/util/Point;

    sget v10, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->CIRCLE_RADIU:F

    invoke-direct {v9, v5, v8, v10}, Lcom/transsion/widgetslib/util/Point;-><init>(IIF)V

    .line 99
    invoke-virtual {p1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 100
    invoke-virtual {p1, v2, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 101
    invoke-virtual {p1, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 102
    invoke-virtual {v4, v5, v0}, Lcom/transsion/widgetslib/util/Point;->setDestPos(II)V

    .line 103
    invoke-virtual {v7, v5, v6}, Lcom/transsion/widgetslib/util/Point;->setDestPos(II)V

    .line 106
    :goto_0
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mPoints:Ljava/util/ArrayList;

    return-void
.end method

.method public setCetnerPosition(II)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mCenterX:I

    .line 68
    iput p2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mCenterY:I

    return-void
.end method

.method public setLayoutDir(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mLayoutDir:I

    return-void
.end method

.method public start(ZI)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mSelected:Z

    .line 112
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mStartTime:J

    const/4 p1, 0x4

    .line 113
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mState:I

    .line 114
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->update()V

    return-void
.end method

.method public update()V
    .locals 6

    .line 119
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 121
    iget-wide v2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mDuration:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 123
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 125
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    return-void

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mPoints:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/util/Point;

    .line 129
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mPoints:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/util/Point;

    .line 130
    iget v3, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mLayoutDir:I

    if-nez v3, :cond_2

    .line 131
    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mSelected:Z

    if-eqz v3, :cond_1

    .line 132
    iget v3, v1, Lcom/transsion/widgetslib/util/Point;->x1:I

    int-to-float v3, v3

    sget v4, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->POINT_OFFSET:I

    int-to-float v5, v4

    mul-float/2addr v5, v0

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v1, Lcom/transsion/widgetslib/util/Point;->x:I

    .line 133
    iget v3, v1, Lcom/transsion/widgetslib/util/Point;->y1:I

    int-to-float v3, v3

    int-to-float v5, v4

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v1, Lcom/transsion/widgetslib/util/Point;->y:I

    .line 134
    iget v1, v2, Lcom/transsion/widgetslib/util/Point;->x1:I

    int-to-float v1, v1

    mul-int/lit8 v3, v4, 0x2

    int-to-float v3, v3

    mul-float/2addr v3, v0

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v2, Lcom/transsion/widgetslib/util/Point;->x:I

    .line 135
    iget v1, v2, Lcom/transsion/widgetslib/util/Point;->y1:I

    int-to-float v1, v1

    int-to-float v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    float-to-int v0, v1

    iput v0, v2, Lcom/transsion/widgetslib/util/Point;->y:I

    goto/16 :goto_0

    .line 137
    :cond_1
    iget v3, v1, Lcom/transsion/widgetslib/util/Point;->x:I

    int-to-float v4, v3

    iget v5, v1, Lcom/transsion/widgetslib/util/Point;->x1:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    mul-float/2addr v3, v0

    add-float/2addr v4, v3

    float-to-int v3, v4

    iput v3, v1, Lcom/transsion/widgetslib/util/Point;->x:I

    .line 138
    iget v3, v1, Lcom/transsion/widgetslib/util/Point;->y:I

    int-to-float v4, v3

    iget v5, v1, Lcom/transsion/widgetslib/util/Point;->y1:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    mul-float/2addr v3, v0

    add-float/2addr v4, v3

    float-to-int v3, v4

    iput v3, v1, Lcom/transsion/widgetslib/util/Point;->y:I

    .line 139
    iget v1, v2, Lcom/transsion/widgetslib/util/Point;->x:I

    int-to-float v3, v1

    iget v4, v2, Lcom/transsion/widgetslib/util/Point;->x1:I

    sub-int/2addr v4, v1

    int-to-float v1, v4

    mul-float/2addr v1, v0

    add-float/2addr v3, v1

    float-to-int v1, v3

    iput v1, v2, Lcom/transsion/widgetslib/util/Point;->x:I

    .line 140
    iget v1, v2, Lcom/transsion/widgetslib/util/Point;->y:I

    int-to-float v3, v1

    iget v4, v2, Lcom/transsion/widgetslib/util/Point;->y1:I

    sub-int/2addr v4, v1

    int-to-float v1, v4

    mul-float/2addr v1, v0

    add-float/2addr v3, v1

    float-to-int v0, v3

    iput v0, v2, Lcom/transsion/widgetslib/util/Point;->y:I

    goto :goto_0

    .line 143
    :cond_2
    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mSelected:Z

    if-eqz v3, :cond_3

    .line 144
    iget v3, v1, Lcom/transsion/widgetslib/util/Point;->x1:I

    int-to-float v3, v3

    sget v4, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->POINT_OFFSET:I

    int-to-float v5, v4

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v1, Lcom/transsion/widgetslib/util/Point;->x:I

    .line 145
    iget v3, v1, Lcom/transsion/widgetslib/util/Point;->y1:I

    int-to-float v3, v3

    int-to-float v5, v4

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v1, Lcom/transsion/widgetslib/util/Point;->y:I

    .line 146
    iget v1, v2, Lcom/transsion/widgetslib/util/Point;->x1:I

    int-to-float v1, v1

    mul-int/lit8 v3, v4, 0x2

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v2, Lcom/transsion/widgetslib/util/Point;->x:I

    .line 147
    iget v1, v2, Lcom/transsion/widgetslib/util/Point;->y1:I

    int-to-float v1, v1

    int-to-float v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    float-to-int v0, v1

    iput v0, v2, Lcom/transsion/widgetslib/util/Point;->y:I

    goto :goto_0

    .line 149
    :cond_3
    iget v3, v1, Lcom/transsion/widgetslib/util/Point;->x:I

    int-to-float v4, v3

    iget v5, v1, Lcom/transsion/widgetslib/util/Point;->x1:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    mul-float/2addr v3, v0

    add-float/2addr v4, v3

    float-to-int v3, v4

    iput v3, v1, Lcom/transsion/widgetslib/util/Point;->x:I

    .line 150
    iget v3, v1, Lcom/transsion/widgetslib/util/Point;->y:I

    int-to-float v4, v3

    iget v5, v1, Lcom/transsion/widgetslib/util/Point;->y1:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    mul-float/2addr v3, v0

    add-float/2addr v4, v3

    float-to-int v3, v4

    iput v3, v1, Lcom/transsion/widgetslib/util/Point;->y:I

    .line 151
    iget v1, v2, Lcom/transsion/widgetslib/util/Point;->x:I

    int-to-float v3, v1

    iget v4, v2, Lcom/transsion/widgetslib/util/Point;->x1:I

    sub-int/2addr v4, v1

    int-to-float v1, v4

    mul-float/2addr v1, v0

    add-float/2addr v3, v1

    float-to-int v1, v3

    iput v1, v2, Lcom/transsion/widgetslib/util/Point;->x:I

    .line 152
    iget v1, v2, Lcom/transsion/widgetslib/util/Point;->y:I

    int-to-float v3, v1

    iget v4, v2, Lcom/transsion/widgetslib/util/Point;->y1:I

    sub-int/2addr v4, v1

    int-to-float v1, v4

    mul-float/2addr v1, v0

    add-float/2addr v3, v1

    float-to-int v0, v3

    iput v0, v2, Lcom/transsion/widgetslib/util/Point;->y:I

    .line 156
    :goto_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/PointAnimUtilHelper;->mTargetView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

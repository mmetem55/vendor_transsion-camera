.class public Lcom/transsion/widgetslib/util/PointAnimUtil;
.super Ljava/lang/Object;
.source "PointAnimUtil.java"


# static fields
.field public static CIRCLE_RADIU:F = 0.0f

.field public static CIRCLE_SPACING:I = 0x0

.field public static POINT_OFFSET:I = 0x0

.field public static final STATE_CHANGING:I = 0x4

.field public static final STATE_SELECTED:I = 0x2

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

.field private p0:Lcom/transsion/widgetslib/util/Point;

.field private p1:Lcom/transsion/widgetslib/util/Point;

.field private p2:Lcom/transsion/widgetslib/util/Point;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    .line 37
    iput v0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mDuration:I

    const/4 v0, 0x1

    .line 46
    iput v0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mState:I

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mSelected:Z

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mLayoutDir:I

    .line 57
    iput-object p1, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mTargetView:Landroid/view/View;

    .line 58
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 61
    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_overflowmenu_circle_radiu:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/transsion/widgetslib/util/PointAnimUtil;->CIRCLE_RADIU:F

    .line 62
    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_overflowmenu_circle_spacing:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    sput p1, Lcom/transsion/widgetslib/util/PointAnimUtil;->CIRCLE_SPACING:I

    int-to-float p1, p1

    .line 63
    sget v0, Lcom/transsion/widgetslib/util/PointAnimUtil;->CIRCLE_RADIU:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    float-to-int p1, p1

    sput p1, Lcom/transsion/widgetslib/util/PointAnimUtil;->POINT_OFFSET:I

    .line 65
    invoke-direct {p0}, Lcom/transsion/widgetslib/util/PointAnimUtil;->initPoint()V

    return-void
.end method

.method private initLTRPostion(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/widgetslib/util/Point;",
            ">;)V"
        }
    .end annotation

    .line 92
    iget v0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mCenterX:I

    sget v1, Lcom/transsion/widgetslib/util/PointAnimUtil;->POINT_OFFSET:I

    sub-int/2addr v0, v1

    .line 94
    iget-object v1, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->p0:Lcom/transsion/widgetslib/util/Point;

    sget v2, Lcom/transsion/widgetslib/util/PointAnimUtil;->CIRCLE_RADIU:F

    invoke-virtual {v1, v0, v0, v2}, Lcom/transsion/widgetslib/util/Point;->setStartPos(IIF)V

    .line 97
    iget v1, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mCenterY:I

    .line 98
    iget-object v2, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->p1:Lcom/transsion/widgetslib/util/Point;

    sget v3, Lcom/transsion/widgetslib/util/PointAnimUtil;->CIRCLE_RADIU:F

    invoke-virtual {v2, v0, v1, v3}, Lcom/transsion/widgetslib/util/Point;->setStartPos(IIF)V

    .line 101
    iget v2, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mCenterY:I

    sget v3, Lcom/transsion/widgetslib/util/PointAnimUtil;->POINT_OFFSET:I

    add-int/2addr v2, v3

    .line 102
    iget-object v3, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->p2:Lcom/transsion/widgetslib/util/Point;

    sget v4, Lcom/transsion/widgetslib/util/PointAnimUtil;->CIRCLE_RADIU:F

    invoke-virtual {v3, v0, v2, v4}, Lcom/transsion/widgetslib/util/Point;->setStartPos(IIF)V

    .line 104
    iget-object v3, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->p1:Lcom/transsion/widgetslib/util/Point;

    invoke-virtual {v3, v2, v0}, Lcom/transsion/widgetslib/util/Point;->setDestPos(II)V

    .line 105
    iget-object v0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->p2:Lcom/transsion/widgetslib/util/Point;

    invoke-virtual {v0, v1, v1}, Lcom/transsion/widgetslib/util/Point;->setDestPos(II)V

    .line 107
    iget-object v0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->p0:Lcom/transsion/widgetslib/util/Point;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->p1:Lcom/transsion/widgetslib/util/Point;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 109
    iget-object p0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->p2:Lcom/transsion/widgetslib/util/Point;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private initPoint()V
    .locals 1

    .line 73
    new-instance v0, Lcom/transsion/widgetslib/util/Point;

    invoke-direct {v0}, Lcom/transsion/widgetslib/util/Point;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->p0:Lcom/transsion/widgetslib/util/Point;

    .line 74
    new-instance v0, Lcom/transsion/widgetslib/util/Point;

    invoke-direct {v0}, Lcom/transsion/widgetslib/util/Point;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->p1:Lcom/transsion/widgetslib/util/Point;

    .line 75
    new-instance v0, Lcom/transsion/widgetslib/util/Point;

    invoke-direct {v0}, Lcom/transsion/widgetslib/util/Point;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->p2:Lcom/transsion/widgetslib/util/Point;

    return-void
.end method

.method private initRTLPosition(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/widgetslib/util/Point;",
            ">;)V"
        }
    .end annotation

    .line 113
    iget v0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mCenterX:I

    sget v1, Lcom/transsion/widgetslib/util/PointAnimUtil;->POINT_OFFSET:I

    add-int/2addr v0, v1

    .line 114
    iget v2, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mCenterY:I

    sub-int/2addr v2, v1

    .line 115
    iget-object v1, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->p0:Lcom/transsion/widgetslib/util/Point;

    sget v3, Lcom/transsion/widgetslib/util/PointAnimUtil;->CIRCLE_RADIU:F

    invoke-virtual {v1, v0, v2, v3}, Lcom/transsion/widgetslib/util/Point;->setStartPos(IIF)V

    .line 118
    iget v1, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mCenterY:I

    .line 119
    iget-object v3, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->p1:Lcom/transsion/widgetslib/util/Point;

    sget v4, Lcom/transsion/widgetslib/util/PointAnimUtil;->CIRCLE_RADIU:F

    invoke-virtual {v3, v0, v1, v4}, Lcom/transsion/widgetslib/util/Point;->setStartPos(IIF)V

    .line 122
    iget v3, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mCenterY:I

    sget v4, Lcom/transsion/widgetslib/util/PointAnimUtil;->POINT_OFFSET:I

    add-int/2addr v3, v4

    .line 123
    iget-object v4, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->p2:Lcom/transsion/widgetslib/util/Point;

    sget v5, Lcom/transsion/widgetslib/util/PointAnimUtil;->CIRCLE_RADIU:F

    invoke-virtual {v4, v0, v3, v5}, Lcom/transsion/widgetslib/util/Point;->setStartPos(IIF)V

    .line 125
    iget-object v0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->p1:Lcom/transsion/widgetslib/util/Point;

    invoke-virtual {v0, v2, v2}, Lcom/transsion/widgetslib/util/Point;->setDestPos(II)V

    .line 126
    iget-object v0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->p2:Lcom/transsion/widgetslib/util/Point;

    invoke-virtual {v0, v1, v1}, Lcom/transsion/widgetslib/util/Point;->setDestPos(II)V

    .line 128
    iget-object v0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->p0:Lcom/transsion/widgetslib/util/Point;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->p1:Lcom/transsion/widgetslib/util/Point;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 130
    iget-object p0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->p2:Lcom/transsion/widgetslib/util/Point;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private resetDestPosition(Lcom/transsion/widgetslib/util/Point;Lcom/transsion/widgetslib/util/Point;I)V
    .locals 2

    .line 197
    iget-boolean p3, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mSelected:Z

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    .line 198
    iput p3, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mState:I

    .line 199
    iget p3, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mLayoutDir:I

    if-nez p3, :cond_0

    .line 200
    iget p3, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mCenterX:I

    sget v0, Lcom/transsion/widgetslib/util/PointAnimUtil;->POINT_OFFSET:I

    sub-int/2addr p3, v0

    iget v0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mCenterY:I

    invoke-virtual {p1, p3, v0}, Lcom/transsion/widgetslib/util/Point;->setDestPos(II)V

    .line 201
    iget p1, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mCenterX:I

    sget p3, Lcom/transsion/widgetslib/util/PointAnimUtil;->POINT_OFFSET:I

    sub-int/2addr p1, p3

    iget v0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mCenterY:I

    add-int/2addr v0, p3

    invoke-virtual {p2, p1, v0}, Lcom/transsion/widgetslib/util/Point;->setDestPos(II)V

    goto :goto_0

    .line 203
    :cond_0
    iget p3, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mCenterX:I

    sget v0, Lcom/transsion/widgetslib/util/PointAnimUtil;->POINT_OFFSET:I

    add-int/2addr p3, v0

    iget v0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mCenterY:I

    invoke-virtual {p1, p3, v0}, Lcom/transsion/widgetslib/util/Point;->setDestPos(II)V

    .line 204
    iget p1, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mCenterX:I

    sget p3, Lcom/transsion/widgetslib/util/PointAnimUtil;->POINT_OFFSET:I

    add-int/2addr p1, p3

    iget v0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mCenterY:I

    add-int/2addr v0, p3

    invoke-virtual {p2, p1, v0}, Lcom/transsion/widgetslib/util/Point;->setDestPos(II)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    .line 207
    iput p3, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mState:I

    .line 208
    iget p3, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mLayoutDir:I

    if-nez p3, :cond_2

    .line 209
    iget p3, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mCenterX:I

    sget v0, Lcom/transsion/widgetslib/util/PointAnimUtil;->POINT_OFFSET:I

    add-int/2addr p3, v0

    iget v1, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mCenterY:I

    sub-int/2addr v1, v0

    invoke-virtual {p1, p3, v1}, Lcom/transsion/widgetslib/util/Point;->setDestPos(II)V

    .line 210
    iget p1, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mCenterX:I

    iget p3, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mCenterY:I

    invoke-virtual {p2, p1, p3}, Lcom/transsion/widgetslib/util/Point;->setDestPos(II)V

    goto :goto_0

    .line 212
    :cond_2
    iget p3, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mCenterX:I

    sget v0, Lcom/transsion/widgetslib/util/PointAnimUtil;->POINT_OFFSET:I

    sub-int/2addr p3, v0

    iget v1, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mCenterY:I

    sub-int/2addr v1, v0

    invoke-virtual {p1, p3, v1}, Lcom/transsion/widgetslib/util/Point;->setDestPos(II)V

    .line 213
    iget p1, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mCenterX:I

    iget p3, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mCenterY:I

    invoke-virtual {p2, p1, p3}, Lcom/transsion/widgetslib/util/Point;->setDestPos(II)V

    .line 217
    :goto_0
    iget-object p0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mTargetView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    .line 153
    iget v0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    .line 156
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mSelected:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 157
    iput v1, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mState:I

    goto :goto_0

    .line 159
    :cond_1
    iput v2, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mState:I

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/util/Point;

    .line 163
    iget-object v2, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/util/Point;

    const/4 v2, 0x0

    .line 164
    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/widgetslib/util/PointAnimUtil;->resetDestPosition(Lcom/transsion/widgetslib/util/Point;Lcom/transsion/widgetslib/util/Point;I)V

    return-void
.end method

.method public setCetnerPosition(II)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mCenterX:I

    .line 135
    iput p2, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mCenterY:I

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mDuration:I

    return-void
.end method

.method public setPointDir(ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/widgetslib/util/Point;",
            ">;)V"
        }
    .end annotation

    .line 79
    iget v0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mLayoutDir:I

    if-eq v0, p1, :cond_1

    .line 80
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    if-nez p1, :cond_0

    .line 82
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/util/PointAnimUtil;->initLTRPostion(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/util/PointAnimUtil;->initRTLPosition(Ljava/util/ArrayList;)V

    .line 87
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mPoints:Ljava/util/ArrayList;

    .line 88
    iput p1, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mLayoutDir:I

    return-void
.end method

.method public start(ZI)V
    .locals 4

    .line 140
    iget p2, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mState:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 141
    iget-object p2, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mPoints:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgetslib/util/Point;

    .line 142
    iget-object v2, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mPoints:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/util/Point;

    .line 143
    invoke-direct {p0, p2, v2, v1}, Lcom/transsion/widgetslib/util/PointAnimUtil;->resetDestPosition(Lcom/transsion/widgetslib/util/Point;Lcom/transsion/widgetslib/util/Point;I)V

    .line 145
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mSelected:Z

    .line 146
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mStartTime:J

    .line 147
    iput v0, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mState:I

    .line 148
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/PointAnimUtil;->update()V

    return-void
.end method

.method public update()V
    .locals 8

    .line 169
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 171
    iget-wide v2, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mDuration:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 173
    iget-object v3, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 176
    iget-object v3, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v3, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mPoints:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/widgetslib/util/Point;

    .line 181
    iget v4, v3, Lcom/transsion/widgetslib/util/Point;->x:I

    int-to-float v5, v4

    iget v6, v3, Lcom/transsion/widgetslib/util/Point;->x1:I

    sub-int/2addr v6, v4

    int-to-float v4, v6

    mul-float/2addr v4, v2

    add-float/2addr v5, v4

    float-to-int v4, v5

    iput v4, v3, Lcom/transsion/widgetslib/util/Point;->x:I

    .line 182
    iget v4, v3, Lcom/transsion/widgetslib/util/Point;->y:I

    int-to-float v5, v4

    iget v6, v3, Lcom/transsion/widgetslib/util/Point;->y1:I

    sub-int/2addr v6, v4

    int-to-float v4, v6

    mul-float/2addr v4, v2

    add-float/2addr v5, v4

    float-to-int v4, v5

    iput v4, v3, Lcom/transsion/widgetslib/util/Point;->y:I

    .line 184
    iget-object v4, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mPoints:Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/widgetslib/util/Point;

    .line 185
    iget v5, v4, Lcom/transsion/widgetslib/util/Point;->x:I

    int-to-float v6, v5

    iget v7, v4, Lcom/transsion/widgetslib/util/Point;->x1:I

    sub-int/2addr v7, v5

    int-to-float v5, v7

    mul-float/2addr v5, v2

    add-float/2addr v6, v5

    float-to-int v5, v6

    iput v5, v4, Lcom/transsion/widgetslib/util/Point;->x:I

    .line 186
    iget v5, v4, Lcom/transsion/widgetslib/util/Point;->y:I

    int-to-float v6, v5

    iget v7, v4, Lcom/transsion/widgetslib/util/Point;->y1:I

    sub-int/2addr v7, v5

    int-to-float v5, v7

    mul-float/2addr v5, v2

    add-float/2addr v6, v5

    float-to-int v2, v6

    iput v2, v4, Lcom/transsion/widgetslib/util/Point;->y:I

    .line 189
    iget-object v2, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mTargetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 191
    iget-wide v5, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mStartTime:J

    sub-long/2addr v0, v5

    iget v2, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mDuration:I

    int-to-long v5, v2

    cmp-long v0, v0, v5

    if-ltz v0, :cond_1

    const/4 v0, 0x0

    .line 192
    invoke-direct {p0, v3, v4, v0}, Lcom/transsion/widgetslib/util/PointAnimUtil;->resetDestPosition(Lcom/transsion/widgetslib/util/Point;Lcom/transsion/widgetslib/util/Point;I)V

    :cond_1
    return-void
.end method

.class public Lcom/transsion/widgetslib/util/ListScaleHelper;
.super Ljava/lang/Object;
.source "ListScaleHelper.java"


# static fields
.field private static DEBUG:Z = false

.field private static final EPSILON:F = 0.001f

.field private static final LOG_TAG:Ljava/lang/String; = "os_list"

.field private static final SCALE_REBOUND_TIME:I = 0x96

.field private static final SCALE_RELEASE_TIME:I = 0x96

.field private static final SCALE_TIME:I = 0x96

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_REBOUND:I = 0x2

.field private static final STATE_RELEASE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListScaleHelper"


# instance fields
.field private mDuration:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mPviotY:F

.field private mScaleFinish:F

.field private mScaleStart:F

.field private mScaleView:Landroid/view/View;

.field private mStartTime:J

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mState:I

    .line 43
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private setPviotY(F)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mPviotY:F

    return-void
.end method

.method private setScales(FF)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mScaleStart:F

    .line 81
    iput p2, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mScaleFinish:F

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mState:I

    return-void
.end method

.method public isFinished()Z
    .locals 0

    .line 89
    iget p0, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onRebound(Landroid/view/View;FF)V
    .locals 2

    .line 61
    iput-object p1, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mScaleView:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/util/ListScaleHelper;->setScales(FF)V

    .line 63
    invoke-direct {p0, p3}, Lcom/transsion/widgetslib/util/ListScaleHelper;->setPviotY(F)V

    .line 65
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    const/4 p1, 0x2

    .line 67
    iput p1, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mState:I

    .line 68
    iput-wide v0, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mStartTime:J

    const/high16 p1, 0x43160000    # 150.0f

    .line 69
    iput p1, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mDuration:F

    .line 70
    sget-boolean p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 71
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ListScaleHelper onRebound() now = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", scaleY = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", pviotY = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "os_list"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onRelease(Landroid/view/View;FF)V
    .locals 2

    .line 47
    iput-object p1, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mScaleView:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 48
    invoke-direct {p0, p2, p1}, Lcom/transsion/widgetslib/util/ListScaleHelper;->setScales(FF)V

    .line 49
    invoke-direct {p0, p3}, Lcom/transsion/widgetslib/util/ListScaleHelper;->setPviotY(F)V

    .line 51
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    const/4 p1, 0x1

    .line 52
    iput p1, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mState:I

    .line 53
    iput-wide v0, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mStartTime:J

    const/high16 p1, 0x43160000    # 150.0f

    .line 54
    iput p1, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mDuration:F

    .line 55
    sget-boolean p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 56
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ListScaleHelper onRelease() now = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", scaleY = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", pviotY = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "os_list"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public update()Z
    .locals 12

    .line 93
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 94
    iget-wide v2, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mDuration:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 96
    iget-object v4, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 97
    iget v4, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mScaleStart:F

    iget v5, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mScaleFinish:F

    sub-float/2addr v5, v4

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    .line 99
    iget v2, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mState:I

    const-string v5, ", mPviotY = "

    const-string v6, ", scale = "

    const-string v7, "os_list"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v9, :cond_2

    const/4 v10, 0x2

    if-eq v2, v10, :cond_0

    goto/16 :goto_0

    .line 112
    :cond_0
    sget-boolean v2, Lcom/transsion/widgetslib/util/ListScaleHelper;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ListScaleHelper update() 2 duration = "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mStartTime:J

    sub-long v10, v0, v10

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mPviotY:F

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mScaleView:Landroid/view/View;

    iget v5, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mPviotY:F

    invoke-virtual {v2, v5}, Landroid/view/View;->setPivotY(F)V

    .line 117
    iget-object v2, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mScaleView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 118
    iget-wide v5, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mStartTime:J

    sub-long/2addr v0, v5

    long-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mDuration:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 119
    iput v9, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mState:I

    .line 120
    iput v4, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mScaleStart:F

    .line 121
    iput v3, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mScaleFinish:F

    .line 122
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mStartTime:J

    const/high16 v0, 0x43160000    # 150.0f

    .line 123
    iput v0, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mDuration:F

    goto :goto_0

    .line 101
    :cond_2
    sget-boolean v2, Lcom/transsion/widgetslib/util/ListScaleHelper;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ListScaleHelper update() 1 duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mStartTime:J

    sub-long v10, v0, v10

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mPviotY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_3
    iget-object v2, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mScaleView:Landroid/view/View;

    iget v3, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mPviotY:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 106
    iget-object v2, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mScaleView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 107
    iget-wide v2, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mDuration:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 108
    iput v8, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mState:I

    .line 127
    :cond_4
    :goto_0
    iget p0, p0, Lcom/transsion/widgetslib/util/ListScaleHelper;->mState:I

    if-eqz p0, :cond_5

    move v8, v9

    :cond_5
    return v8
.end method

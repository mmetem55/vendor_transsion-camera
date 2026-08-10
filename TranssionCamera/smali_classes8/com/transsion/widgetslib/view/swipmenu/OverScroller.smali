.class public Lcom/transsion/widgetslib/view/swipmenu/OverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field public static final SCROLL:Landroid/view/animation/Interpolator;

.field private static final SCROLL_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OverScroller"


# instance fields
.field private final mFlywheel:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mMode:I

.field private final mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$1;

    invoke-direct {v0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$1;-><init>()V

    sput-object v0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->SCROLL:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x1

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 79
    sget-object p2, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->SCROLL:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .line 81
    :cond_0
    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 83
    :goto_0
    iput-boolean p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mFlywheel:Z

    .line 84
    new-instance p2, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-direct {p2, p1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .locals 0

    .line 373
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->finish()V

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 6

    .line 204
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 207
    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mMode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->access$000(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 228
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_5

    .line 229
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_5

    .line 230
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->finish()V

    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->isSpringing()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 212
    :cond_3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 215
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->access$700(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 217
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->access$600(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)I

    move-result v0

    int-to-long v4, v0

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 219
    iget-object v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    long-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-interface {v4, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    .line 220
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->updateScroll(F)V

    goto :goto_0

    .line 222
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->abortAnimation()V

    :cond_5
    :goto_0
    return v1
.end method

.method public extendDuration(I)V
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->extendDuration(I)V

    return-void
.end method

.method public fling(IIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 300
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->fling(IIIII)V

    return-void
.end method

.method public fling(IIIII)V
    .locals 6

    .line 321
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mFlywheel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->access$300(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)F

    move-result v0

    int-to-float v1, p2

    .line 323
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    add-float/2addr v1, v0

    float-to-int p2, v1

    :cond_0
    move v2, p2

    const/4 p2, 0x1

    .line 328
    iput p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mMode:I

    .line 329
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->fling(IIIII)V

    return-void
.end method

.method public final forceFinished(Z)V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->access$002(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;Z)Z

    return-void
.end method

.method public final getCurrPos()I
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->access$102(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;Z)Z

    .line 136
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->access$200(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)I

    move-result p0

    return p0
.end method

.method public getCurrVelocity()F
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->access$300(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)F

    move-result p0

    return p0
.end method

.method public final getDuration()I
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->access$600(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)I

    move-result p0

    return p0
.end method

.method public final getFinalPos()I
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->access$500(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)I

    move-result p0

    return p0
.end method

.method public getScroller()Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    return-object p0
.end method

.method public final getStartPos()I
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->access$400(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)I

    move-result p0

    return p0
.end method

.method public final isFinished()Z
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->access$000(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)Z

    move-result p0

    return p0
.end method

.method public isOverScrolled()Z
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->access$000(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->access$800(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSpringing()Z
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->access$800(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->isFinished()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyEdgeReached(III)V
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    return-void
.end method

.method public setFinalPos(I)V
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    return-void
.end method

.method public final setFriction(F)V
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->setFriction(F)V

    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    if-nez p1, :cond_0

    .line 89
    sget-object p1, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->SCROLL:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .line 91
    :cond_0
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    :goto_0
    return-void
.end method

.method public softAbortAnimation()V
    .locals 0

    .line 376
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->softFinish()V

    return-void
.end method

.method public springBack(III)Z
    .locals 1

    const/4 v0, 0x1

    .line 295
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mMode:I

    .line 296
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->springback(III)Z

    move-result p0

    return p0
.end method

.method public startScroll(II)V
    .locals 1

    const/16 v0, 0xfa

    .line 252
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->startScroll(III)V

    return-void
.end method

.method public startScroll(III)V
    .locals 1

    const/4 v0, 0x0

    .line 265
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mMode:I

    .line 266
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->startScroll(III)V

    return-void
.end method

.method public startScrollSpring(IIIF)V
    .locals 2

    const/4 v0, 0x0

    .line 280
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mMode:I

    .line 281
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->access$802(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;I)I

    .line 282
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->startScroll(IIIF)V

    return-void
.end method

.method public timePassed()I
    .locals 4

    .line 386
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 387
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->mScroller:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->access$700(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.class public Lcom/transsion/widgetslib/anim/TrackAnimator;
.super Ljava/lang/Object;
.source "TrackAnimator.java"


# instance fields
.field private volatile mAlive:Z

.field private volatile mAniValue:F

.field private mMaxSpeedFractor:F

.field private mMinSpeedFractor:F

.field private mTargValue:F

.field private minSpeed:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3e4ccccd    # 0.2f

    .line 29
    iput v0, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mMaxSpeedFractor:F

    const/high16 v0, 0x3e000000    # 0.125f

    .line 33
    iput v0, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mMinSpeedFractor:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3e4ccccd    # 0.2f

    .line 29
    iput v0, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mMaxSpeedFractor:F

    const/high16 v0, 0x3e000000    # 0.125f

    .line 33
    iput v0, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mMinSpeedFractor:F

    .line 40
    iput p1, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mAniValue:F

    .line 41
    iput p1, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mTargValue:F

    return-void
.end method

.method private static final animateAfterFactoringSpeed(FFF)F
    .locals 3

    cmpl-float v0, p0, p1

    if-nez v0, :cond_0

    return p1

    :cond_0
    sub-float v1, p1, p0

    mul-float/2addr v1, p2

    add-float/2addr v1, p0

    sub-float p2, v1, p0

    .line 165
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float p2, p2, v2

    if-gez p2, :cond_1

    return p1

    :cond_1
    cmpl-float p2, v1, p0

    if-nez p2, :cond_2

    return p1

    :cond_2
    if-lez v0, :cond_3

    cmpg-float p2, v1, p1

    if-gez p2, :cond_3

    return p1

    :cond_3
    cmpg-float p0, p0, p1

    if-gez p0, :cond_4

    cmpl-float p0, v1, p1

    if-lez p0, :cond_4

    return p1

    :cond_4
    return v1
.end method

.method private static final animateWithMaxSpeed(FFFFF)F
    .locals 2

    sub-float v0, p1, p0

    .line 144
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p4

    if-gtz v1, :cond_0

    return p1

    :cond_0
    mul-float/2addr p3, v0

    add-float/2addr p3, p0

    .line 147
    invoke-static {p0, p3, p2}, Lcom/transsion/widgetslib/anim/TrackAnimator;->animateAfterFactoringSpeed(FFF)F

    move-result p1

    sub-float p2, p1, p0

    .line 149
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, p2, p4

    if-gez p2, :cond_1

    .line 150
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p1

    mul-float/2addr p1, p4

    add-float/2addr p0, p1

    return p0

    :cond_1
    return p1
.end method

.method private final computeSpeedControl(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 99
    iget v0, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mMinSpeedFractor:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->minSpeed:F

    const v0, 0x38d1b717    # 1.0E-4f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 101
    iput v0, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->minSpeed:F

    :cond_0
    return-void
.end method


# virtual methods
.method public final end()V
    .locals 1

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mAlive:Z

    .line 131
    iget v0, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mTargValue:F

    iput v0, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mAniValue:F

    return-void
.end method

.method public final getAnimatedValue()F
    .locals 0

    .line 49
    iget p0, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mAniValue:F

    return p0
.end method

.method public final getTargValue()F
    .locals 0

    .line 45
    iget p0, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mTargValue:F

    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 112
    iget-boolean p0, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mAlive:Z

    return p0
.end method

.method public final set(F)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mAlive:Z

    .line 73
    iput p1, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mAniValue:F

    .line 74
    iput p1, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mTargValue:F

    return-void
.end method

.method public final setMaxSpeedFractor(F)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mMaxSpeedFractor:F

    return-void
.end method

.method public final setMinSpeedFractor(F)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mMinSpeedFractor:F

    return-void
.end method

.method public final setTargValue(F)V
    .locals 1

    .line 84
    iget v0, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mTargValue:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 85
    iput p1, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mTargValue:F

    .line 86
    iget v0, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mAniValue:F

    sub-float/2addr p1, v0

    .line 87
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/anim/TrackAnimator;->computeSpeedControl(F)V

    const/4 p1, 0x1

    .line 88
    iput-boolean p1, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mAlive:Z

    :cond_0
    return-void
.end method

.method public final update(F)Z
    .locals 4

    .line 119
    iget-boolean v0, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mAlive:Z

    if-eqz v0, :cond_1

    .line 120
    iget v0, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mAniValue:F

    iget v1, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mTargValue:F

    iget v2, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mMaxSpeedFractor:F

    iget v3, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->minSpeed:F

    invoke-static {v0, v1, p1, v2, v3}, Lcom/transsion/widgetslib/anim/TrackAnimator;->animateWithMaxSpeed(FFFFF)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mAniValue:F

    .line 121
    iget p1, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mAniValue:F

    iget v0, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mTargValue:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mAlive:Z

    .line 123
    :cond_1
    iget-boolean p0, p0, Lcom/transsion/widgetslib/anim/TrackAnimator;->mAlive:Z

    return p0
.end method

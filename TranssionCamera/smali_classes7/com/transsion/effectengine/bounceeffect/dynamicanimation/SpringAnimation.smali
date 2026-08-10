.class public final Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;
.super Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation<",
        "Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field public mEndRequested:Z

.field public mPendingPosition:F

.field public mSpring:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOif;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOif<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;-><init>(Ljava/lang/Object;Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOif;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->mSpring:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->mPendingPosition:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->mEndRequested:Z

    return-void
.end method

.method private sanityCheck()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->mSpring:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;

    if-eqz v0, :cond_2

    .line 1
    iget-wide v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;->z1OoOchar:D

    double-to-float v0, v0

    float-to-double v0, v0

    .line 2
    iget v2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMaxValue:F

    float-to-double v2, v2

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_1

    iget p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMinValue:F

    float-to-double v2, p0

    cmpg-double p0, v0, v2

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be less than the min value."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be greater than the max value."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public cancel()V
    .locals 5

    invoke-super {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->cancel()V

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->mPendingPosition:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->mSpring:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;

    if-nez v2, :cond_0

    new-instance v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;

    invoke-direct {v2, v0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;-><init>(F)V

    iput-object v2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->mSpring:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;

    goto :goto_0

    :cond_0
    float-to-double v3, v0

    .line 1
    iput-wide v3, v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;->z1OoOchar:D

    .line 2
    :goto_0
    iput v1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->mPendingPosition:F

    :cond_1
    return-void
.end method

.method public isAtEquilibrium(FF)Z
    .locals 4

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->mSpring:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double v0, p2

    iget-wide v2, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;->z1OoOnew:D

    cmpg-double p2, v0, v2

    if-gez p2, :cond_0

    .line 2
    iget-wide v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;->z1OoOchar:D

    double-to-float p2, v0

    sub-float/2addr p1, p2

    .line 3
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    iget-wide v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;->z1OoOint:D

    cmpg-double p0, p1, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setSpring(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;
    .locals 0

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->mSpring:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;

    return-object p0
.end method

.method public start()V
    .locals 5

    invoke-direct {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->sanityCheck()V

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->mSpring:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->getValueThreshold()F

    move-result v1

    float-to-double v1, v1

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iput-wide v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;->z1OoOint:D

    const-wide v3, 0x404f400000000000L    # 62.5

    mul-double/2addr v1, v3

    iput-wide v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;->z1OoOnew:D

    .line 2
    invoke-super {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->start()V

    return-void
.end method

.method public updateValueAndVelocity(J)Z
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->mEndRequested:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->mPendingPosition:F

    cmpl-float v6, v1, v5

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->mSpring:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;

    float-to-double v7, v1

    .line 1
    iput-wide v7, v6, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;->z1OoOchar:D

    .line 2
    iput v5, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->mPendingPosition:F

    :cond_0
    iget-object v1, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->mSpring:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;

    .line 3
    iget-wide v5, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;->z1OoOchar:D

    double-to-float v1, v5

    .line 4
    iput v1, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    iput v4, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mVelocity:F

    iput-boolean v3, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->mEndRequested:Z

    return v2

    :cond_1
    iget v1, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->mPendingPosition:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_2

    iget-object v6, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->mSpring:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;

    iget v1, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    float-to-double v7, v1

    iget v1, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mVelocity:F

    float-to-double v9, v1

    const-wide/16 v11, 0x2

    div-long v18, p1, v11

    move-wide/from16 v11, v18

    invoke-virtual/range {v6 .. v12}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;->z1OoOdo(DDJ)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;

    move-result-object v1

    iget-object v13, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->mSpring:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;

    iget v6, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->mPendingPosition:F

    float-to-double v6, v6

    .line 5
    iput-wide v6, v13, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;->z1OoOchar:D

    .line 6
    iput v5, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->mPendingPosition:F

    iget v5, v1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;->z1OoOdo:F

    float-to-double v14, v5

    iget v1, v1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;->z1OoOif:F

    float-to-double v5, v1

    move-wide/from16 v16, v5

    goto :goto_0

    :cond_2
    iget-object v13, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->mSpring:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;

    iget v1, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    float-to-double v14, v1

    iget v1, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mVelocity:F

    float-to-double v5, v1

    move-wide/from16 v16, v5

    move-wide/from16 v18, p1

    :goto_0
    invoke-virtual/range {v13 .. v19}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;->z1OoOdo(DDJ)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;

    move-result-object v1

    iget v5, v1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;->z1OoOdo:F

    iput v5, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    iget v1, v1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;->z1OoOif:F

    iput v1, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mVelocity:F

    iget v1, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    iget v5, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMinValue:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    iget v5, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMaxValue:F

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    iget v5, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mVelocity:F

    invoke-virtual {v0, v1, v5}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->isAtEquilibrium(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->mSpring:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;

    .line 7
    iget-wide v5, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOchar/z1OoOint;->z1OoOchar:D

    double-to-float v1, v5

    .line 8
    iput v1, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    iput v4, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mVelocity:F

    return v2

    :cond_3
    return v3
.end method

.class public Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;
.super Ljava/lang/Object;
.source "OSSpringPropertyAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;
    }
.end annotation


# instance fields
.field private final mDampingRatio:F

.field private final mFinalValue:F

.field private final mFloatValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private mOnAnimationUpdateListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

.field private mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final mStartValue:F

.field private final mStiffness:F

.field private final mVelocity:F


# direct methods
.method private constructor <init>(Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;->access$000(Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;->mStartValue:F

    .line 23
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;->access$100(Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;->mFinalValue:F

    .line 24
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;->access$200(Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;->mStiffness:F

    .line 25
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;->access$300(Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;->mDampingRatio:F

    .line 26
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;->access$400(Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;)Landroidx/dynamicanimation/animation/FloatValueHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;->mFloatValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 27
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;->access$500(Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;->mVelocity:F

    .line 28
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;->access$600(Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;)Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;->mOnAnimationUpdateListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    .line 29
    invoke-direct {p0}, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;->createAnimation()Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;-><init>(Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;)V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;->getSpringAnimation()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    return-object p0
.end method

.method private createAnimation()Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;
    .locals 3

    .line 33
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iget v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;->mStiffness:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;->mDampingRatio:F

    .line 34
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 35
    iget v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;->mFinalValue:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 36
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;->mFloatValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 37
    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 38
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;->mStartValue:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 39
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;->mVelocity:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 40
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const v1, 0x3b03126f    # 0.002f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 41
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;->mOnAnimationUpdateListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    if-eqz v0, :cond_0

    .line 42
    iget-object v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :cond_0
    return-object p0
.end method

.method private getSpringAnimation()Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

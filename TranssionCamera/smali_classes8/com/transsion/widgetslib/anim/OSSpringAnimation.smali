.class public Lcom/transsion/widgetslib/anim/OSSpringAnimation;
.super Ljava/lang/Object;
.source "OSSpringAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;
    }
.end annotation


# instance fields
.field private final mDampingRatio:F

.field private final mFinalValue:F

.field private final mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final mStartValue:F

.field private final mStiffness:F

.field private final mVelocity:F

.field private final mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;->access$000(Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation;->mStartValue:F

    .line 27
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;->access$100(Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation;->mFinalValue:F

    .line 28
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;->access$200(Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation;->mView:Landroid/view/View;

    .line 29
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;->access$300(Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation;->mStiffness:F

    .line 30
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;->access$400(Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation;->mDampingRatio:F

    .line 31
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;->access$500(Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;)Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 32
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;->access$600(Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation;->mVelocity:F

    .line 33
    invoke-direct {p0}, Lcom/transsion/widgetslib/anim/OSSpringAnimation;->createAnimation()Lcom/transsion/widgetslib/anim/OSSpringAnimation;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;Lcom/transsion/widgetslib/anim/OSSpringAnimation$1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/anim/OSSpringAnimation;-><init>(Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;)V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/widgetslib/anim/OSSpringAnimation;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/transsion/widgetslib/anim/OSSpringAnimation;->getSpringAnimation()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    return-object p0
.end method

.method private createAnimation()Lcom/transsion/widgetslib/anim/OSSpringAnimation;
    .locals 4

    .line 37
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iget v1, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation;->mStiffness:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation;->mDampingRatio:F

    .line 38
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 39
    iget v1, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation;->mFinalValue:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 40
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v1, v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 41
    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 42
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation;->mStartValue:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 43
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation;->mVelocity:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 44
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const v1, 0x3b03126f    # 0.002f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-object p0
.end method

.method private getSpringAnimation()Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

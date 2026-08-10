.class public Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;
.super Ljava/lang/Object;
.source "OSPressSpringAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;,
        Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$OnOSSpringAnimationEndListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mDampingRatio:F

.field private final mFinalValue:F

.field private mOSSpringAnimationEndListener:Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$OnOSSpringAnimationEndListener;

.field private mSpringAnimation:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/dynamicanimation/animation/SpringAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartValue:F

.field private final mStiffness:F

.field private final mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;->access$000(Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->mStartValue:F

    .line 26
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;->access$100(Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->mFinalValue:F

    .line 27
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;->access$200(Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->mView:Landroid/view/View;

    .line 28
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;->access$300(Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->mStiffness:F

    .line 29
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;->access$400(Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->mDampingRatio:F

    .line 30
    invoke-direct {p0}, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->init()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;-><init>(Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;)Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$OnOSSpringAnimationEndListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->mOSSpringAnimationEndListener:Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$OnOSSpringAnimationEndListener;

    return-object p0
.end method

.method private init()V
    .locals 3

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->mSpringAnimation:Ljava/util/HashSet;

    .line 35
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iget v1, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->mStiffness:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->mDampingRatio:F

    .line 36
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 37
    iget v1, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->mFinalValue:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 38
    iget-object v1, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->mSpringAnimation:Ljava/util/HashSet;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->initAnimation(Landroidx/dynamicanimation/animation/SpringForce;Z)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v1, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->mSpringAnimation:Ljava/util/HashSet;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->initAnimation(Landroidx/dynamicanimation/animation/SpringForce;Z)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initAnimation(Landroidx/dynamicanimation/animation/SpringForce;Z)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 2

    if-eqz p2, :cond_0

    .line 45
    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->mView:Landroid/view/View;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p2, v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    goto :goto_0

    .line 48
    :cond_0
    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->mView:Landroid/view/View;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p2, v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 51
    :goto_0
    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 52
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->mStartValue:F

    invoke-virtual {p2, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    const p0, 0x3b03126f    # 0.002f

    .line 53
    invoke-virtual {p2, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-object p2
.end method


# virtual methods
.method public addEndListener(Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$OnOSSpringAnimationEndListener;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->mOSSpringAnimationEndListener:Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$OnOSSpringAnimationEndListener;

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->mSpringAnimation:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 78
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->mSpringAnimation:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 79
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->mSpringAnimation:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 85
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->mSpringAnimation:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 86
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public start()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 58
    iget-object v1, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->mSpringAnimation:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 59
    iget-object v1, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->mSpringAnimation:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->mSpringAnimation:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 61
    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 62
    iget-object v3, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;->mOSSpringAnimationEndListener:Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$OnOSSpringAnimationEndListener;

    if-eqz v3, :cond_0

    .line 63
    new-instance v3, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$1;

    invoke-direct {v3, p0, v0}, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$1;-><init>(Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;[I)V

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    goto :goto_0

    :cond_1
    return-void
.end method

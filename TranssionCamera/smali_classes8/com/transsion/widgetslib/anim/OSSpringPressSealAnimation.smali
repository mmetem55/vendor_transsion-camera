.class public Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;
.super Ljava/lang/Object;
.source "OSSpringPressSealAnimation.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;,
        Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;,
        Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;,
        Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OSSpringPressSealAnimat"


# instance fields
.field private endAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mActionByUpEvent:Z

.field private mClickListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;

.field private mCurrentEndValue:F

.field private mCurrentStartValue:F

.field private final mDampingRatio:F

.field mDownX:F

.field mDownY:F

.field private final mEndDampingRatio:F

.field private final mEndStiffness:F

.field private final mEndValue:F

.field private final mFloatValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private mInterruptAnimation:Z

.field private mOnAnimationEndListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;

.field private mOnAnimationUpdateListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private final mStartStiffness:F

.field private final mStartValue:F

.field private mTouchSlop:F

.field private final mVelocity:F

.field private mViewHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field regret:Z

.field private startAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;


# direct methods
.method private constructor <init>(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)V
    .locals 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->regret:Z

    .line 233
    iput-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mInterruptAnimation:Z

    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mActionByUpEvent:Z

    .line 42
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$000(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mStartValue:F

    .line 43
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$100(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)F

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mEndValue:F

    .line 44
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$200(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)F

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mEndStiffness:F

    .line 45
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$300(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)F

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mStartStiffness:F

    .line 46
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$400(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)F

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mDampingRatio:F

    .line 47
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$500(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)F

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mEndDampingRatio:F

    .line 48
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$600(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)Landroidx/dynamicanimation/animation/FloatValueHolder;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mFloatValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 49
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$700(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)F

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mVelocity:F

    .line 50
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$800(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mViewHolder:Ljava/lang/ref/WeakReference;

    .line 51
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$900(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mClickListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;

    .line 52
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$1000(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 53
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$1100(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mOnAnimationEndListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;

    .line 54
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$1200(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mOnAnimationUpdateListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;

    .line 55
    iget-object v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mViewHolder:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    .line 56
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$1300(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 57
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;->access$1300(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)F

    move-result p1

    float-to-int p1, p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x14

    :goto_0
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->dp2px(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mTouchSlop:F

    .line 59
    :cond_1
    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentStartValue:F

    .line 60
    iput v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentEndValue:F

    .line 61
    iget-object p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mViewHolder:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 62
    iget-object p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mViewHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$1;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;-><init>(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$Builder;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mViewHolder:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mOnAnimationUpdateListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationUpdateListener;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentStartValue:F

    return p1
.end method

.method static synthetic access$1700(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mEndValue:F

    return p0
.end method

.method static synthetic access$1802(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentEndValue:F

    return p1
.end method

.method static synthetic access$1900(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mStartValue:F

    return p0
.end method

.method static synthetic access$2000(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mOnAnimationEndListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnAnimationEndListener;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mInterruptAnimation:Z

    return p1
.end method

.method private createEndAnimation(FF)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 2

    .line 121
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iget v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mEndStiffness:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mEndDampingRatio:F

    .line 122
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 123
    invoke-virtual {v0, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 124
    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mFloatValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p2, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 125
    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 126
    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 127
    iget p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mVelocity:F

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    const p1, 0x3b03126f    # 0.002f

    .line 128
    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 130
    new-instance p1, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$3;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$3;-><init>(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)V

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 149
    new-instance p1, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$4;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$4;-><init>(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)V

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-object p2
.end method

.method private createStartAnimation(FF)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 2

    .line 73
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iget v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mStartStiffness:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mDampingRatio:F

    .line 74
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 75
    invoke-virtual {v0, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 76
    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mFloatValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p2, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 77
    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 78
    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 79
    iget p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mVelocity:F

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    const p1, 0x3b03126f    # 0.002f

    .line 80
    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 82
    new-instance p1, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$1;-><init>(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)V

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 102
    new-instance p1, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$2;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$2;-><init>(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)V

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-object p2
.end method

.method static dp2px(I)I
    .locals 2

    int-to-float p0, p0

    .line 69
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 68
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private judgeDistance(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mDownX:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v4, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mDownY:F

    sub-float/2addr p1, v4

    float-to-double v4, p1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 230
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mTouchSlop:F

    float-to-double p0, p0

    cmpl-double p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public animateToStart()V
    .locals 2

    .line 247
    invoke-virtual {p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->holdState()V

    .line 248
    iget v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentStartValue:F

    iget v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mStartValue:F

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->createEndAnimation(FF)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    const/4 v0, 0x0

    .line 249
    iput-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mActionByUpEvent:Z

    return-void
.end method

.method public holdState()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->startAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->startAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->endAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->endAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_1
    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mInterruptAnimation:Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    .line 176
    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 178
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mInterruptAnimation:Z

    if-nez v0, :cond_c

    .line 179
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 180
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mDownX:F

    .line 181
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mDownY:F

    .line 182
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->endAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->endAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 185
    :cond_1
    iget v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentStartValue:F

    iget v3, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentEndValue:F

    invoke-direct {p0, v0, v3}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->createStartAnimation(FF)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->startAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 186
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 187
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mClickListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 188
    invoke-interface {v0, p1, v2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;->onClick(Landroid/view/View;Z)V

    .line 190
    :cond_2
    iput-boolean v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->regret:Z

    goto/16 :goto_1

    .line 191
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v2, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_4

    goto :goto_0

    .line 211
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 212
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_5

    .line 213
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_5

    .line 214
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->judgeDistance(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_5
    iget-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->regret:Z

    if-nez v0, :cond_c

    .line 215
    iput-boolean v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->regret:Z

    .line 216
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->startAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 217
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->startAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 219
    :cond_6
    iget v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentStartValue:F

    iget v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentEndValue:F

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->createEndAnimation(FF)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->endAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 220
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto :goto_1

    .line 192
    :cond_7
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mActionByUpEvent:Z

    if-nez v0, :cond_8

    .line 193
    iput-boolean v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mActionByUpEvent:Z

    goto :goto_1

    .line 195
    :cond_8
    iget-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->regret:Z

    if-nez v0, :cond_b

    .line 196
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_9

    .line 197
    iput-boolean v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->regret:Z

    .line 199
    :cond_9
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->startAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 200
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->startAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 202
    :cond_a
    iget v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentStartValue:F

    iget v3, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mCurrentEndValue:F

    invoke-direct {p0, v0, v3}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->createEndAnimation(FF)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->endAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 203
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 205
    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_c

    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mClickListener:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    iget-boolean p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->regret:Z

    if-nez p0, :cond_c

    .line 207
    invoke-interface {v0, p1, v1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$OnSpringClickListner;->onClick(Landroid/view/View;Z)V

    .line 225
    :cond_c
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public resumeAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 254
    iput-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->mInterruptAnimation:Z

    return-void
.end method

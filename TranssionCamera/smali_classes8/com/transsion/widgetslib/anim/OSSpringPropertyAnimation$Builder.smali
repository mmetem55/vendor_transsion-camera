.class public Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;
.super Ljava/lang/Object;
.source "OSSpringPropertyAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private dampingRatio:F

.field private finalValue:F

.field private floatValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private onAnimationUpdateListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

.field private startValue:F

.field private stiffness:F

.field private velocity:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x43af0000    # 350.0f

    .line 62
    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;->stiffness:F

    const v0, 0x3f99999a    # 1.2f

    .line 63
    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;->dampingRatio:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 64
    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;->startValue:F

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;->velocity:F

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;)F
    .locals 0

    .line 52
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;->startValue:F

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;)F
    .locals 0

    .line 52
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;->finalValue:F

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;)F
    .locals 0

    .line 52
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;->stiffness:F

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;)F
    .locals 0

    .line 52
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;->dampingRatio:F

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;)Landroidx/dynamicanimation/animation/FloatValueHolder;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;->floatValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;)F
    .locals 0

    .line 52
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;->velocity:F

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;)Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;->onAnimationUpdateListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    return-object p0
.end method


# virtual methods
.method public addOnAnimationUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;->onAnimationUpdateListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    return-object p0
.end method

.method public build()Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;->floatValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;-><init>(Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$1;)V

    invoke-static {v0}, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;->access$800(Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    return-object p0

    .line 105
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "property == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dampingRatio(F)Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;
    .locals 0

    .line 100
    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;->dampingRatio:F

    return-object p0
.end method

.method public finalValue(F)Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;
    .locals 0

    .line 79
    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;->finalValue:F

    return-object p0
.end method

.method public floatVlaueHolder(Landroidx/dynamicanimation/animation/FloatValueHolder;)Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;->floatValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    return-object p0
.end method

.method public startValue(F)Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;
    .locals 0

    .line 69
    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;->startValue:F

    return-object p0
.end method

.method public stiffness(F)Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;
    .locals 0

    .line 90
    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;->stiffness:F

    return-object p0
.end method

.method public velocity(F)Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;
    .locals 0

    .line 95
    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPropertyAnimation$Builder;->velocity:F

    return-object p0
.end method

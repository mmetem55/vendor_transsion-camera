.class public Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;
.super Ljava/lang/Object;
.source "OSSpringAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/anim/OSSpringAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private dampingRatio:F

.field private finalValue:F

.field private property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private startValue:F

.field private stiffness:F

.field private velocity:F

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x43af0000    # 350.0f

    .line 61
    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;->stiffness:F

    const v0, 0x3f99999a    # 1.2f

    .line 62
    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;->dampingRatio:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 63
    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;->startValue:F

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;->velocity:F

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;)F
    .locals 0

    .line 51
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;->startValue:F

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;)F
    .locals 0

    .line 51
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;->finalValue:F

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;)Landroid/view/View;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;->view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;)F
    .locals 0

    .line 51
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;->stiffness:F

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;)F
    .locals 0

    .line 51
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;->dampingRatio:F

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;)Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;->property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;)F
    .locals 0

    .line 51
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;->velocity:F

    return p0
.end method


# virtual methods
.method public build()Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;->property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Lcom/transsion/widgetslib/anim/OSSpringAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/anim/OSSpringAnimation;-><init>(Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;Lcom/transsion/widgetslib/anim/OSSpringAnimation$1;)V

    invoke-static {v0}, Lcom/transsion/widgetslib/anim/OSSpringAnimation;->access$800(Lcom/transsion/widgetslib/anim/OSSpringAnimation;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    return-object p0

    .line 104
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "property == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 103
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "view == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dampingRatio(F)Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;
    .locals 0

    .line 98
    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;->dampingRatio:F

    return-object p0
.end method

.method public finalValue(F)Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;
    .locals 0

    .line 73
    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;->finalValue:F

    return-object p0
.end method

.method public property(Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;->property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-object p0
.end method

.method public startValue(F)Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;
    .locals 0

    .line 68
    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;->startValue:F

    return-object p0
.end method

.method public stiffness(F)Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;
    .locals 0

    .line 88
    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;->stiffness:F

    return-object p0
.end method

.method public velocity(F)Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;
    .locals 0

    .line 93
    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;->velocity:F

    return-object p0
.end method

.method public view(Landroid/view/View;)Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/transsion/widgetslib/anim/OSSpringAnimation$Builder;->view:Landroid/view/View;

    return-object p0
.end method

.class public Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;
.super Ljava/lang/Object;
.source "OSPressSpringAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private dampingRatio:F

.field private finalValue:F

.field private startValue:F

.field private stiffness:F

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x44458000    # 790.0f

    .line 111
    iput v0, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;->stiffness:F

    const v0, 0x3f99999a    # 1.2f

    .line 112
    iput v0, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;->dampingRatio:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 113
    iput v0, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;->startValue:F

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;)F
    .locals 0

    .line 102
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;->startValue:F

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;)F
    .locals 0

    .line 102
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;->finalValue:F

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;)Landroid/view/View;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;->view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;)F
    .locals 0

    .line 102
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;->stiffness:F

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;)F
    .locals 0

    .line 102
    iget p0, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;->dampingRatio:F

    return p0
.end method


# virtual methods
.method public build()Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 143
    iget v0, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;->finalValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation;-><init>(Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$1;)V

    return-object v0

    .line 143
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "finalValue == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 142
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "view == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dampingRatio(F)Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;
    .locals 0

    .line 137
    iput p1, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;->dampingRatio:F

    return-object p0
.end method

.method public finalValue(F)Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;
    .locals 0

    .line 122
    iput p1, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;->finalValue:F

    return-object p0
.end method

.method public startValue(F)Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;
    .locals 0

    .line 117
    iput p1, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;->startValue:F

    return-object p0
.end method

.method public stiffness(F)Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;
    .locals 0

    .line 132
    iput p1, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;->stiffness:F

    return-object p0
.end method

.method public view(Landroid/view/View;)Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/transsion/widgetslib/anim/OSPressSpringAnimation$Builder;->view:Landroid/view/View;

    return-object p0
.end method

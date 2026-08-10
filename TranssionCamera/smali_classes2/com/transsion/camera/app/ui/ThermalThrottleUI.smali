.class public Lcom/transsion/camera/app/ui/ThermalThrottleUI;
.super Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;
.source "ThermalThrottleUI.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mRes:Landroid/content/res/Resources;

.field private mRoot:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/ThermalThrottleUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mRes:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public fadeIn(Landroid/view/View;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020037

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 68
    new-instance v1, Lcom/transsion/camera/app/ui/ThermalThrottleUI$2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/ui/ThermalThrottleUI$2;-><init>(Lcom/transsion/camera/app/ui/ThermalThrottleUI;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 80
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public fadeOut(Landroid/view/View;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020038

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 87
    new-instance v1, Lcom/transsion/camera/app/ui/ThermalThrottleUI$3;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/ui/ThermalThrottleUI$3;-><init>(Lcom/transsion/camera/app/ui/ThermalThrottleUI;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 93
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method getLowTemperatureLayout()I
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/UIUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0c01e4

    return p0

    :cond_0
    const p0, 0x7f0c01e5

    return p0
.end method

.method getMediumTemperatureLayout()I
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/UIUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0c01e6

    return p0

    :cond_0
    const p0, 0x7f0c01e7

    return p0
.end method

.method public updateLayout()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mLayout:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f09021a

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mRoot:Landroid/view/ViewGroup;

    .line 49
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->mCutoutHeight:I

    if-lez v1, :cond_1

    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ThermalThrottleUI;->mRoot:Landroid/view/ViewGroup;

    new-instance v1, Lcom/transsion/camera/app/ui/ThermalThrottleUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ThermalThrottleUI$1;-><init>(Lcom/transsion/camera/app/ui/ThermalThrottleUI;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

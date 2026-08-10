.class public Lcom/transsion/camera/feature/arcore/common/utils/RevealAnimationUtil;
.super Ljava/lang/Object;
.source "RevealAnimationUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;IFF)V
    .locals 0

    .line 19
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/camera/feature/arcore/common/utils/RevealAnimationUtil;->revealAlphaActivity(Landroid/view/View;IFF)V

    return-void
.end method

.method private static revealActivity(Landroid/view/View;II)V
    .locals 4

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v0, v2

    double-to-float v0, v0

    const/4 v1, 0x0

    .line 46
    invoke-static {p0, p1, p2, v1, v0}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    const-wide/16 v0, 0x258

    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 48
    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p2, 0x0

    .line 51
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private static revealAlphaActivity(Landroid/view/View;IFF)V
    .locals 2

    .line 56
    new-instance p2, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "RevealAnimationUtil"

    invoke-direct {p2, v0}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    const-string v0, "arcover revealAlphaActivity start"

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 57
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x12c

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lcom/transsion/camera/feature/arcore/common/utils/RevealAnimationUtil$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/utils/RevealAnimationUtil$2;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 71
    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static startRevealAnimation(Landroid/view/View;Landroid/app/Activity;)V
    .locals 1

    .line 22
    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/utils/ContextUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 24
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/utils/RevealAnimationUtil$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/utils/RevealAnimationUtil$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

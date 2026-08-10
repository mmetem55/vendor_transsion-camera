.class Lcom/transsion/camera/ui/setting/focus/FocusAnimator;
.super Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;
.source "FocusAnimator.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method public static synthetic $r8$lambda$895GrqDfxvXkYNjQV_0xxFnTxQI(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->lambda$startAnimate$0(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;-><init>()V

    return-void
.end method

.method private static synthetic lambda$startAnimate$0(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 42
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 43
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 44
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public startAnimate(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V
    .locals 5

    if-nez p1, :cond_0

    .line 29
    sget-object p0, Lcom/transsion/camera/ui/setting/focus/FocusAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "view is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 33
    :cond_0
    new-instance v0, Lcom/transsion/camera/ui/setting/focus/FocusBackground;

    invoke-direct {v0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusBackground;-><init>(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;->setDrawBackground(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 36
    fill-array-data v1, :array_0

    const-string v2, "alpha"

    .line 37
    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v0, [F

    .line 40
    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 41
    new-instance v3, Lcom/transsion/camera/ui/setting/focus/FocusAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/transsion/camera/ui/setting/focus/FocusAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 48
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v3, 0xf0

    .line 49
    invoke-virtual {p1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 50
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 51
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 53
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 54
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->mAnimator:Landroid/animation/Animator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f733333    # 0.95f
    .end array-data
.end method

.method public triggerFocusAnimate(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 60
    new-instance v0, Lcom/transsion/camera/ui/setting/focus/LockBackground;

    invoke-direct {v0, p1}, Lcom/transsion/camera/ui/setting/focus/LockBackground;-><init>(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;->setDrawBackground(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;)V

    .line 61
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->triggerFocusAnimate(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public triggerLockAnimate(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/Animator$AnimatorListener;Z)V
    .locals 1

    .line 67
    new-instance v0, Lcom/transsion/camera/ui/setting/focus/LockBackground;

    invoke-direct {v0, p1}, Lcom/transsion/camera/ui/setting/focus/LockBackground;-><init>(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;->setDrawBackground(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView$BaseBackground;)V

    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->triggerLockAnimate(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/Animator$AnimatorListener;Z)V

    return-void
.end method

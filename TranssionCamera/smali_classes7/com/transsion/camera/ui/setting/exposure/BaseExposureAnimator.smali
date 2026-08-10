.class abstract Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;
.super Ljava/lang/Object;
.source "BaseExposureAnimator.java"

# interfaces
.implements Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDarkenAnimator:Landroid/animation/Animator;

.field protected final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field protected mScale:F


# direct methods
.method public static synthetic $r8$lambda$XRz07pSAG7LsYML-cNmF45hMpOg(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;->lambda$startShowLockAnimate$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 32
    iput v0, p0, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;->mScale:F

    .line 35
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;->initInterpolator()Landroid/view/animation/PathInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;Landroid/view/View;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;->startSeekBarAnimate(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$startShowLockAnimate$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 58
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 59
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 60
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private startSeekBarAnimate(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 77
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    .line 78
    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xa5

    .line 79
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 81
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public cancelDarkenAnimate(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    .line 109
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "view is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;->mDarkenAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;->mDarkenAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;->mDarkenAnimator:Landroid/animation/Animator;

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 118
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method protected initInterpolator()Landroid/view/animation/PathInterpolator;
    .locals 3

    .line 39
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v0, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object p0
.end method

.method public startDarkenAnimate(Landroid/view/View;J)V
    .locals 3

    if-nez p1, :cond_0

    .line 87
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "view is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 91
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;->cancelDarkenAnimate(Landroid/view/View;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 93
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;->mDarkenAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x1

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;->mDarkenAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 96
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;->mDarkenAnimator:Landroid/animation/Animator;

    new-instance p3, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator$2;

    invoke-direct {p3, p0, p1}, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator$2;-><init>(Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;->mDarkenAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public startShowLockAnimate(Landroid/view/View;Z)V
    .locals 5

    const v0, 0x7f09017a

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09017b

    .line 51
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 54
    iget v2, p0, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;->mScale:F

    const v3, 0x3fc66666    # 1.55f

    mul-float/2addr v3, v2

    const/4 v4, 0x0

    aput v3, v1, v4

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    .line 55
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 56
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 57
    new-instance v2, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 63
    new-instance v0, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator$1;-><init>(Lcom/transsion/camera/ui/setting/exposure/BaseExposureAnimator;ZLandroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 73
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

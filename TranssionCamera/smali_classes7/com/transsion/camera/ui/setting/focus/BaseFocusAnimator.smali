.class abstract Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;
.super Ljava/lang/Object;
.source "BaseFocusAnimator.java"

# interfaces
.implements Lcom/transsion/camera/ui/setting/focus/IFocusAnimator;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mAnimator:Landroid/animation/Animator;

.field private mAnimatorCanceling:Z

.field protected final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mRepeatAnimator:Landroid/animation/Animator;

.field protected mScale:F


# direct methods
.method public static synthetic $r8$lambda$gXmJwYMIpP4v5tSqQ5_wCQohq34(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->lambda$triggerLockAnimate$1(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hP8a0-uqrju6H8SRIIlbk1iWI3A(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->lambda$triggerLockAnimate$0(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    iput v0, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->mScale:F

    .line 36
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->initInterpolator()Landroid/view/animation/PathInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->mAnimatorCanceling:Z

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->triggerRepeatAnimate(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    return-void
.end method

.method private static synthetic lambda$triggerLockAnimate$0(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 139
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 140
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 141
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$triggerLockAnimate$1(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 148
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 149
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 150
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 151
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private triggerRepeatAnimate(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V
    .locals 8

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 97
    fill-array-data v1, :array_0

    const-string v2, "alpha"

    .line 98
    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0xc8

    .line 99
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v5, 0x1

    .line 100
    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    const/4 v6, -0x1

    .line 101
    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    new-array v7, v0, [F

    .line 103
    fill-array-data v7, :array_1

    .line 104
    invoke-static {p1, v2, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 105
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 106
    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 107
    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 109
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    aput-object v2, v0, v5

    .line 110
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 112
    new-instance v0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator$2;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator$2;-><init>(Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 119
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 120
    iput-object v3, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->mRepeatAnimator:Landroid/animation/Animator;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected initInterpolator()Landroid/view/animation/PathInterpolator;
    .locals 3

    .line 40
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v0, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object p0
.end method

.method public stopAnimate(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V
    .locals 0

    if-nez p1, :cond_0

    .line 52
    sget-object p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "view is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->mAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->mAnimatorCanceling:Z

    .line 57
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->mAnimatorCanceling:Z

    .line 60
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->mRepeatAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->mRepeatAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    return-void
.end method

.method public triggerFocusAnimate(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/Animator$AnimatorListener;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 68
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    .line 69
    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 71
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 72
    new-instance v1, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator$1;-><init>(Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 92
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 93
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->mAnimator:Landroid/animation/Animator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public triggerLockAnimate(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/Animator$AnimatorListener;Z)V
    .locals 10

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->mRepeatAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->mRepeatAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 131
    fill-array-data v1, :array_0

    const-string v2, "alpha"

    .line 132
    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    .line 133
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v2, v0, [F

    .line 136
    iget v3, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->mScale:F

    const v4, 0x3fc66666    # 1.55f

    mul-float v5, v3, v4

    const/4 v6, 0x0

    aput v5, v2, v6

    const v5, 0x400e147b    # 2.22f

    mul-float/2addr v3, v5

    const/4 v7, 0x1

    aput v3, v2, v7

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v8, 0xa5

    .line 137
    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 138
    new-instance v3, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v3, v0, [F

    .line 145
    iget v8, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->mScale:F

    mul-float/2addr v5, v8

    aput v5, v3, v6

    mul-float/2addr v8, v4

    aput v8, v3, v7

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    .line 146
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 147
    new-instance v4, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator$$ExternalSyntheticLambda1;

    invoke-direct {v4, p1}, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 154
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v0, [Landroid/animation/Animator;

    aput-object v2, v5, v6

    aput-object v3, v5, v7

    .line 155
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 157
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p3, :cond_1

    .line 159
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    :cond_1
    new-array p3, v0, [Landroid/animation/Animator;

    aput-object v1, p3, v6

    aput-object v4, p3, v7

    .line 161
    invoke-virtual {v2, p3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 163
    :goto_0
    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 164
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 165
    new-instance p3, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator$3;

    invoke-direct {p3, p0, p1, p2}, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator$3;-><init>(Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 182
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 183
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->mAnimator:Landroid/animation/Animator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateScale(F)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/transsion/camera/ui/setting/focus/BaseFocusAnimator;->mScale:F

    return-void
.end method

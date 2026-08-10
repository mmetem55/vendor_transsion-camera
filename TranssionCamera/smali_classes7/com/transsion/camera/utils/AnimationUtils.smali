.class public Lcom/transsion/camera/utils/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# direct methods
.method public static synthetic $r8$lambda$VQhvSuz9-g40Nvmt-9uepGuD_NE(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/camera/utils/AnimationUtils;->lambda$pressSealAnimation$0(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$pressSealAnimation$0(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 123
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p4

    if-eqz p4, :cond_1

    const/4 p0, 0x1

    if-eq p4, p0, :cond_0

    const/4 p0, 0x3

    if-eq p4, p0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-static {p3, p2}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 126
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/AnimationUtils;->startPressedAnimator(Landroid/view/View;F)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 122
    new-instance v0, Lcom/transsion/camera/utils/AnimationUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/utils/AnimationUtils$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method private static startLayerDrawableAnimation(Landroid/graphics/drawable/LayerDrawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z
    .locals 5

    .line 50
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 53
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 54
    instance-of v4, v3, Landroid/graphics/drawable/Animatable2;

    if-eqz v4, :cond_0

    .line 56
    check-cast v3, Landroid/graphics/drawable/Animatable2;

    invoke-static {v3, p1}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorDrawableAnimation(Landroid/graphics/drawable/Animatable2;Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    .line 60
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return v2
.end method

.method public static startPressedAnimator(Landroid/view/View;F)V
    .locals 5

    .line 106
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f28f5c3    # 0.66f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static startPressedAnimator(Landroid/view/View;JFFFFLandroid/animation/AnimatorListenerAdapter;)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 p3, 0x1

    aput p4, v1, p3

    const-string p4, "scaleX"

    .line 83
    invoke-static {p4, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    new-array v1, v0, [F

    aput p5, v1, v2

    aput p6, v1, p3

    const-string p5, "scaleY"

    .line 84
    invoke-static {p5, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p5

    .line 85
    new-instance p6, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f28f5c3    # 0.66f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {p6, v1, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object p4, v0, v2

    aput-object p5, v0, p3

    .line 86
    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    if-eqz p7, :cond_0

    .line 89
    invoke-virtual {p0, p7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 91
    :cond_0
    invoke-virtual {p0, p6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 92
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 93
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static startScaleAnimation(Landroid/view/View;JFFFF)V
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 p3, 0x1

    aput p4, v1, p3

    const-string p4, "scaleX"

    .line 75
    invoke-static {p4, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    new-array v1, v0, [F

    aput p5, v1, v2

    aput p6, v1, p3

    const-string p5, "scaleY"

    .line 76
    invoke-static {p5, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p5

    new-array p6, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object p4, p6, v2

    aput-object p5, p6, p3

    .line 77
    invoke-static {p0, p6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 78
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 79
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static startVectorAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z
    .locals 1

    .line 28
    instance-of v0, p0, Landroid/graphics/drawable/Animatable2;

    if-eqz v0, :cond_0

    .line 29
    check-cast p0, Landroid/graphics/drawable/Animatable2;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorDrawableAnimation(Landroid/graphics/drawable/Animatable2;Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    const/4 p0, 0x1

    return p0

    .line 31
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    .line 32
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/AnimationUtils;->startLayerDrawableAnimation(Landroid/graphics/drawable/LayerDrawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    move-result p0

    return p0

    :cond_1
    if-eqz p1, :cond_2

    .line 35
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static startVectorDrawableAnimation(Landroid/graphics/drawable/Animatable2;Landroid/graphics/drawable/Animatable2$AnimationCallback;)V
    .locals 0

    .line 43
    invoke-interface {p0}, Landroid/graphics/drawable/Animatable2;->clearAnimationCallbacks()V

    .line 44
    invoke-interface {p0, p1}, Landroid/graphics/drawable/Animatable2;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 45
    invoke-interface {p0}, Landroid/graphics/drawable/Animatable2;->start()V

    return-void
.end method

.method public static stopAnimator(Landroid/animation/Animator;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 149
    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 151
    invoke-virtual {p0}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_0
    return-void
.end method

.method public static stopPressedAnimator(Landroid/view/View;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 115
    :cond_0
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f28f5c3    # 0.66f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static stopPressedAnimator(Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 8

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x64

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/transsion/camera/utils/AnimationUtils;->startPressedAnimator(Landroid/view/View;JFFFFLandroid/animation/AnimatorListenerAdapter;)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {p0}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public static stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 66
    instance-of v0, p0, Landroid/graphics/drawable/Animatable2;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/Animatable2;

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable2;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {p0}, Landroid/graphics/drawable/Animatable2;->stop()V

    .line 68
    invoke-interface {p0}, Landroid/graphics/drawable/Animatable2;->clearAnimationCallbacks()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

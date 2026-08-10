.class public Lcom/transsion/camera/app/ui/HintUI;
.super Lcom/transsion/camera/app/ui/AbstractHintUI;
.source "HintUI.java"


# instance fields
.field private context:Landroid/content/Context;

.field private mAsdHintAlgorithResultImgBg:Landroid/widget/ImageView;

.field private mAsdHintAlgorithResultImgView:Landroid/widget/ImageView;

.field private mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

.field private mAsdHintAlgorithResultLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mAsdHintAlgorithResultText:Landroid/widget/TextView;

.field private mAsdHintAlgorithResultTextParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mAsdHintEffectImgBg:Landroid/widget/ImageView;

.field private mAsdHintEffectImgView:Landroid/widget/ImageView;

.field private mAsdHintEffectLayout:Landroid/widget/FrameLayout;

.field private mAsdHintEffectLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mAsdHintEffectText:Landroid/widget/TextView;

.field private mAsdHintEffectTextParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mAsdHintGap:I

.field private mAsdHintRootLayout:Landroid/widget/RelativeLayout;

.field private final mAsdImgViewPadding:I

.field private mAsdShellAlgorithResultLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mAsdShellEffectLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mAsdTextShellAlgorithResultLayout:Landroid/widget/FrameLayout;

.field private mAsdTextShellEffectLayout:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$GQym4vW0PSzw2aClAITsMcn2LFI(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/ui/HintUI;->lambda$initShrinkAnimator$5(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IH-ukCTfAoW2ltbWU7zmZoVhPuw(Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/HintUI;->lambda$initShrinkAnimator$6(Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JLAXRn7qQ_rQR6oU4WUI--tyhh4(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/ui/HintUI;->lambda$initExpandAnimator$2(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RVrbKAQQfPcEYCO3iIpz_EXA0Y4(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/ui/HintUI;->lambda$initShrinkAnimator$4(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y7nv3e3i6V8fU9Jeh8ELHmqeKqA(Lcom/transsion/camera/app/ui/HintUI;ILandroid/widget/FrameLayout;Landroid/widget/FrameLayout;ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/ui/HintUI;->lambda$initHideAnimator$0(ILandroid/widget/FrameLayout;Landroid/widget/FrameLayout;ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZYUiGbrjp0WPvGpl025H-p-jsoY(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/ui/HintUI;->lambda$initExpandAnimator$1(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fNhtCBRTMGnDbHQIjsBty-HJgf0(Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/HintUI;->lambda$initExpandAnimator$3(Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    const/4 p1, 0x6

    .line 22
    iput p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdImgViewPadding:I

    return-void
.end method

.method private initExpandAnimator(IILandroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 6

    .line 172
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x64

    .line 173
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v2, v1, [F

    .line 175
    fill-array-data v2, :array_1

    invoke-static {p4, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    .line 176
    invoke-virtual {p4, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p4

    const/4 v2, 0x0

    .line 178
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 179
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 178
    invoke-virtual {p5, v3, v4}, Landroid/widget/FrameLayout;->measure(II)V

    .line 181
    invoke-virtual {p5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    new-instance v4, Lcom/transsion/camera/app/ui/HintUI$$ExternalSyntheticLambda4;

    invoke-direct {v4, p6, p5}, Lcom/transsion/camera/app/ui/HintUI$$ExternalSyntheticLambda4;-><init>(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout;)V

    const/16 p5, 0x12c

    invoke-virtual {p0, v2, v3, p5, v4}, Lcom/transsion/camera/app/ui/AbstractHintUI;->createValueAnimator(IIILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p6

    .line 188
    new-instance v3, Lcom/transsion/camera/app/ui/HintUI$$ExternalSyntheticLambda5;

    invoke-direct {v3, p7, p3}, Lcom/transsion/camera/app/ui/HintUI$$ExternalSyntheticLambda5;-><init>(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/FrameLayout;)V

    invoke-virtual {p0, p1, p2, p5, v3}, Lcom/transsion/camera/app/ui/AbstractHintUI;->createValueAnimator(IIILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 195
    iget-object p2, p0, Lcom/transsion/camera/app/ui/HintUI;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 p7, 0x6

    invoke-static {p2, p7}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result p2

    new-instance p7, Lcom/transsion/camera/app/ui/HintUI$$ExternalSyntheticLambda6;

    invoke-direct {p7, p3}, Lcom/transsion/camera/app/ui/HintUI$$ExternalSyntheticLambda6;-><init>(Landroid/widget/FrameLayout;)V

    invoke-virtual {p0, v2, p2, p5, p7}, Lcom/transsion/camera/app/ui/AbstractHintUI;->createValueAnimator(IIILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 198
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 p3, 0x5

    new-array p3, p3, [Landroid/animation/Animator;

    aput-object p1, p3, v2

    const/4 p1, 0x1

    aput-object v0, p3, p1

    aput-object p6, p3, v1

    const/4 p1, 0x3

    aput-object p4, p3, p1

    const/4 p1, 0x4

    aput-object p2, p3, p1

    invoke-virtual {p0, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initHideAnimator(IILandroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 7

    .line 125
    new-instance v6, Lcom/transsion/camera/app/ui/HintUI$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/HintUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/HintUI;ILandroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 p2, 0x0

    const/16 p3, 0x12c

    invoke-virtual {p0, p1, p2, p3, v6}, Lcom/transsion/camera/app/ui/AbstractHintUI;->createFloatValueAnimator(FFILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 155
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object p3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/animation/Animator;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    invoke-virtual {p0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method private initShrinkAnimator(IILandroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 6

    .line 218
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x64

    .line 219
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v2, v1, [F

    .line 221
    fill-array-data v2, :array_1

    invoke-static {p4, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    .line 222
    invoke-virtual {p4, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p4

    const-wide/16 v2, 0xc8

    .line 223
    invoke-virtual {p4, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 225
    invoke-virtual {p5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    new-instance v3, Lcom/transsion/camera/app/ui/HintUI$$ExternalSyntheticLambda1;

    invoke-direct {v3, p6, p5}, Lcom/transsion/camera/app/ui/HintUI$$ExternalSyntheticLambda1;-><init>(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout;)V

    const/4 p5, 0x0

    const/16 p6, 0x12c

    invoke-virtual {p0, v2, p5, p6, v3}, Lcom/transsion/camera/app/ui/AbstractHintUI;->createValueAnimator(IIILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 232
    new-instance v3, Lcom/transsion/camera/app/ui/HintUI$$ExternalSyntheticLambda2;

    invoke-direct {v3, p7, p3}, Lcom/transsion/camera/app/ui/HintUI$$ExternalSyntheticLambda2;-><init>(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/FrameLayout;)V

    invoke-virtual {p0, p1, p2, p6, v3}, Lcom/transsion/camera/app/ui/AbstractHintUI;->createValueAnimator(IIILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 239
    iget-object p2, p0, Lcom/transsion/camera/app/ui/HintUI;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 p7, 0x6

    invoke-static {p2, p7}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result p2

    new-instance p7, Lcom/transsion/camera/app/ui/HintUI$$ExternalSyntheticLambda3;

    invoke-direct {p7, p3}, Lcom/transsion/camera/app/ui/HintUI$$ExternalSyntheticLambda3;-><init>(Landroid/widget/FrameLayout;)V

    invoke-virtual {p0, p2, p5, p6, p7}, Lcom/transsion/camera/app/ui/AbstractHintUI;->createValueAnimator(IIILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 243
    iget-object p3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 p6, 0x5

    new-array p6, p6, [Landroid/animation/Animator;

    aput-object p1, p6, p5

    const/4 p1, 0x1

    aput-object v0, p6, p1

    aput-object p4, p6, v1

    const/4 p1, 0x3

    aput-object v2, p6, p1

    const/4 p1, 0x4

    aput-object p2, p6, p1

    invoke-virtual {p3, p6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 p1, 0x7d0

    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-void

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static synthetic lambda$initExpandAnimator$1(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 183
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 184
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$initExpandAnimator$2(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 190
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 191
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$initExpandAnimator$3(Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 196
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method private synthetic lambda$initHideAnimator$0(ILandroid/widget/FrameLayout;Landroid/widget/FrameLayout;ILandroid/animation/ValueAnimator;)V
    .locals 6

    .line 127
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const/high16 v2, 0x42480000    # 50.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    neg-int v0, v0

    int-to-float v0, v0

    .line 129
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    int-to-float v0, v0

    .line 131
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 133
    :cond_1
    :goto_0
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 134
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    const/16 v5, 0x8

    if-nez v0, :cond_2

    .line 135
    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 136
    invoke-virtual {p2, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 138
    :cond_2
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->invalidate()V

    if-eqz p3, :cond_7

    .line 139
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, v5, :cond_7

    .line 140
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-ne p2, v5, :cond_3

    iget-object p2, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    if-ne p3, p2, :cond_3

    .line 141
    iget-object p2, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p3, p0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    if-ne p1, v3, :cond_4

    .line 145
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sub-float/2addr v1, p0

    neg-float p0, v1

    int-to-float p1, p4

    mul-float/2addr p0, p1

    invoke-virtual {p3, p0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_1

    :cond_4
    if-ne p1, v2, :cond_5

    .line 147
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sub-float/2addr v1, p0

    int-to-float p0, p4

    mul-float/2addr v1, p0

    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 149
    :cond_5
    :goto_1
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    cmpl-float p0, p0, v4

    if-nez p0, :cond_6

    .line 150
    invoke-virtual {p3, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 152
    :cond_6
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_7
    return-void
.end method

.method private static synthetic lambda$initShrinkAnimator$4(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 227
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 228
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$initShrinkAnimator$5(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 234
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 235
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$initShrinkAnimator$6(Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 241
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAsdHintRootLayout()Landroid/view/ViewGroup;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/HintUI;->getAsdHintRootLayout()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public getAsdHintRootLayout()Landroid/widget/RelativeLayout;
    .locals 0

    .line 365
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintRootLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method getExpandInitValue()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 250
    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method getOverallValue()[I
    .locals 5

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdTextShellAlgorithResultLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 256
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 255
    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->measure(II)V

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdTextShellEffectLayout:Landroid/widget/FrameLayout;

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 259
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 258
    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->measure(II)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 261
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdAlgorithResultLayoutWidth:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdTextShellAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUI;->context:Landroid/content/Context;

    .line 262
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v0, v1

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdEffectLayoutWidth:I

    iget-object v2, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdTextShellEffectLayout:Landroid/widget/FrameLayout;

    .line 263
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUI;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, v4}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result p0

    add-int/2addr v1, p0

    const/4 p0, 0x1

    aput v1, v0, p0

    return-object v0
.end method

.method getShrinkTargetValue()[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 268
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdAlgorithResultLayoutWidth:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdEffectLayoutWidth:I

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method hideAsdHintView()V
    .locals 1

    const/4 v0, 0x0

    .line 325
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateHintState(Z)V

    .line 326
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->stopAsdAnimatorSet()V

    .line 327
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/HintUI;->hideHintAlgorithLayout()V

    .line 328
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/HintUI;->hideHintEffectLayout()V

    return-void
.end method

.method hideHintAlgorithLayout()V
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectImgView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdShellEffectLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 354
    iget-object v2, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdTextShellEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdTextShellEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdEffectLayoutWidth:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method hideHintEffectLayout()V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultImgView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdShellAlgorithResultLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 338
    iget-object v2, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdTextShellAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdTextShellAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 341
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdAlgorithResultLayoutWidth:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method initAsdHieAnimator()V
    .locals 5

    .line 83
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v2, v4, v1}, Lcom/transsion/camera/app/ui/HintUI;->initHideAnimator(IILandroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_3

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/transsion/camera/app/ui/HintUI;->initHideAnimator(IILandroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    :cond_3
    return-void
.end method

.method initAsdHieAnimatorByInfo(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 8

    .line 96
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 97
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 102
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 103
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v2, v2, p1, v1}, Lcom/transsion/camera/app/ui/HintUI;->initHideAnimator(IILandroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 107
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v2, v2, p1, v1}, Lcom/transsion/camera/app/ui/HintUI;->initHideAnimator(IILandroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 109
    :cond_2
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdOnly:Z

    return-void

    .line 112
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 113
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdOnly:Z

    .line 114
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v3

    :goto_1
    iget-object v5, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintGap:I

    add-int/2addr v5, v6

    div-int/2addr v5, v3

    iget-object v6, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    .line 115
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    move-object v7, v1

    goto :goto_2

    :cond_6
    iget-object v7, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    .line 114
    :goto_2
    invoke-direct {p0, v0, v5, v6, v7}, Lcom/transsion/camera/app/ui/HintUI;->initHideAnimator(IILandroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 117
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 118
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    move v0, v4

    goto :goto_3

    :cond_8
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdOnly:Z

    .line 119
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    move v2, v4

    :goto_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    div-int/2addr v0, v3

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    .line 120
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_5

    :cond_a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    .line 119
    :goto_5
    invoke-direct {p0, v2, v0, v3, v1}, Lcom/transsion/camera/app/ui/HintUI;->initHideAnimator(IILandroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    :cond_b
    return-void
.end method

.method initExpandAnimator([I[ILcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 9

    .line 161
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    .line 162
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 163
    aget v2, p1, v0

    aget v3, p2, v0

    iget-object v4, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultImgBg:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdTextShellAlgorithResultLayout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdShellAlgorithResultLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v8, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/transsion/camera/app/ui/HintUI;->initExpandAnimator(IILandroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 165
    :cond_0
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    const/4 p3, 0x1

    .line 166
    aget v1, p1, p3

    aget v2, p2, p3

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectImgBg:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdTextShellEffectLayout:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdShellEffectLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/ui/HintUI;->initExpandAnimator(IILandroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V

    :cond_1
    return-void
.end method

.method initShrinkAnimator([I[ILcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 10

    .line 204
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    .line 205
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/HintUI;->getShrinkTargetValue()[I

    move-result-object v2

    aget v2, v2, v1

    if-gt v0, v2, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    :cond_0
    aget v3, p1, v1

    aget v4, p2, v1

    iget-object v5, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultImgBg:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdTextShellAlgorithResultLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdShellAlgorithResultLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/transsion/camera/app/ui/HintUI;->initShrinkAnimator(IILandroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 210
    :cond_1
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/HintUI;->getShrinkTargetValue()[I

    move-result-object v2

    aget v1, v2, v1

    if-gt v0, v1, :cond_2

    .line 211
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    :cond_2
    const/4 p3, 0x1

    .line 212
    aget v1, p1, p3

    aget v2, p2, p3

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectImgBg:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdTextShellEffectLayout:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdShellEffectLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/ui/HintUI;->initShrinkAnimator(IILandroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V

    :cond_3
    return-void
.end method

.method setupAsdHintViews(Landroid/view/ViewGroup;)V
    .locals 1

    const v0, 0x7f09008d

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintRootLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f090089

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f090087

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultImgView:Landroid/widget/ImageView;

    const v0, 0x7f090088

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultImgBg:Landroid/widget/ImageView;

    const v0, 0x7f09008e

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    const v0, 0x7f090086

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdTextShellAlgorithResultLayout:Landroid/widget/FrameLayout;

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdAlgorithResultLayoutWidth:I

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultTextParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdTextShellAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdShellAlgorithResultLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->context:Landroid/content/Context;

    const v0, 0x7f09008c

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f09008a

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectImgView:Landroid/widget/ImageView;

    const v0, 0x7f09008b

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectImgBg:Landroid/widget/ImageView;

    const v0, 0x7f090084

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectText:Landroid/widget/TextView;

    const v0, 0x7f090085

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdTextShellEffectLayout:Landroid/widget/FrameLayout;

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdEffectLayoutWidth:I

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectTextParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdTextShellEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdShellEffectLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 78
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07009c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintGap:I

    return-void
.end method

.method showAsdHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 280
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->startAsdScaleAnimator(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method startAsdHintAnimator(Landroid/animation/Animator;)V
    .locals 0

    .line 273
    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    .line 274
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 275
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method protected updateAlgoritLayout(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 4

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultImgView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultTextParams:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultTextParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    .line 288
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultTextParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintAlgorithResultText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 295
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 296
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintGap:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 297
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method protected updateEffectLayout(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 306
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintGap:I

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    .line 308
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 310
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectTextParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 311
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectTextParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectText:Landroid/widget/TextView;

    .line 312
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 313
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectTextParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectText:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 315
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 316
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 317
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 319
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    .line 320
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUI;->mAsdHintEffectLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

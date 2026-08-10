.class public Lcom/transsion/camera/app/ui/ModeVerticalScroll;
.super Ljava/lang/Object;
.source "ModeVerticalScroll.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/scroll/IScrollOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;,
        Lcom/transsion/camera/app/ui/ModeVerticalScroll$SpreadingAnimationListener;,
        Lcom/transsion/camera/app/ui/ModeVerticalScroll$SupperAnimatorListener;,
        Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentModePickerHeight:I

.field private mDefaultInterpolator:Landroid/view/animation/PathInterpolator;

.field private mDisableVerticalScroll:Z

.field private mHasSyncModePickerHeight:Z

.field private final mHintMargin:I

.field private final mMaxShakeHeight:F

.field private mModeMaskView:Landroid/view/View;

.field private mModePanelHideListener:Landroid/animation/Animator$AnimatorListener;

.field private mModePanelIndicatorView:Landroid/view/View;

.field private mModePanelLayout:Landroid/view/View;

.field private final mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

.field private mModePickerHeightUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mModePickerLayout:Landroid/view/ViewGroup;

.field private mPanelHintView:Landroid/view/View;

.field private mPanelStateListener:Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;

.field private final mPullInterpolator:Landroid/view/animation/Interpolator;

.field private mPushingDistance:F

.field private final mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private final mScrollStrategy:Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;

.field private final mShakeHeight:I

.field private mStartY:F

.field private final mSupportedModeNum:I

.field private final mTriggerHintHeight:I

.field private final mTriggerShrinkPushDistance:F

.field private final mTriggerSpreadPullDistance:I

.field private final mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;


# direct methods
.method public static synthetic $r8$lambda$XMlAoxFSZ6Mw1V3StobtqMiIet0(Lcom/transsion/camera/app/ui/ModeVerticalScroll;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;Lcom/transsion/camera/app/mode/ModePickerConfig;)V
    .locals 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPullInterpolator:Landroid/view/animation/Interpolator;

    .line 42
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mDefaultInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mDisableVerticalScroll:Z

    .line 60
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mHasSyncModePickerHeight:Z

    .line 427
    new-instance v0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePickerHeightUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 429
    new-instance v0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$4;-><init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 67
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 69
    iput-object p4, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    .line 70
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0xf

    iput p4, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mTriggerSpreadPullDistance:I

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x7f0703c2

    .line 73
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    int-to-float p4, p4

    iput p4, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mTriggerShrinkPushDistance:F

    const p4, 0x7f0703cd

    .line 74
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    iput p4, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mMaxShakeHeight:F

    const p4, 0x7f0703c3

    .line 75
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mShakeHeight:I

    const p4, 0x7f070770

    .line 76
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mTriggerHintHeight:I

    const p4, 0x7f0703b8

    .line 77
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    iput p4, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mHintMargin:I

    const p4, 0x7f030021

    .line 79
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p4

    const v0, 0x7f030022

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 81
    array-length p4, p4

    array-length p1, p1

    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mSupportedModeNum:I

    .line 83
    new-instance p1, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mScrollStrategy:Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;

    .line 84
    iput-object p3, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelStateListener:Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/ModeVerticalScroll;FZ)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->onModePanelDistanceChanged(FZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModeMaskView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$502(Lcom/transsion/camera/app/ui/ModeVerticalScroll;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mHasSyncModePickerHeight:Z

    return p1
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    return-object p0
.end method

.method private varargs createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;
    .locals 0

    .line 198
    invoke-static {p1, p2, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p3

    .line 199
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private createSpreadAnimation(Landroid/view/View;Landroid/animation/ValueAnimator;)Landroid/animation/AnimatorSet;
    .locals 9

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 211
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->getOriginPanelTranslationY()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput v4, v1, v2

    const-string v5, "translationY"

    const/16 v6, 0x12c

    .line 210
    invoke-direct {p0, p1, v5, v6, v1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object v1

    new-array v7, v0, [F

    .line 212
    fill-array-data v7, :array_0

    const-string v8, "alpha"

    invoke-direct {p0, p1, v8, v6, v7}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object v6

    new-array v0, v0, [F

    aput v4, v0, v3

    .line 215
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->getSpreadStateTranslationY()F

    move-result v3

    aput v3, v0, v2

    const/16 v2, 0x96

    .line 214
    invoke-direct {p0, p1, v5, v2, v0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object p1

    .line 216
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleNormalMore()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    .line 224
    :cond_1
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleNormalMore()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 225
    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 230
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mDefaultInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private varargs createValueAnimator(I[I)Landroid/animation/ValueAnimator;
    .locals 0

    .line 204
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p0

    int-to-long p1, p1

    .line 205
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private currentModePickerHeight()I
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePickerLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 152
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    return p0
.end method

.method private getInputRatio(F)F
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->validDistance(F)F

    move-result p1

    iget p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mTriggerSpreadPullDistance:I

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private getOriginPanelTranslationY()F
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelIndicatorView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    const v1, 0x7f0902a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelIndicatorView:Landroid/view/View;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelIndicatorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 190
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mMaxShakeHeight:F

    sub-float/2addr v0, p0

    return v0
.end method

.method private getSpreadStateTranslationY()F
    .locals 0

    .line 194
    iget p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mShakeHeight:I

    int-to-float p0, p0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 427
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->updateModePickerLayoutHeight(I)V

    return-void
.end method

.method private onModePanelDistanceChanged(FZ)V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 481
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    if-eqz p0, :cond_1

    .line 482
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->onModePanelDistanceChanged(FZ)V

    :cond_1
    return-void
.end method

.method private originModePickerHeight()I
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mHasSyncModePickerHeight:Z

    if-nez v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->currentModePickerHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mCurrentModePickerHeight:I

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mHasSyncModePickerHeight:Z

    .line 147
    :cond_0
    iget p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mCurrentModePickerHeight:I

    return p0
.end method

.method private pullDistanceToHeight(F)I
    .locals 1

    .line 112
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->getInputRatio(F)F

    move-result p1

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPullInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 114
    iget p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mMaxShakeHeight:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private pushDistanceToTranslationY(I)I
    .locals 0

    .line 419
    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method private reachShrinking()Z
    .locals 1

    .line 415
    iget v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPushingDistance:F

    iget p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mTriggerShrinkPushDistance:F

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private startVibrator()V
    .locals 3

    .line 470
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mContext:Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const-wide/16 v0, 0x32

    const/4 v2, -0x1

    .line 471
    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 473
    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    return-void
.end method

.method private updateModePickerLayoutHeight(I)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePickerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 127
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePickerLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateWideCameraUI(F)V
    .locals 4

    .line 132
    iget v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mTriggerHintHeight:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    if-eqz v1, :cond_1

    int-to-float v1, v0

    sub-float/2addr p1, v1

    .line 134
    iget v1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mTriggerSpreadPullDistance:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    sub-float/2addr v3, p1

    .line 135
    invoke-direct {p0, v3, v2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->onModePanelDistanceChanged(FZ)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-direct {p0, v3, v2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->onModePanelDistanceChanged(FZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private validDistance(F)F
    .locals 0

    .line 122
    iget p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mTriggerSpreadPullDistance:I

    int-to-float p0, p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private validPanelTranslationY(F)F
    .locals 0

    .line 182
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->getOriginPanelTranslationY()F

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public down(FF)V
    .locals 0

    .line 162
    iput p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mStartY:F

    return-void
.end method

.method public pulling(FF)Z
    .locals 2

    .line 168
    iget v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mSupportedModeNum:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mDisableVerticalScroll:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->originModePickerHeight()I

    move-result v0

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->pullDistanceToHeight(F)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->updateModePickerLayoutHeight(I)V

    .line 172
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->updateWideCameraUI(F)V

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mScrollStrategy:Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->scroll(FF)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public pushing(FF)Z
    .locals 2

    .line 402
    iget p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mStartY:F

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getToolBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    neg-float p1, p2

    .line 405
    iput p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPushingDistance:F

    .line 406
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->getSpreadStateTranslationY()F

    move-result p1

    iget p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPushingDistance:F

    float-to-int p2, p2

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->pushDistanceToTranslationY(I)I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->validPanelTranslationY(F)F

    move-result p2

    add-float/2addr p1, p2

    .line 407
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 408
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    .line 409
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 411
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->reachShrinking()Z

    move-result p0

    return p0
.end method

.method public setDisableVerticalScroll(Z)V
    .locals 0

    .line 503
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mDisableVerticalScroll:Z

    return-void
.end method

.method setModePanelLayout(Landroid/view/ViewGroup;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    return-void
.end method

.method public setModePanelMask(Landroid/view/View;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModeMaskView:Landroid/view/View;

    return-void
.end method

.method setModePickerLayout(Landroid/view/ViewGroup;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePickerLayout:Landroid/view/ViewGroup;

    .line 89
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->currentModePickerHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mCurrentModePickerHeight:I

    return-void
.end method

.method public setPanelHintView(Landroid/view/View;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    return-void
.end method

.method public setPanelStateListener(Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelStateListener:Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;

    return-void
.end method

.method public startPulling()V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mScrollStrategy:Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollImmovableStrategy;->startScroll()V

    return-void
.end method

.method public startShrinkingAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
    .locals 12

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 317
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->getOriginPanelTranslationY()F

    move-result v1

    .line 319
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v6, 0x1

    aput v1, v4, v6

    const-string v7, "translationY"

    const/16 v8, 0x12c

    invoke-direct {p0, v2, v7, v8, v4}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object v2

    .line 321
    iget-object v4, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    new-array v9, v3, [F

    fill-array-data v9, :array_0

    const-string v10, "alpha"

    invoke-direct {p0, v4, v10, v8, v9}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object v4

    .line 323
    iget-object v9, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v4, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 325
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 326
    iget-object v11, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleNormalMore()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 327
    invoke-virtual {v9, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 331
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mDefaultInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 333
    new-instance v2, Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;

    invoke-direct {v2, p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;-><init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V

    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 334
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 335
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelStateListener:Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;->onPanelShrink()V

    .line 337
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModeMaskView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    .line 338
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 339
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    new-array v2, v3, [F

    aput v0, v2, v5

    iget v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mMaxShakeHeight:F

    add-float/2addr v1, v0

    aput v1, v2, v6

    invoke-direct {p0, p1, v7, v8, v2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object p1

    .line 341
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    invoke-direct {p0, v0, v10, v8, v1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    .line 343
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 344
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 345
    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 346
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mDefaultInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 347
    new-instance p1, Lcom/transsion/camera/app/ui/ModeVerticalScroll$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$2;-><init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)V

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 356
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 358
    :cond_1
    invoke-direct {p0, v2, v5}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->onModePanelDistanceChanged(FZ)V

    .line 360
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModeMaskView:Landroid/view/View;

    new-array v0, v3, [F

    fill-array-data v0, :array_2

    invoke-direct {p0, p1, v10, v8, v0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object p1

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mDefaultInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 363
    new-instance v0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$3;-><init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 372
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_2

    .line 376
    :cond_2
    invoke-direct {p0, v2, v5}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->onModePanelDistanceChanged(FZ)V

    .line 378
    :goto_2
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const-string p1, "total"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->recordExitMoreModeOperation(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f59999a    # 0.85f
        0x0
    .end array-data
.end method

.method public startShrinkingBackAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
    .locals 8

    .line 383
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 384
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->getSpreadStateTranslationY()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    .line 385
    iget v2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mTriggerShrinkPushDistance:F

    div-float/2addr v1, v2

    const/high16 v2, 0x43960000    # 300.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 386
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    .line 387
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->getSpreadStateTranslationY()F

    move-result v6

    const/4 v7, 0x1

    aput v6, v4, v7

    const-string v6, "translationY"

    .line 386
    invoke-direct {p0, v2, v6, v1, v4}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object v2

    .line 388
    new-instance v4, Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;

    invoke-direct {v4, p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;-><init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 389
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 390
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 391
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    new-array v2, v3, [F

    aput v0, v2, v5

    .line 392
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->getSpreadStateTranslationY()F

    move-result v0

    aput v0, v2, v7

    .line 391
    invoke-direct {p0, p1, v6, v1, v2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object p0

    .line 393
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 396
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;->onAnimationEnd()V

    :cond_1
    :goto_0
    return-void
.end method

.method public startSpreadingAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;Z)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 237
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->onModePanelDistanceChanged(FZ)V

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 240
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->currentModePickerHeight()I

    move-result v3

    aput v3, v2, v1

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->originModePickerHeight()I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    const/16 v3, 0x12c

    invoke-direct {p0, v3, v2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createValueAnimator(I[I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 241
    iget-object v4, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePickerHeightUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 243
    iget-object v4, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    invoke-direct {p0, v4, v2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createSpreadAnimation(Landroid/view/View;Landroid/animation/ValueAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 244
    new-instance v4, Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;

    new-instance v5, Lcom/transsion/camera/app/ui/ModeVerticalScroll$SpreadingAnimationListener;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelStateListener:Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;

    invoke-direct {v5, p1, v6}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$SpreadingAnimationListener;-><init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;)V

    invoke-direct {v4, v5}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;-><init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 245
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 246
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->startVibrator()V

    .line 247
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelStateListener:Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;->onPanelSpreadStart()V

    .line 249
    new-instance p1, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    const-string v2, "key_camera_guide_usage"

    if-eqz p2, :cond_2

    .line 252
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p2

    const-string v4, "0"

    .line 251
    invoke-virtual {p1, v2, v4, p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-le p1, v0, :cond_0

    return-void

    .line 256
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelIndicatorView:Landroid/view/View;

    if-nez p1, :cond_1

    .line 257
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelLayout:Landroid/view/View;

    const p2, 0x7f0902a5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelIndicatorView:Landroid/view/View;

    .line 259
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 260
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, p2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 262
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePanelIndicatorView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    iget v2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mHintMargin:I

    add-int/2addr p2, v2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 p2, 0x50

    .line 263
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 264
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createSpreadAnimation(Landroid/view/View;Landroid/animation/ValueAnimator;)Landroid/animation/AnimatorSet;

    move-result-object p1

    .line 267
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 271
    :cond_2
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelHintView:Landroid/view/View;

    if-eqz p2, :cond_3

    const/16 v4, 0x8

    .line 272
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 275
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    .line 274
    invoke-virtual {p1, v2, p2, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 278
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModeMaskView:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 279
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModeMaskView:Landroid/view/View;

    new-array p2, v0, [F

    fill-array-data p2, :array_0

    const-string v0, "alpha"

    invoke-direct {p0, p1, v0, v3, p2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object p1

    .line 282
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mDefaultInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 283
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 285
    :cond_5
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const-string p1, "slide_preview"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->recordEnterMoreModeOperation(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f59999a    # 0.85f
    .end array-data
.end method

.method public startSpreadingBackAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 290
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->onModePanelDistanceChanged(FZ)V

    .line 292
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->currentModePickerHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->originModePickerHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mMaxShakeHeight:F

    div-float/2addr v0, v2

    const/high16 v2, 0x43960000    # 300.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    if-nez v0, :cond_0

    .line 294
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;->onAnimationEnd()V

    .line 295
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mPanelStateListener:Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;->onPanelSpreadBack()V

    return-void

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 298
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->currentModePickerHeight()I

    move-result v3

    aput v3, v2, v1

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->originModePickerHeight()I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->createValueAnimator(I[I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 299
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mModePickerHeightUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 300
    new-instance v2, Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;

    invoke-direct {v2, p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$AnimatorTotalListener;-><init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 302
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 303
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->mDefaultInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v2, v4, [Landroid/animation/Animator;

    aput-object v0, v2, v1

    .line 304
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 305
    new-instance v0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$1;-><init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 311
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public stopPulling()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public stopPushing()Z
    .locals 0

    .line 424
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->reachShrinking()Z

    move-result p0

    return p0
.end method

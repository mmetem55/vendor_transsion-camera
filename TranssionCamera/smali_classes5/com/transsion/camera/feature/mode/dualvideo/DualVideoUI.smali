.class public Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;
.super Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;
.source "DualVideoUI.java"


# static fields
.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field private final mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mBottomBarAnimator:Landroid/animation/ValueAnimator;

.field private final mBottomBarBaselineMarginBottom:I

.field private mIsPausing:Z

.field private mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mScreenWidth:I

.field private mSwitchScreenAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSwitchScreenButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private final mSwitchScreenMarginEnd:I

.field private final mSwitchScreenWidth:I

.field private mVideoShutterPanelLayout:Landroid/view/View;

.field private mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mVideoSnapShotCover:Landroid/view/View;

.field private mVideoSnapShotCoverAlpha:F


# direct methods
.method public static synthetic $r8$lambda$-BIMeTPabowvKgrzoL1V3oSOOkE(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;ZLandroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->lambda$updateBottomRootBarLayout$1(ZLandroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fsz6IVQa8tYVnu4UuDXAlxWNyXo(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->lambda$runSwitchScreenAnimator$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 45
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .locals 7

    .line 65
    sget v4, Lcom/transsion/camera/feature/mode/dualvideo/R$layout;->dual_video_normal_recording:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    const/4 p2, 0x0

    .line 37
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotCover:Landroid/view/View;

    const/4 p2, 0x0

    .line 41
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mScreenWidth:I

    .line 49
    new-instance p2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI$1;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 67
    sget p3, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->switch_screen_margin_end:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenMarginEnd:I

    .line 68
    sget p3, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->switch_screen_view_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenWidth:I

    const-string p2, "snap_shot_cover_alpha"

    .line 69
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    int-to-float p2, p2

    const p3, 0x3dcccccd    # 0.1f

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotCoverAlpha:F

    const-string p2, "bottom_bar_baseline_margin_bottom"

    .line 70
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mBottomBarBaselineMarginBottom:I

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;)Landroid/view/View;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotCover:Landroid/view/View;

    return-object p0
.end method

.method private synthetic lambda$runSwitchScreenAnimator$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 204
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 205
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    return-void
.end method

.method private synthetic lambda$updateBottomRootBarLayout$1(ZLandroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "padding"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 361
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 363
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    const-string p1, "height"

    .line 365
    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const-string p1, "bottomMargin"

    .line 366
    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 367
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private playAnimations()V
    .locals 11

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->snapshot_bottom_animate_move_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 394
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedPause()Z

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x15e

    const/high16 v5, 0x3e800000    # 0.25f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    .line 395
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 396
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v8, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 397
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    sub-float v10, v8, v0

    invoke-direct {v9, v10, v8, v8, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 398
    new-instance v9, Landroid/view/animation/PathInterpolator;

    invoke-direct {v9, v5, v8, v8, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v9}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 399
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 400
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 401
    iget-object v9, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 403
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedVss()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 405
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v8, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 406
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v6, v0, v8, v8, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 407
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v8, v8, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 408
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 409
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 410
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method private runSwitchScreenAnimator()V
    .locals 6

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenAnimatorSet:Landroid/animation/AnimatorSet;

    .line 198
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mScreenWidth:I

    div-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenWidth:I

    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    sub-int/2addr v0, v2

    .line 199
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenMarginEnd:I

    sub-int/2addr v0, v2

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    .line 202
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 203
    new-instance v2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 208
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x0

    .line 209
    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 210
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v4, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 211
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v3

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateSnapShotCoverLayout()V
    .locals 5

    .line 415
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotCover:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mPreviewRect:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 419
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 420
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 421
    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 422
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 423
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotCover:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected doCreateView()Landroid/view/View;
    .locals 3

    .line 75
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->doCreateView()Landroid/view/View;

    move-result-object v0

    .line 76
    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_video_shutter_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    .line 78
    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_video_pause_resume:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 79
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getPauseResumeListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_video_snap_shot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 81
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getVideoSnapShotListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_video_snap_shot_cover:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotCover:Landroid/view/View;

    .line 83
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedCapture()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->updateSnapShotCoverLayout()V

    .line 87
    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->switch_screen_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 88
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getExtClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public isRecordPausing()Z
    .locals 0

    .line 427
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mIsPausing:Z

    return p0
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 0

    .line 182
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V

    .line 183
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->updateSnapShotCoverLayout()V

    return-void
.end method

.method protected onHideRecordingUI()V
    .locals 3

    .line 130
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->onHideRecordingUI()V

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 2

    .line 164
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->onOrientationChanged(I)V

    .line 165
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mScreenFormType:I

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 174
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_3

    .line 175
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_3
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 1

    .line 188
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->onScreenFormChanged(IZ)V

    .line 189
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onScreenFormChanged,mShowUI:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mShowUI:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onShowRecordingUI()V
    .locals 4

    .line 98
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->onShowRecordingUI()V

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 102
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getPauseResumeListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    .line 101
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 104
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedPause()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 103
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 106
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedVss()Z

    move-result v2

    if-eqz v2, :cond_1

    move v3, v1

    .line 105
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 110
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    .line 111
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 112
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedPause()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 115
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedVss()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 116
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 119
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->playAnimations()V

    .line 122
    :cond_4
    :goto_1
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mScreenFormType:I

    if-eqz v0, :cond_5

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 124
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->runSwitchScreenAnimator()V

    :cond_6
    return-void
.end method

.method protected onUpdateRecordingUI(Z)V
    .locals 1

    .line 141
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->onUpdateRecordingUI(Z)V

    .line 142
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mIsPausing:Z

    .line 143
    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->ic_recording_pause:I

    if-eqz p1, :cond_0

    .line 145
    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->ic_recording_resume:I

    .line 147
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public playCaptureAnimation(Landroid/content/Context;)V
    .locals 4

    .line 152
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "playCaptureAnimation +"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotCover:Landroid/view/View;

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotCoverAlpha:F

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v2, v0, v1

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    .line 155
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "playCaptureAnimation -"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected updateBottomRootBarLayout(Z)V
    .locals 19

    move-object/from16 v0, p0

    .line 217
    invoke-super/range {p0 .. p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->updateBottomRootBarLayout(Z)V

    .line 218
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 221
    :cond_0
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mBottomBarAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 222
    iget v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mOrientation:I

    .line 223
    iget v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mScreenFormType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 225
    iget v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingOrientation:I

    .line 228
    :cond_1
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 229
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 230
    iget-object v6, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 231
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 232
    iget v8, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 234
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v8}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v8

    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v10}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v10

    sub-int/2addr v8, v10

    .line 236
    :cond_2
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v10}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v10

    .line 237
    iget v11, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 239
    iget-object v12, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    .line 241
    iget-object v13, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    const/4 v14, 0x0

    .line 244
    invoke-virtual {v4, v14, v14, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 245
    invoke-virtual {v4, v14}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 246
    invoke-virtual {v4, v14}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 247
    invoke-virtual {v6, v14}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 248
    invoke-virtual {v5, v14}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 249
    invoke-virtual {v7, v14, v14, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 250
    invoke-virtual {v7, v14}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 251
    invoke-virtual {v7, v14}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    const v9, 0x800013

    const/16 v15, 0x51

    if-ne v2, v3, :cond_6

    const/16 v10, 0x5a

    if-eq v1, v10, :cond_5

    const/16 v10, 0xb4

    const/16 v3, 0x31

    if-eq v1, v10, :cond_4

    const/16 v10, 0x10e

    if-eq v1, v10, :cond_3

    .line 293
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_width:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 294
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_height:I

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const v10, 0x800035

    .line 295
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 296
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_height_margin:I

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 297
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_height_top_margin:I

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 298
    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 299
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v3, 0x33

    .line 300
    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 301
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_switch_screen_start_margin:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 302
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_switch_screen_top_margin:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move v10, v9

    :goto_0
    move v3, v11

    goto/16 :goto_2

    .line 279
    :cond_3
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_width:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 280
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_height:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v10, 0x800055

    .line 281
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 282
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_height_90_top_margin:I

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 283
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_height_margin:I

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 284
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v9, 0x800015

    .line 285
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v9, 0x35

    .line 286
    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 287
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_switch_screen_90_top_margin:I

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 288
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_switch_screen_start_margin:I

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v18, v10

    move v10, v3

    move/from16 v3, v18

    goto/16 :goto_2

    .line 267
    :cond_4
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_width:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 268
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_height:I

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const v10, 0x800053

    .line 269
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 270
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_height_margin:I

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 271
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_height_top_margin:I

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 272
    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 273
    iput v15, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v3, 0x55

    .line 274
    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 275
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_switch_screen_start_margin:I

    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 276
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_switch_screen_top_margin:I

    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move v3, v10

    move v10, v9

    goto/16 :goto_2

    .line 255
    :cond_5
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_width:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 256
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_height:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v10, 0x800033

    .line 257
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 258
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_height_90_top_margin:I

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 259
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_height_margin:I

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const v10, 0x800015

    .line 260
    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 261
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v9, 0x53

    .line 262
    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 263
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_switch_screen_90_top_margin:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 264
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_switch_screen_start_margin:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move v10, v3

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x30

    if-eqz v2, :cond_9

    const/4 v14, 0x2

    if-ne v2, v14, :cond_7

    goto :goto_1

    :cond_7
    const/4 v14, 0x3

    if-ne v2, v14, :cond_8

    const/4 v14, -0x1

    .line 323
    iput v14, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 324
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v10}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v10

    .line 325
    iput v15, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 329
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 330
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_video_shutter_panel_margin:I

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    const v9, 0x800015

    .line 331
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 332
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 333
    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 334
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/4 v9, 0x2

    div-int/2addr v3, v9

    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->switch_screen_margin_top_hover:I

    .line 335
    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v3, v9

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 336
    iget v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenMarginEnd:I

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    const/4 v3, 0x0

    goto :goto_2

    :cond_8
    move v3, v11

    move v9, v12

    move v14, v13

    goto :goto_3

    :cond_9
    :goto_1
    const/4 v10, -0x1

    .line 309
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 310
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v10}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v10

    iget-object v14, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v14}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v14

    sub-int/2addr v10, v14

    .line 311
    iput v15, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 312
    iget-object v14, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v14}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v14

    .line 315
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 316
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_video_shutter_panel_margin:I

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    const v9, 0x800015

    .line 317
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 318
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 319
    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 320
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getCutoutHeight()I

    move-result v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 321
    iget v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenMarginEnd:I

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    move v3, v14

    :goto_2
    const/4 v9, 0x0

    const/4 v14, 0x0

    .line 339
    :goto_3
    iget-object v15, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v15, v10}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->calculateBottomPanelPaddingHeight(I)I

    move-result v15

    move/from16 v16, v9

    move/from16 v17, v12

    if-ltz v15, :cond_a

    const/4 v9, 0x1

    goto :goto_4

    :cond_a
    const/4 v9, 0x0

    :goto_4
    const/4 v12, 0x3

    if-eq v2, v12, :cond_b

    if-eqz v2, :cond_b

    const/4 v12, 0x2

    if-ne v2, v12, :cond_c

    :cond_b
    if-eqz v9, :cond_d

    move v14, v15

    :cond_c
    move/from16 v2, v16

    goto :goto_5

    .line 347
    :cond_d
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v14, 0x0

    .line 351
    :goto_5
    iget-object v12, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_f

    if-eqz p1, :cond_f

    const/4 v12, 0x2

    new-array v2, v12, [I

    if-eqz v9, :cond_e

    move/from16 v17, v13

    :cond_e
    const/4 v13, 0x0

    aput v17, v2, v13

    .line 353
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v14

    const/4 v15, 0x1

    aput v14, v2, v15

    const-string v14, "padding"

    .line 352
    invoke-static {v14, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v14, v12, [I

    aput v8, v14, v13

    aput v10, v14, v15

    const-string v8, "height"

    .line 354
    invoke-static {v8, v14}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    new-array v10, v12, [I

    aput v11, v10, v13

    aput v3, v10, v15

    const-string v3, "bottomMargin"

    .line 355
    invoke-static {v3, v10}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const/4 v10, 0x4

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v8, v10, v13

    aput-object v3, v10, v15

    aput-object v2, v10, v12

    const/4 v3, 0x3

    aput-object v2, v10, v3

    .line 356
    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mBottomBarAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v10, 0x190

    .line 357
    invoke-virtual {v2, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 358
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mBottomBarAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 359
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mBottomBarAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v9, v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;ZLandroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 369
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mBottomBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6

    .line 371
    :cond_f
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v2, v9, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 372
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 373
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 374
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    :goto_6
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    .line 381
    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 383
    :cond_10
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v2, :cond_11

    .line 384
    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 386
    :cond_11
    iget-object v0, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_12

    .line 387
    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_12
    :goto_7
    return-void
.end method

.method public updateScreenWidth(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mScreenWidth:I

    return-void
.end method

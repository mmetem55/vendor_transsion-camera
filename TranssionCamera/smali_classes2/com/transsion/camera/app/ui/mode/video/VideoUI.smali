.class public Lcom/transsion/camera/app/ui/mode/video/VideoUI;
.super Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;
.source "VideoUI.java"


# static fields
.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field private final mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field protected mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIsPause:Z

.field private mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mUnifyCaptureAnimation:Z

.field private mVideoShutterPanelLayout:Landroid/view/View;

.field protected mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mVideoSnapShotCover:Landroid/view/View;

.field private mVideoSnapShotCoverAlpha:F


# direct methods
.method public static synthetic $r8$lambda$gsMSUVNEVA9q4cnE5Vfbgq00uqc(Lcom/transsion/camera/app/ui/mode/video/VideoUI;ZLandroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->lambda$updateBottomRootBarLayout$0(ZLandroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 35
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .locals 6

    const v3, 0x7f0c012b

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 56
    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotCover:Landroid/view/View;

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mIsPause:Z

    .line 40
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mUnifyCaptureAnimation:Z

    .line 42
    new-instance p1, Lcom/transsion/camera/app/ui/mode/video/VideoUI$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI$1;-><init>(Lcom/transsion/camera/app/ui/mode/video/VideoUI;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 57
    iput-object p4, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 58
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f0500b4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mUnifyCaptureAnimation:Z

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/mode/video/VideoUI;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotCover:Landroid/view/View;

    return-object p0
.end method

.method private synthetic lambda$updateBottomRootBarLayout$0(ZLandroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "padding"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 296
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 298
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    const-string p1, "height"

    .line 300
    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const-string p1, "bottomMargin"

    .line 301
    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private playAnimations()V
    .locals 11

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0706f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 335
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

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

    .line 336
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 337
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v8, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 338
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    sub-float v10, v8, v0

    invoke-direct {v9, v10, v8, v8, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 339
    new-instance v9, Landroid/view/animation/PathInterpolator;

    invoke-direct {v9, v5, v8, v8, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v9}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 340
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 341
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 342
    iget-object v9, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedVss()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 346
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v8, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 347
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v6, v0, v8, v8, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 348
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v8, v8, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 349
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 350
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 351
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method private updateSnapShotCoverLayout()V
    .locals 5

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotCover:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mPreviewRect:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 360
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 361
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 362
    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 363
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 364
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotCover:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSnapshotCoverView()V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotCover:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 324
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mLowLight:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mUnifyCaptureAnimation:Z

    if-nez v0, :cond_0

    .line 325
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotCover:Landroid/view/View;

    const v0, 0x7f0603f5

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 327
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotCover:Landroid/view/View;

    const v0, 0x7f0603cb

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected doCreateView()Landroid/view/View;
    .locals 3

    .line 63
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->doCreateView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0904f6

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    const v1, 0x7f0904f2

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 67
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getPauseResumeListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0904fa

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 69
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getVideoSnapShotListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0904fb

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotCover:Landroid/view/View;

    .line 71
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedCapture()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotCoverAlpha:F

    .line 75
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->updateSnapShotCoverLayout()V

    return-object v0
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 0

    .line 171
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V

    .line 172
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->updateSnapShotCoverLayout()V

    return-void
.end method

.method protected onHideRecordingUI()V
    .locals 2

    .line 109
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onHideRecordingUI()V

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 2

    .line 155
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onOrientationChanged(I)V

    .line 157
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 163
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_2

    .line 164
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_2
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 1

    .line 177
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onScreenFormChanged(IZ)V

    .line 178
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mShowUI:Z

    if-nez p1, :cond_0

    return-void

    .line 181
    :cond_0
    iget p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOrientation:I

    .line 182
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 183
    invoke-virtual {p2, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 185
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_2

    .line 186
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_2
    return-void
.end method

.method protected onShowRecordingUI()V
    .locals 4

    .line 81
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onShowRecordingUI()V

    .line 82
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 88
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getPauseResumeListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    .line 87
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 90
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedPause()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 89
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 92
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedVss()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 91
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 94
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 96
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedPause()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 99
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedVss()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 103
    :cond_4
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->playAnimations()V

    :cond_5
    :goto_2
    return-void
.end method

.method protected onUpdateRecordingUI(Z)V
    .locals 1

    .line 119
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onUpdateRecordingUI(Z)V

    .line 120
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mIsPause:Z

    .line 121
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mLowLight:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0807f8

    goto :goto_0

    :cond_0
    const v0, 0x7f0807f7

    :goto_0
    if-eqz p1, :cond_2

    .line 123
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mLowLight:Z

    if-eqz p1, :cond_1

    const p1, 0x7f0807fa

    goto :goto_1

    :cond_1
    const p1, 0x7f0807f9

    :goto_1
    move v0, p1

    .line 125
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p1, :cond_3

    .line 126
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p1, :cond_5

    .line 130
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mLowLight:Z

    if-eqz p0, :cond_4

    const p0, 0x7f080934

    goto :goto_2

    :cond_4
    const p0, 0x7f080933

    :goto_2
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    return-void
.end method

.method public playCaptureAnimation(Landroid/content/Context;)V
    .locals 4

    .line 141
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "playCaptureAnimation +"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->updateSnapshotCoverView()V

    .line 144
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotCover:Landroid/view/View;

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotCoverAlpha:F

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v2, v0, v1

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    .line 146
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 149
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "playCaptureAnimation -"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected ringScreenLightUpdateUI()V
    .locals 1

    .line 135
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->ringScreenLightUpdateUI()V

    .line 136
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mIsPause:Z

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onUpdateRecordingUI(Z)V

    return-void
.end method

.method protected updateBottomRootBarLayout(Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 192
    invoke-super/range {p0 .. p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateBottomRootBarLayout(Z)V

    .line 193
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 197
    :cond_0
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 199
    iget v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOrientation:I

    .line 200
    iget v2, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 202
    iget v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingOrientation:I

    .line 205
    :cond_1
    iget-object v4, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 206
    iget-object v5, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 207
    iget-object v6, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 209
    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 211
    iget-object v7, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v7}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v7

    .line 213
    :cond_2
    iget-object v9, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v9}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v9

    .line 214
    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 216
    iget-object v11, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    .line 218
    iget-object v12, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    const/4 v13, 0x0

    .line 220
    invoke-virtual {v4, v13, v13, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 221
    invoke-virtual {v6, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 222
    invoke-virtual {v5, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    const/16 v8, 0x51

    if-ne v2, v3, :cond_7

    const/16 v2, 0x5a

    const v3, 0x7f070778

    const v14, 0x7f070776

    const v15, 0x7f07077a

    if-eq v1, v2, :cond_6

    const/16 v2, 0xb4

    const/16 v13, 0x31

    const v9, 0x7f070779

    if-eq v1, v2, :cond_5

    const/16 v2, 0x10e

    if-eq v1, v2, :cond_4

    .line 255
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 256
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v2, 0x35

    .line 257
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 258
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 259
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 260
    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 261
    iput v13, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move v9, v1

    :cond_3
    :goto_0
    move v1, v10

    goto/16 :goto_2

    .line 244
    :cond_4
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 245
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const/16 v1, 0x55

    .line 246
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 247
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f070777

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 248
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x800013

    .line 249
    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v2, 0x800015

    .line 250
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_2

    .line 235
    :cond_5
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 236
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v2, 0x53

    .line 237
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 238
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 239
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 240
    iput v13, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 241
    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move v9, v1

    move v1, v2

    goto/16 :goto_2

    .line 226
    :cond_6
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 227
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const/16 v1, 0x33

    .line 228
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 229
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f070777

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 230
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const v1, 0x800015

    .line 231
    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v1, 0x800013

    .line 232
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_0

    :cond_7
    const v1, 0x800013

    const v3, 0x7f070789

    if-eqz v2, :cond_9

    const/4 v13, 0x2

    if-ne v2, v13, :cond_8

    goto :goto_1

    :cond_8
    const/4 v13, 0x3

    if-ne v2, v13, :cond_3

    const/4 v2, -0x1

    .line 275
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 276
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v9

    .line 277
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 279
    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 280
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    const v1, 0x800015

    .line 281
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 282
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    const/4 v1, 0x0

    goto :goto_2

    :cond_9
    :goto_1
    const/4 v1, -0x1

    .line 266
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 267
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v1

    .line 268
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v2

    iget-object v9, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v9}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v9

    sub-int v9, v2, v9

    .line 269
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v2, 0x800013

    .line 270
    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 271
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    const v2, 0x800015

    .line 272
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 273
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 284
    :goto_2
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2, v9}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->calculateBottomPanelPaddingHeight(I)I

    move-result v2

    if-ltz v2, :cond_a

    const/4 v3, 0x1

    goto :goto_3

    :cond_a
    const/4 v3, 0x0

    .line 286
    :goto_3
    iget-object v8, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_c

    if-eqz p1, :cond_c

    const/4 v8, 0x2

    new-array v5, v8, [I

    if-eqz v3, :cond_b

    move v11, v12

    :cond_b
    const/4 v6, 0x0

    aput v11, v5, v6

    .line 288
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v11, 0x1

    aput v2, v5, v11

    const-string v2, "padding"

    .line 287
    invoke-static {v2, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v5, v8, [I

    aput v7, v5, v6

    aput v9, v5, v11

    const-string v7, "height"

    .line 289
    invoke-static {v7, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    new-array v7, v8, [I

    aput v10, v7, v6

    aput v1, v7, v11

    const-string v1, "bottomMargin"

    .line 290
    invoke-static {v1, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v5, v7, v6

    aput-object v1, v7, v11

    aput-object v2, v7, v8

    .line 291
    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x190

    .line 292
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 293
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 294
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/camera/app/ui/mode/video/VideoUI$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v3, v4}, Lcom/transsion/camera/app/ui/mode/video/VideoUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/video/VideoUI;ZLandroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 304
    iget-object v0, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5

    :cond_c
    if-eqz v3, :cond_d

    .line 307
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v7, v7, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    :cond_d
    const/4 v7, 0x0

    .line 309
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v3, v7, v2, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 311
    :goto_4
    iget v2, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    .line 312
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 314
    :cond_e
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 315
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 316
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    iget-object v0, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    :goto_5
    return-void
.end method

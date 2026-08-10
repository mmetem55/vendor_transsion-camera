.class public Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;
.super Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;
.source "FunVideoReviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$MySurfaceHolderListener;
    }
.end annotation


# static fields
.field private static ARCORE_SCALE:F = 0.0f

.field private static final SHOW_SCALE:F = 1.7777778f

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private displayMetrics:Landroid/util/DisplayMetrics;

.field private mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mActionDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mActionShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mActionVskitShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mActionsPanel:Landroid/view/View;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAnimatorHelper:Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper;

.field private mArcoreBottomPanel:Landroid/view/View;

.field private mArcoreCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mArcoreDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mArcorePanel:Landroid/view/View;

.field private mArcoreShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mBottomOffset:I

.field private mCurrentPosition:I

.field private mCutoutHeight:I

.field private mIsLand:Z

.field private mIsSecureCamera:Z

.field private mIscometoArcore:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMusicPath:Ljava/lang/String;

.field private mMusicPlayer:Landroid/media/MediaPlayer;

.field private mNavigationBarHeight:I

.field private mPlayBackRootView:Landroid/view/View;

.field private mPlayerSurface:Landroid/view/SurfaceHolder;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mRootView:Landroid/view/View;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSpeed:F

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mTopOffset:I

.field private mVideoPath:Ljava/lang/String;

.field private mbMediaPlayerPrepared:Z


# direct methods
.method public static synthetic $r8$lambda$--0UfMGmy1ICUcgF3LVp_9kKes4(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->lambda$createArcoreModeView$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-tNg-wg3vNBmyOi0yxM2s6OdFjg(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->lambda$createFunVideoModeView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9hf0OyFyU1G6_49rG_bnr1HjzCw(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->lambda$setPlayFunVideo$9(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OUoJ4YhgW7xfGMoaCGCS1E9V0V4(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->lambda$showErrorAndFinish$11(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TGKGlu6PDM7gUp1qYtcOTCBblHo(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->lambda$createFunVideoModeView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_ojQYik7GxR5IiKssDoQdkc1JdU(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->lambda$setPlayFunVideo$10(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$asxoqtWj0T4kKfvxNFPOESxaraU(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->lambda$setPlayFunVideo$8(Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$b7ghW3kIlgVlXKRevQzscHMU64E(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->lambda$createArcoreModeView$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$glkjKDECOO8FlJzNbLQ3OVJKCO8(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->lambda$createFunVideoModeView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jftNWoVJJjHzAu4KVihgPv8U4-g(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->lambda$createArcoreModeView$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rwxOiPrjQ1WP-rJ_SRGFthhmDjg(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->lambda$createFunVideoModeView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zoWdjV-3-KalYrj1osAT3zDIV1c(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->lambda$onCreateView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FunVideoReviewFragment"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 41
    sput v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->ARCORE_SCALE:F

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenWidth:I

    .line 43
    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenHeight:I

    .line 45
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIsLand:Z

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mPlayBackRootView:Landroid/view/View;

    .line 61
    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mTopOffset:I

    .line 62
    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mBottomOffset:I

    .line 63
    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mPreviewWidth:I

    .line 64
    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mPreviewHeight:I

    const/4 v2, -0x1

    .line 65
    iput v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mCutoutHeight:I

    .line 66
    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mNavigationBarHeight:I

    .line 71
    iput-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 72
    iput-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    .line 73
    iput-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mPlayerSurface:Landroid/view/SurfaceHolder;

    .line 74
    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mCurrentPosition:I

    .line 75
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mbMediaPlayerPrepared:Z

    .line 77
    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper;

    invoke-direct {v1}, Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mAnimatorHelper:Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper;

    .line 78
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIsSecureCamera:Z

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 37
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mPlayerSurface:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->setPlayFunVideo()V

    return-void
.end method

.method private changeReviewScale(F)V
    .locals 4

    .line 475
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mbMediaPlayerPrepared:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    goto :goto_3

    .line 483
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    .line 484
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    .line 486
    div-int/2addr v1, v0

    int-to-float v0, v1

    .line 487
    iget-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIsLand:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 489
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenHeight:I

    int-to-float v1, v0

    div-float/2addr v1, p1

    goto :goto_0

    .line 492
    :cond_1
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenHeight:I

    int-to-float v1, v0

    mul-float/2addr v1, p1

    :goto_0
    float-to-int p1, v1

    goto :goto_2

    :cond_2
    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 497
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenHeight:I

    int-to-float v1, v0

    mul-float/2addr v1, p1

    goto :goto_1

    .line 500
    :cond_3
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenHeight:I

    int-to-float v1, v0

    div-float/2addr v1, p1

    :goto_1
    float-to-int p1, v1

    move v3, v0

    move v0, p1

    move p1, v3

    .line 506
    :goto_2
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xd

    .line 507
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 508
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 476
    :cond_4
    :goto_3
    sget-object p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "resetReviewSize, mbMediaPlayerPrepared is false"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private createArcoreModeView()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/funvideo/R$id;->arcore_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcorePanel:Landroid/view/View;

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/funvideo/R$id;->arcore_bottom_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcoreBottomPanel:Landroid/view/View;

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/funvideo/R$id;->arcore_bottom_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcoreCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 152
    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/funvideo/R$id;->arcore_bottom_done:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcoreDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 160
    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/funvideo/R$id;->arcore_bottom_share:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcoreShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 168
    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$$ExternalSyntheticLambda10;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->initSurfaceViewAndOrientation()V

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcorePanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcoreBottomPanel:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mNavigationBarHeight:I

    invoke-virtual {v0, v1, v1, v1, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private createFunVideoModeView()V
    .locals 8

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/funvideo/R$id;->funvideo_bottom_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionsPanel:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/funvideo/R$id;->funvideo_bottom_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 106
    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/funvideo/R$id;->funvideo_bottom_done:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 115
    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/funvideo/R$id;->funvideo_bottom_share:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 124
    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/funvideo/R$id;->funvideo_bottom_share_vskit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionVskitShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 134
    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->initSurfaceViewAndOrientation()V

    .line 143
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isSecureCamera"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIsSecureCamera:Z

    .line 144
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->initViewLayout(Z)V

    .line 145
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mAnimatorHelper:Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    iget-boolean v3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIsSecureCamera:Z

    iget-object v4, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-object v5, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-object v6, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-object v7, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionsPanel:Landroid/view/View;

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper;->startAnimation(Landroid/content/Context;ZLandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private destroyPlayFunVideo()V
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const-string v2, "destroyPlayFunVideo"

    if-eqz v0, :cond_1

    .line 442
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 447
    iput-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 450
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 452
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 454
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 455
    iput-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    :cond_3
    const/4 v0, 0x0

    .line 457
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mbMediaPlayerPrepared:Z

    return-void
.end method

.method private getCurrentPlayFunVideoPosition()V
    .locals 3

    .line 434
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mCurrentPosition:I

    .line 436
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPosition, mCurrentPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mCurrentPosition:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private initSurfaceViewAndOrientation()V
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/funvideo/R$id;->funvideo_surface_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mSurfaceView:Landroid/view/SurfaceView;

    .line 181
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$MySurfaceHolderListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$MySurfaceHolderListener;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$1;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenWidth:I

    .line 184
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenHeight:I

    .line 185
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIscometoArcore:Z

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenHeight:I

    int-to-float v2, v1

    const v3, 0x3fe38e39

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 188
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 189
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateView,  mScreenWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mScreenHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIsLand:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIsLand:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private initViewLayout(Z)V
    .locals 3

    .line 195
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIsLand:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 196
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mNavigationBarHeight:I

    iget v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mCutoutHeight:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0, v1, v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->updateLayoutForNavigationBar(III)V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/funvideo/R$dimen;->funvideo_landbottom:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0, v1, v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->updateLayoutForNavigationBar(III)V

    :goto_0
    const/16 v0, 0x8

    if-eqz p1, :cond_1

    .line 201
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionVskitShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/funvideo/R$dimen;->funvideo_review_done_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 205
    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/funvideo/R$dimen;->funvideo_bottom_panel_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 206
    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/funvideo/R$dimen;->funvideo_bottom_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 204
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 209
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionVskitShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$createArcoreModeView$5(Landroid/view/View;)V
    .locals 1

    .line 153
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcoreDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 154
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcoreShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 155
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$createArcoreModeView$6(Landroid/view/View;)V
    .locals 1

    .line 161
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcoreCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 162
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcoreShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 163
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$createArcoreModeView$7(Landroid/view/View;)V
    .locals 1

    .line 169
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcoreDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 170
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcoreCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 171
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$createFunVideoModeView$1(Landroid/view/View;)V
    .locals 1

    .line 107
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 108
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 109
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 110
    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->setsFunVideoMsgTag(I)V

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$createFunVideoModeView$2(Landroid/view/View;)V
    .locals 1

    .line 116
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 117
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 118
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 119
    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->setsFunVideoMsgTag(I)V

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$createFunVideoModeView$3(Landroid/view/View;)V
    .locals 1

    .line 125
    sget-object p1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Share"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 127
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 128
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 129
    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->setsFunVideoMsgTag(I)V

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$createFunVideoModeView$4(Landroid/view/View;)V
    .locals 1

    .line 135
    sget-object p1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Share vskit"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 137
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 138
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 139
    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->setsFunVideoMsgTag(I)V

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static synthetic lambda$onCreateView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$setPlayFunVideo$10(Landroid/media/MediaPlayer;)V
    .locals 7

    const/4 v0, 0x1

    .line 392
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mbMediaPlayerPrepared:Z

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mSpeed:F

    float-to-double v3, v2

    const-wide v5, 0x3f1a36e2eb1c432dL    # 1.0E-4

    sub-double/2addr v3, v5

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v2}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 394
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->resetReviewSize()V

    .line 395
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mCurrentPosition:I

    if-lez v0, :cond_1

    .line 396
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 397
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 398
    iget v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 401
    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 402
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_2

    .line 403
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$setPlayFunVideo$8(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 375
    sget-object p1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "setPlayFunVideo onError, can\'t play this video."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 376
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->showErrorAndFinish()V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$setPlayFunVideo$9(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 384
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 385
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 386
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 387
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 389
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method private synthetic lambda$showErrorAndFinish$11(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 518
    sget-object p1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[showErrorAndFinish] on OK click, will finish activity"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 519
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 520
    invoke-static {p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->setsFunVideoMsgTag(I)V

    .line 521
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private pausePlayFunVideo()V
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pausePlayFunVideo"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    :cond_1
    return-void
.end method

.method private processOrientationChanged(I)V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 333
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_2

    .line 334
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_2
    return-void
.end method

.method private resetReviewSize()V
    .locals 3

    .line 461
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIscometoArcore:Z

    if-eqz v0, :cond_0

    .line 462
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->ARCORE_SCALE:F

    .line 463
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->changeReviewScale(F)V

    goto :goto_0

    :cond_0
    const v0, 0x3fe38e39

    .line 465
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->changeReviewScale(F)V

    .line 466
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIsLand:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 467
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mNavigationBarHeight:I

    iget v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mCutoutHeight:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0, v1, v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->updateLayoutForNavigationBar(III)V

    goto :goto_0

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/funvideo/R$dimen;->funvideo_landbottom:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0, v1, v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->updateLayoutForNavigationBar(III)V

    :goto_0
    return-void
.end method

.method private setPlayFunVideo()V
    .locals 3

    .line 359
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->destroyPlayFunVideo()V

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPath:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    .line 363
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 366
    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mPlayerSurface:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V

    .line 372
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 374
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 379
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 380
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 383
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 391
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 407
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 408
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setPlayFunVideo IOException, can\'t play this video."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 409
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->showErrorAndFinish()V

    :goto_0
    return-void
.end method

.method private showErrorAndFinish()V
    .locals 4

    .line 512
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showErrorAndFinish"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 513
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 514
    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 517
    :cond_0
    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;)V

    .line 524
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    .line 525
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, ""

    .line 526
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/funvideo/R$string;->cannot_play_dialog_string:I

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    .line 527
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 528
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 532
    :cond_1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mAlertDialog:Landroid/app/AlertDialog;

    return-void

    :cond_2
    :goto_0
    const-string p0, "[showErrorAndFinish] activity is finishing, do noting"

    .line 529
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private startPlayFunVideo()V
    .locals 3

    .line 424
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlayFunVideo, mbMediaPlayerPrepared:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mbMediaPlayerPrepared:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mbMediaPlayerPrepared:Z

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mbMediaPlayerPrepared:Z

    if-eqz v0, :cond_1

    .line 429
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_1
    return-void
.end method

.method private updateLayoutForNavigationBar(III)V
    .locals 1

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionsPanel:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p3, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 2

    .line 313
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 315
    invoke-static {v1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->setsFunVideoMsgTag(I)V

    .line 316
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 220
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 222
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIsLand:Z

    .line 224
    sget-object p1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged, mIsLand:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIsLand:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mScreenHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->resetReviewSize()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 230
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 231
    sget-object p1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 233
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->processFunVideoIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 83
    sget-object p3, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onCreateView"

    invoke-static {p3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    sget p3, Lcom/transsion/camera/feature/funvideo/R$layout;->funvideo_review_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mRootView:Landroid/view/View;

    .line 86
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 87
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 88
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIsLand:Z

    .line 89
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->displayMetrics:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le p2, p1, :cond_0

    const/4 p1, 0x1

    .line 90
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIsLand:Z

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/funvideo/R$id;->funvideo_review_group:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mPlayBackRootView:Landroid/view/View;

    .line 94
    new-instance p2, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$$ExternalSyntheticLambda11;

    invoke-direct {p2}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    iget-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIscometoArcore:Z

    if-eqz p1, :cond_1

    .line 96
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->createArcoreModeView()V

    goto :goto_0

    .line 98
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->createFunVideoModeView()V

    .line 100
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 321
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 322
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 323
    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mCurrentPosition:I

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 276
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onPause()V

    .line 277
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause FunVideoMsgTag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->getsFunVideoMsgTag()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 278
    iget-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIsSecureCamera:Z

    if-nez v1, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->pausePlayFunVideo()V

    goto :goto_0

    .line 281
    :cond_0
    invoke-static {}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->getsFunVideoMsgTag()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 283
    invoke-static {v2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->setsFunVideoMsgTag(I)V

    .line 284
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 285
    :cond_1
    invoke-static {}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->getsFunVideoMsgTag()I

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "do nothing"

    .line 286
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 289
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 259
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onResume()V

    .line 260
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 261
    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->setsFunVideoMsgTag(I)V

    .line 262
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->startPlayFunVideo()V

    .line 263
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIscometoArcore:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcoreCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcoreDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mArcoreShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionDoneView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 270
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mActionShareView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 296
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 297
    sget-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 299
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->getCurrentPlayFunVideoPosition()V

    .line 300
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->destroyPlayFunVideo()V

    .line 301
    invoke-static {}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->getsFunVideoMsgTag()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 302
    invoke-static {}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->getsFunVideoMsgTag()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1

    .line 303
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 304
    invoke-static {v1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->setsFunVideoMsgTag(I)V

    .line 308
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public processFunVideoIntent(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 240
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 242
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "key_iscome_to_arcore"

    const/4 v1, 0x0

    .line 243
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mIscometoArcore:Z

    const/16 v0, 0x500

    const-string v2, "key_preview_width"

    .line 244
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mPreviewWidth:I

    const/16 v0, 0x2d0

    const-string v2, "key_preview_height"

    .line 245
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mPreviewHeight:I

    const-string v0, "key_preview_top_offset"

    .line 246
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mTopOffset:I

    const-string v0, "key_preview_bottom_offset"

    .line 247
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mBottomOffset:I

    const-string v0, "key_preview_cutout_height"

    .line 248
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mCutoutHeight:I

    const-string v0, "key_preview_navigationbar_height"

    .line 249
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mNavigationBarHeight:I

    const-string v0, "key_video_path"

    const-string v1, ""

    .line 250
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mVideoPath:Ljava/lang/String;

    const-string v0, "key_music_path"

    .line 251
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mMusicPath:Ljava/lang/String;

    const-string v0, "key_speed"

    .line 252
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mSpeed:F

    .line 254
    sget-object p1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate, intent preview width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mPreviewWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mPreviewHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mTopOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoReviewFragment;->mBottomOffset:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

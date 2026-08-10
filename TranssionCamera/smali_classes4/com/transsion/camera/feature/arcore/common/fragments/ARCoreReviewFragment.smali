.class public Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;
.super Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;
.source "ARCoreReviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment$MySurfaceHolderListener;
    }
.end annotation


# static fields
.field private static ARCORE_SCALE:F = 0.0f

.field public static final RESULT_VIDEO_DELETE:I = 0x2

.field public static final RESULT_VIDEO_SAVE:I = 0x1

.field public static final RESULT_VIDEO_SHARE:I = 0x3

.field public static final RESULT_VIDEO_UNKOWN:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sARCoreMsgTag:I


# instance fields
.field private displayMetrics:Landroid/util/DisplayMetrics;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mArcoreCancelView:Landroid/widget/ImageView;

.field private mArcoreDoneView:Landroid/widget/ImageView;

.field private mArcorePanel:Landroid/view/ViewGroup;

.field private mArcoreShareView:Landroid/widget/ImageView;

.field private mBottomOffset:I

.field private mCurrentPosition:I

.field private mCutoutHeight:I

.field private mIsLand:Z

.field private mIsSecureCamera:Z

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
.method public static synthetic $r8$lambda$1ekAgRxqnTWaxUBJx7ih2kHQk7k(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->resetSurfaceViewSize()V

    return-void
.end method

.method public static synthetic $r8$lambda$2dSnsnZdgskHodBURS8lTw2JURg(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->lambda$showErrorAndFinish$7(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fw3PNcECxqaC5M9NjFpkWM3dGNU(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->lambda$onCreateView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Fw4ePsKDKik2X0ICICC6nHFbTM4(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->lambda$setPlayARCore$6(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JaqbY38BYNZLVOZeCn3Nc6oc3e8(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->lambda$setPlayARCore$4(Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WsIpEZ0QkvQdqpO9-AU9vpb-EXU(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->lambda$createArcoreModeView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d8u4bTTAPvRu6iwrHSmWEmln-rw(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->lambda$createArcoreModeView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s_ii6rQqjkSBAFs3xE2-mvEYVcI(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->lambda$setPlayARCore$5(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$scOxa2kGBR3ipzcrzQbRyRCf-gQ(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->lambda$createArcoreModeView$1(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ARCoreReviewFragment"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 31
    sput v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->ARCORE_SCALE:F

    const/4 v0, 0x0

    .line 41
    sput v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->sARCoreMsgTag:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mScreenWidth:I

    .line 33
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mScreenHeight:I

    .line 35
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mIsLand:Z

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mPlayBackRootView:Landroid/view/View;

    .line 50
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mTopOffset:I

    .line 51
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mBottomOffset:I

    .line 52
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mPreviewWidth:I

    .line 53
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mPreviewHeight:I

    const/4 v2, -0x1

    .line 54
    iput v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mCutoutHeight:I

    .line 55
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mNavigationBarHeight:I

    .line 60
    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 61
    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    .line 62
    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mPlayerSurface:Landroid/view/SurfaceHolder;

    .line 63
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mCurrentPosition:I

    .line 64
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mbMediaPlayerPrepared:Z

    .line 66
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mIsSecureCamera:Z

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 28
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mPlayerSurface:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->setPlayARCore()V

    return-void
.end method

.method private createArcoreModeView()V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/arcore/R$id;->operation_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mArcorePanel:Landroid/view/ViewGroup;

    .line 85
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 86
    invoke-virtual {p0}, Landroid/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->isExpandUI()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/transsion/camera/feature/arcore/R$layout;->include_arcore_review_action_panel_fold:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/camera/feature/arcore/R$layout;->include_arcore_review_action_panel_old:I

    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mArcorePanel:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/arcore/R$id;->arcore_bottom_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mArcoreCancelView:Landroid/widget/ImageView;

    .line 88
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/arcore/R$id;->arcore_bottom_done:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mArcoreDoneView:Landroid/widget/ImageView;

    .line 96
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/arcore/R$id;->arcore_bottom_share:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mArcoreShareView:Landroid/widget/ImageView;

    .line 104
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->initSurfaceViewAndOrientation()V

    .line 111
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->isExpandUI()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mArcorePanel:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/arcore/R$id;->arcore_bottom_panel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mNavigationBarHeight:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method private destroyPlayARCore()V
    .locals 3

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 329
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "mMediaPlayer destroyPlayARCore"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 334
    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 337
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "mMusicPlayer destroyPlayARCore"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 342
    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    :cond_3
    const/4 v0, 0x0

    .line 344
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mbMediaPlayerPrepared:Z

    return-void
.end method

.method private getCurrentPlayARCorePosition()V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mCurrentPosition:I

    .line 323
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPosition, mCurrentPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mCurrentPosition:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private initSurfaceViewAndOrientation()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/arcore/R$id;->surface_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mSurfaceView:Landroid/view/SurfaceView;

    .line 118
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment$MySurfaceHolderListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment$MySurfaceHolderListener;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment$1;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method private isExpandUI()Z
    .locals 0

    .line 80
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;->isExpandUI()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$createArcoreModeView$1(Landroid/view/View;)V
    .locals 1

    .line 89
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mArcoreDoneView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 90
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mArcoreShareView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 91
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$createArcoreModeView$2(Landroid/view/View;)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mArcoreCancelView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 98
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mArcoreShareView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$createArcoreModeView$3(Landroid/view/View;)V
    .locals 1

    .line 105
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mArcoreDoneView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 106
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mArcoreCancelView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 107
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static synthetic lambda$onCreateView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$setPlayARCore$4(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 262
    sget-object p1, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "setPlayARCore onError, can\'t play this video."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 263
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->showErrorAndFinish()V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$setPlayARCore$5(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 271
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 272
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 273
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 274
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 276
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method private synthetic lambda$setPlayARCore$6(Landroid/media/MediaPlayer;)V
    .locals 7

    const/4 v0, 0x1

    .line 279
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mbMediaPlayerPrepared:Z

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mSpeed:F

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

    .line 281
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->resetSurfaceViewSize()V

    .line 282
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mCurrentPosition:I

    if-lez v0, :cond_1

    .line 283
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 285
    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 288
    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 289
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_2

    .line 290
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$showErrorAndFinish$7(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 370
    sget-object p1, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[showErrorAndFinish] on OK click, will finish activity"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 371
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 372
    sput p2, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->sARCoreMsgTag:I

    .line 373
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private pausePlayARCore()V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pausePlayARCore"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    :cond_1
    return-void
.end method

.method private resetSurfaceViewSize()V
    .locals 8

    .line 348
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    .line 349
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    .line 350
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 351
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 352
    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v5, 0x0

    .line 353
    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 354
    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    int-to-float v7, v1

    div-float/2addr v5, v7

    int-to-float v2, v2

    mul-float/2addr v2, v6

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v2, v5, v2

    const-string v3, ":"

    if-lez v2, :cond_0

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "H,"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    goto :goto_0

    .line 358
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "W,"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 360
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v4}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setPlayARCore()V
    .locals 3

    .line 246
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->destroyPlayARCore()V

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMusicPath:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    .line 250
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 253
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMusicPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mPlayerSurface:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 267
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 278
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 294
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 295
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setPlayFunVideo IOException, can\'t play this video."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 296
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->showErrorAndFinish()V

    :goto_0
    return-void
.end method

.method private showErrorAndFinish()V
    .locals 4

    .line 364
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showErrorAndFinish"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 366
    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 369
    :cond_0
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;)V

    .line 376
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    .line 377
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, ""

    .line 378
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/arcore/R$string;->cannot_play_dialog_string:I

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    .line 379
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 380
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mAlertDialog:Landroid/app/AlertDialog;

    return-void

    :cond_2
    :goto_0
    const-string p0, "[showErrorAndFinish] activity is finishing, do noting"

    .line 381
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private startPlayARCore()V
    .locals 3

    .line 311
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlayARCore, mbMediaPlayerPrepared:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mbMediaPlayerPrepared:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mbMediaPlayerPrepared:Z

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mbMediaPlayerPrepared:Z

    if-eqz v0, :cond_1

    .line 316
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 2

    .line 212
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 214
    sput v1, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->sARCoreMsgTag:I

    .line 215
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 123
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 125
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mIsLand:Z

    .line 127
    sget-object p1, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged, mIsLand:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mIsLand:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mScreenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mScreenHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->createArcoreModeView()V

    .line 130
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mRootView:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 135
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    sget-object p1, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->processARCoreIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 71
    sget-object p3, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onCreateView"

    invoke-static {p3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 72
    sget p3, Lcom/transsion/camera/feature/arcore/R$layout;->arcore_review_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mRootView:Landroid/view/View;

    .line 73
    sget p2, Lcom/transsion/camera/feature/arcore/R$id;->operation_panel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mArcorePanel:Landroid/view/ViewGroup;

    .line 74
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mRootView:Landroid/view/View;

    new-instance p2, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment$$ExternalSyntheticLambda5;

    invoke-direct {p2}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 75
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->createArcoreModeView()V

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 220
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 221
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 222
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mCurrentPosition:I

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 174
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onPause()V

    .line 175
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 177
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mIsSecureCamera:Z

    if-nez v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->pausePlayARCore()V

    goto :goto_2

    .line 180
    :cond_0
    sget v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->sARCoreMsgTag:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1

    .line 182
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 183
    sput v1, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->sARCoreMsgTag:I

    .line 187
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 163
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->onResume()V

    .line 164
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 165
    sput v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->sARCoreMsgTag:I

    .line 166
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->startPlayARCore()V

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mArcoreCancelView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mArcoreDoneView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mArcoreShareView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 193
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 194
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->getCurrentPlayARCorePosition()V

    .line 197
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->destroyPlayARCore()V

    .line 198
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mIsSecureCamera:Z

    if-nez v0, :cond_2

    .line 199
    sget v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->sARCoreMsgTag:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1

    .line 201
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 202
    sput v1, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->sARCoreMsgTag:I

    .line 206
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method public processARCoreIntent(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 145
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 147
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/16 v0, 0x500

    const-string v1, "key_preview_width"

    .line 148
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mPreviewWidth:I

    const/16 v0, 0x2d0

    const-string v1, "key_preview_height"

    .line 149
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mPreviewHeight:I

    const-string v0, "key_preview_top_offset"

    const/4 v1, 0x0

    .line 150
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mTopOffset:I

    const-string v0, "key_preview_bottom_offset"

    .line 151
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mBottomOffset:I

    const-string v0, "key_preview_cutout_height"

    .line 152
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mCutoutHeight:I

    const-string v0, "key_preview_navigationbar_height"

    .line 153
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mNavigationBarHeight:I

    const-string v0, "key_video_path"

    const-string v1, ""

    .line 154
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mVideoPath:Ljava/lang/String;

    const-string v0, "key_music_path"

    .line 155
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mMusicPath:Ljava/lang/String;

    const-string v0, "key_speed"

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mSpeed:F

    .line 158
    sget-object p1, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate, intent preview width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mPreviewWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mPreviewHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mTopOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->mBottomOffset:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

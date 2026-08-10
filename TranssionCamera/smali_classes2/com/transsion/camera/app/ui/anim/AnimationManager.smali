.class public Lcom/transsion/camera/app/ui/anim/AnimationManager;
.super Ljava/lang/Object;
.source "AnimationManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/anim/AnimationManager$AnimationHandler;
    }
.end annotation


# static fields
.field private static final ACTION_HIDE_ANIM_DELAY_MS_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACTION_HIDE_ANIM_TYPE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACTION_SHOW_ANIM_TYPE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAnimationCount:I

.field private mAnimatorSwitchViewFadeAway:Landroid/animation/Animator;

.field private mAnimatorSwitchViewScale:Landroid/animation/Animator;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMode:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private volatile mIsAnimating:Z

.field private mIsSwitchAnim:Z

.field private mNeedBuildBlurCover:Z

.field private mNeedRectChangedAnim:Z

.field private volatile mNeedWideScaleAnim:Z

.field private mNextCameraId:Ljava/lang/String;

.field private mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPreCameraId:Ljava/lang/String;

.field private mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mPreviewRenderCallback:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

.field private mRootView:Landroid/view/View;

.field private mScreenFormType:I

.field private final mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mScreenSupplyColor:I

.field private mSwitchAnimStart:Z

.field private mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

.field private mUnifyCaptureAnimation:Z


# direct methods
.method public static synthetic $r8$lambda$DWdjFd9Pvdjz1OTPLsqBhUCevIc(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->lambda$new$0(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AnimationManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 107
    new-instance v0, Lcom/transsion/camera/app/ui/anim/AnimationManager$2;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_SHOW_ANIM_TYPE_MAP:Ljava/util/HashMap;

    .line 121
    new-instance v0, Lcom/transsion/camera/app/ui/anim/AnimationManager$3;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$3;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_HIDE_ANIM_TYPE_MAP:Ljava/util/HashMap;

    .line 134
    new-instance v0, Lcom/transsion/camera/app/ui/anim/AnimationManager$4;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$4;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_HIDE_ANIM_DELAY_MS_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;)V
    .locals 2

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    .line 62
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    .line 63
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedWideScaleAnim:Z

    .line 64
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedRectChangedAnim:Z

    .line 69
    iput v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenFormType:I

    const-string v1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    .line 74
    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mCurrentMode:Ljava/lang/String;

    const-string v1, "0"

    .line 76
    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreCameraId:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNextCameraId:Ljava/lang/String;

    .line 80
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimStart:Z

    .line 81
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsSwitchAnim:Z

    const/4 v1, 0x0

    .line 83
    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewFadeAway:Landroid/animation/Animator;

    .line 85
    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewScale:Landroid/animation/Animator;

    .line 89
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewRect:Landroid/graphics/Rect;

    .line 90
    new-instance v1, Lcom/transsion/camera/app/ui/anim/AnimationManager$AnimationHandler;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$AnimationHandler;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mUnifyCaptureAnimation:Z

    .line 95
    new-instance v1, Lcom/transsion/camera/app/ui/anim/AnimationManager$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$1;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewRenderCallback:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    .line 633
    new-instance v1, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 173
    iput-object p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 174
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenFormType:I

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mContext:Landroid/content/Context;

    .line 176
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mRootView:Landroid/view/View;

    const p1, 0x7f0603f5

    .line 178
    invoke-virtual {p2, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenSupplyColor:I

    .line 179
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->screenPocket()Z

    move-result p1

    if-nez p1, :cond_0

    .line 180
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x1

    .line 183
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedBuildBlurCover:Z

    .line 184
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0500b4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mUnifyCaptureAnimation:Z

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedWideScaleAnim:Z

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->startWideAnim(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->animationHidePreviewCover()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->hidePreviewCover()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->drawBlackPreviewCover()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Landroid/view/View;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Lcom/transsion/camera/app/ui/view/SwitchAnimView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    return-object p0
.end method

.method static synthetic access$502(Lcom/transsion/camera/app/ui/anim/AnimationManager;Lcom/transsion/camera/app/ui/view/SwitchAnimView;)Lcom/transsion/camera/app/ui/view/SwitchAnimView;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Landroid/graphics/Rect;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimStart:Z

    return p0
.end method

.method static synthetic access$702(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimStart:Z

    return p1
.end method

.method static synthetic access$802(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsSwitchAnim:Z

    return p1
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->startFlipHideCoverAnim()V

    return-void
.end method

.method private animationHidePreviewCover()V
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 376
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 378
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 379
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->clear()V

    .line 380
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    const/4 v0, 0x0

    .line 381
    iput v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    .line 382
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    .line 383
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedWideScaleAnim:Z

    .line 384
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedRectChangedAnim:Z

    .line 385
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewScale:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    const/4 v1, 0x0

    .line 386
    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewScale:Landroid/animation/Animator;

    .line 387
    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewFadeAway:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->removeAllListeners()V

    .line 388
    iput-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewFadeAway:Landroid/animation/Animator;

    .line 389
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsSwitchAnim:Z

    return-void
.end method

.method private cancelFlipAnim()V
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewScale:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 465
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewFadeAway:Landroid/animation/Animator;

    if-eqz p0, :cond_1

    .line 466
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    return-void
.end method

.method private drawBlackPreviewCover()V
    .locals 2

    .line 569
    iget v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    if-eqz v0, :cond_0

    return-void

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 572
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const v0, 0x7f0603cb

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(I)V

    :cond_1
    return-void
.end method

.method private hidePreviewCover()V
    .locals 3

    .line 544
    iget v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    if-eqz v0, :cond_0

    return-void

    .line 545
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hidePreviewCover switchAnimView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "hidePreviewCover"

    .line 547
    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 548
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsSwitchAnim:Z

    if-eqz v0, :cond_2

    .line 549
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimStart:Z

    if-eqz v0, :cond_1

    .line 550
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimStart:Z

    goto :goto_0

    .line 552
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->startFlipHideCoverAnim()V

    :goto_0
    return-void

    .line 556
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 557
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 558
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->clear()V

    .line 560
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 562
    :cond_3
    iput v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    .line 563
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    .line 564
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedWideScaleAnim:Z

    .line 565
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedRectChangedAnim:Z

    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 635
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 636
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/high16 p0, -0x1000000

    goto :goto_0

    .line 637
    :cond_0
    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenSupplyColor:I

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method private screenPocket()Z
    .locals 1

    .line 188
    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenFormType:I

    const/4 v0, 0x5

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showPreviewCover(I)V
    .locals 3

    .line 487
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    if-eqz v0, :cond_5

    .line 489
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 495
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mCurrentMode:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.timelapsemode.TimelapsePhotoModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 498
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 499
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 500
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->clear()V

    .line 501
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mUnifyCaptureAnimation:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 502
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const v0, 0x7f0603ca

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(I)V

    goto :goto_0

    .line 504
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const v0, 0x7f0603c9

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(I)V

    .line 506
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 507
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5a

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 509
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 511
    invoke-interface {p1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->stopRenderRequest()V

    .line 513
    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->updateBlurBitmap(Landroid/view/View;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private startFlipAnim(I)V
    .locals 2

    .line 393
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    if-eqz p1, :cond_1

    .line 394
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 398
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 399
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 400
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 401
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f02002e

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewScale:Landroid/animation/Animator;

    .line 402
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewScale:Landroid/animation/Animator;

    new-instance v1, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 432
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewScale:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 433
    sget-object p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "previewView.startAnimation"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private startFlipHideCoverAnim()V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f02002d

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewFadeAway:Landroid/animation/Animator;

    .line 439
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 440
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewFadeAway:Landroid/animation/Animator;

    new-instance v1, Lcom/transsion/camera/app/ui/anim/AnimationManager$8;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$8;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 458
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimatorSwitchViewFadeAway:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private startPreviewCoverAnim(II)V
    .locals 5

    .line 336
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNextCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsSwitchAnim:Z

    if-eqz v0, :cond_0

    .line 337
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->cancelFlipAnim()V

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    const/16 v2, 0x34

    if-eq p1, v2, :cond_3

    :cond_1
    if-nez p2, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    if-ne p1, v0, :cond_4

    .line 342
    :cond_3
    iget v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    .line 344
    :cond_4
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    if-eqz v2, :cond_8

    if-eq p2, v0, :cond_5

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_6

    .line 349
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedWideScaleAnim:Z

    :cond_6
    const/16 v0, 0x3f

    if-ne p1, v0, :cond_7

    const/4 v0, 0x0

    .line 352
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->startWideAnim(Z)V

    .line 354
    :cond_7
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreviewCoverAnim type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", action:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mIsAnimating :"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", animationCount:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " return."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 358
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "camera_switch_flip"

    invoke-static {v0, v3, v2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    .line 361
    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNextCameraId:Ljava/lang/String;

    invoke-static {v2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v2

    .line 362
    iget-object v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreCameraId:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNextCameraId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    if-nez v0, :cond_9

    if-eqz v2, :cond_a

    .line 363
    :cond_9
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->startFlipAnim(I)V

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNextCameraId:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreCameraId:Ljava/lang/String;

    .line 367
    :cond_a
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    .line 368
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreviewCoverAnim action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", type:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",animationCount:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mNeedBuildBlurCover:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedBuildBlurCover:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 370
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->showPreviewCover(I)V

    return-void
.end method

.method private startWideAnim(Z)V
    .locals 3

    .line 577
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 580
    new-instance v0, Lcom/transsion/camera/app/ui/anim/AnimationManager$9;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$9;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 588
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v1}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewView()Landroid/view/View;

    move-result-object v1

    .line 589
    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {v2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 591
    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->updateBlurBitmap(Landroid/view/View;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V

    .line 594
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->startWideChangeAnim(ZLcom/transsion/camera/app/ui/view/SwitchAnimView$AnimEndCallback;)V

    :cond_2
    return-void
.end method

.method private stopPreviewCoverAnim(III)V
    .locals 9

    .line 295
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIsAnimating:Z

    const-string v1, "stopPreviewCoverAnim action:"

    if-nez v0, :cond_0

    .line 296
    sget-object p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", return."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 300
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedBuildBlurCover:Z

    const/4 v2, 0x3

    if-ne p2, v0, :cond_1

    if-eq p1, v2, :cond_3

    const/16 v3, 0x35

    if-eq p1, v3, :cond_3

    :cond_1
    if-nez p2, :cond_2

    if-eq p1, v0, :cond_3

    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_4

    const/4 v3, 0x5

    if-ne p1, v3, :cond_4

    .line 305
    :cond_3
    iget v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    :cond_4
    const/16 v3, 0x1b

    const/16 v4, 0x9

    if-eq p1, v4, :cond_5

    if-ne p1, v3, :cond_6

    :cond_5
    const/4 v5, 0x0

    .line 308
    iput v5, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    .line 310
    :cond_6
    iget v5, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    const-string v6, ", animationCount:"

    const-string v7, ", type:"

    if-lez v5, :cond_7

    .line 311
    sget-object p3, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not zero, return."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 315
    :cond_7
    sget-object v5, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mAnimationCount:I

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 316
    iget-object p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    invoke-interface {p2}, Lcom/transsion/camera/app/ui/preview/IPreviewController;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p2

    if-eqz p2, :cond_a

    if-ne p1, v3, :cond_8

    .line 319
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 320
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->hidePreviewCover()V

    const/4 p0, 0x0

    .line 321
    invoke-interface {p2, p0, p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V

    goto :goto_0

    :cond_8
    if-ne p1, v4, :cond_9

    .line 323
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    int-to-long v0, p3

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 325
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewRenderCallback:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p2, p1, p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V

    goto :goto_0

    .line 327
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewRenderCallback:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p2, p1, p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V

    goto :goto_0

    .line 330
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 331
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    int-to-long p1, p3

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method private updateBlurBitmap(Landroid/view/View;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V
    .locals 6

    .line 519
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 520
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 521
    sget-object v1, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateBlurBitmap preview width "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mNeedBuildBlurCover:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedBuildBlurCover:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 525
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedBuildBlurCover:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 528
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 529
    iget-object v4, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->getPreferFactor()I

    move-result v4

    .line 530
    invoke-interface {p2, v0, p1, v4}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 531
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateBlurBitmap getPreview factor: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bitmap spent time: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 533
    iget-object p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(Landroid/graphics/Bitmap;)V

    .line 534
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setBlurEffect()V

    goto :goto_1

    .line 536
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const p2, 0x7f080405

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(I)V

    goto :goto_1

    .line 526
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const p2, 0x7f0603cb

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(I)V

    .line 539
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 540
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_3

    const/high16 p0, -0x1000000

    goto :goto_2

    :cond_3
    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenSupplyColor:I

    :goto_2
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public cameraOperateAction(I)V
    .locals 3

    .line 277
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cameraOperateAction action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 278
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_SHOW_ANIM_TYPE_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->startPreviewCoverAnim(II)V

    goto :goto_0

    .line 280
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_HIDE_ANIM_DELAY_MS_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    sget-object v1, Lcom/transsion/camera/app/ui/anim/AnimationManager;->ACTION_HIDE_ANIM_TYPE_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->stopPreviewCoverAnim(III)V

    :cond_1
    :goto_0
    return-void
.end method

.method public hideCustomPreviewCover()V
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 481
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 482
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->clear()V

    :cond_0
    return-void
.end method

.method public inflate()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/transsion/camera/app/ui/anim/AnimationManager$5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$5;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public needBuildBlurCoverView(Z)V
    .locals 0

    .line 212
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedBuildBlurCover:Z

    return-void
.end method

.method public needRectChangedAnimation(Z)V
    .locals 3

    .line 629
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needRectChangedAnimation needAnim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 630
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedRectChangedAnim:Z

    return-void
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 10

    .line 237
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->screenPocket()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 239
    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 241
    :cond_0
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNeedRectChangedAnim:Z

    .line 242
    iget-object v3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 243
    iget-object v4, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v4, :cond_2

    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    move v6, v1

    const-wide/16 v7, 0x12c

    const/4 v9, 0x0

    move-object v5, p1

    .line 244
    invoke-virtual/range {v4 .. v9}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->updateTargetRect(Landroid/graphics/Rect;ZJLandroid/animation/Animator$AnimatorListener;)V

    :cond_2
    return-void
.end method

.method public onScreenFormChanged(I)V
    .locals 0

    .line 216
    iput p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenFormType:I

    return-void
.end method

.method public onSwitchMode(Ljava/lang/String;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mCurrentMode:Ljava/lang/String;

    return-void
.end method

.method public resetRootParentLayout()V
    .locals 5

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 221
    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 222
    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 223
    :goto_0
    iget-object v4, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v4, :cond_2

    .line 224
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_1

    .line 225
    iget-object v2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getColumnPreviewStartMargin()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v4, v2, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 226
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 227
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public resetTargetRect(IIII)V
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz p0, :cond_0

    .line 250
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->resetTargetRect(IIII)V

    :cond_0
    return-void
.end method

.method public runCoverAnimator(IIIIJ)V
    .locals 6

    .line 255
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 256
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 258
    new-instance v5, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;

    invoke-direct {v5, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    move-wide v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->updateTargetRect(Landroid/graphics/Rect;ZJLandroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method public setCameraId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreCameraId:Ljava/lang/String;

    .line 287
    iput-object p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mNextCameraId:Ljava/lang/String;

    return-void
.end method

.method public setPreviewController(Lcom/transsion/camera/app/ui/preview/IPreviewController;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewController:Lcom/transsion/camera/app/ui/preview/IPreviewController;

    return-void
.end method

.method public showCustomPreviewCover(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 471
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-eqz v0, :cond_1

    .line 472
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(Landroid/graphics/Bitmap;)V

    .line 473
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 474
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 p0, -0x1000000

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mScreenSupplyColor:I

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public unInit()V
    .locals 2

    .line 622
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 623
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->screenPocket()Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    :cond_0
    return-void
.end method

.class public abstract Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;
.super Ljava/lang/Object;
.source "AbstractCameraSwitcherUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/ICameraSwitcherUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final INTERPOLATOR_IN:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCameraSwitchListener:Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

.field private mCameraSwitcherIn:Landroid/animation/ObjectAnimator;

.field private mCameraSwitcherOut:Landroid/animation/ObjectAnimator;

.field protected mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mLensVisible:Z

.field private mOldValue:Z

.field private mOrientation:I

.field private mScreenFormType:I


# direct methods
.method public static synthetic $r8$lambda$PoauT-g-ZMSWRisIKTmaBG8B9as(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->lambda$wrapDrawable$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 53
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f28f5c3    # 0.66f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->INTERPOLATOR_IN:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mScreenFormType:I

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mOrientation:I

    .line 197
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$2;-><init>(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 58
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mScreenFormType:I

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitchListener:Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->wrapDrawable()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mOldValue:Z

    return p0
.end method

.method static synthetic access$302(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mOldValue:Z

    return p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mOrientation:I

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;II)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->updateLayoutParams(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherIn:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private synthetic lambda$wrapDrawable$0()V
    .locals 1

    .line 209
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mOldValue:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const v0, 0x7f0805cb

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const v0, 0x7f0805ca

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private runAnimation()V
    .locals 7

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v0, :cond_0

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherIn:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherOut:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0x15e

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherOut:Landroid/animation/ObjectAnimator;

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v4

    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherIn:Landroid/animation/ObjectAnimator;

    .line 231
    sget-object v1, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->INTERPOLATOR_IN:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherOut:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$3;-><init>(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 242
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private updateLayoutParams(II)V
    .locals 4

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v0, :cond_0

    return-void

    .line 249
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 250
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 251
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 252
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x800015

    if-ne p2, v2, :cond_4

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_3

    const/16 p2, 0xb4

    if-eq p1, p2, :cond_2

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_1

    const/16 p1, 0x31

    .line 267
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    .line 262
    :cond_1
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    :cond_2
    const/16 p1, 0x51

    .line 259
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    :cond_3
    const p1, 0x800013

    .line 256
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    :cond_4
    const/4 p1, 0x3

    if-eqz p2, :cond_5

    const/4 v2, 0x2

    if-eq p2, v2, :cond_5

    if-ne p2, p1, :cond_9

    .line 272
    :cond_5
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 273
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mLensVisible:Z

    if-eqz v2, :cond_8

    if-eqz p2, :cond_7

    if-ne p2, p1, :cond_6

    goto :goto_0

    :cond_6
    const p1, 0x7f0700d9

    .line 277
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_1

    :cond_7
    :goto_0
    const p1, 0x7f0700d8

    .line 275
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_1

    :cond_8
    const p1, 0x7f0700d6

    .line 280
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 283
    :cond_9
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private wrapDrawable()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected abstract getAnimatorDrawableId(Z)I
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c019b

    const/4 v1, 0x1

    .line 63
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900bd

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 65
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    .line 66
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "front"

    goto :goto_0

    :cond_0
    const-string p1, "back"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 68
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mOldValue:Z

    .line 70
    iget p2, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mOrientation:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    iget p2, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mScreenFormType:I

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->updateLayoutParams(II)V

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method public onOrientationChanged(IZ)V
    .locals 2

    .line 89
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mOrientation:I

    .line 90
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mScreenFormType:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->runAnimation()V

    goto :goto_1

    .line 97
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->updateLayoutParams(II)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    .line 100
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_3

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_3
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mScreenFormType:I

    .line 108
    iget p2, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mOrientation:I

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->updateLayoutParams(II)V

    return-void
.end method

.method public setCameraSwitchListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitchListener:Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_0

    .line 160
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setupViews()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 78
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->wrapDrawable()V

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public startAnimation()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 133
    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    .line 135
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mOldValue:Z

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->getAnimatorDrawableId(Z)I

    move-result v0

    if-lez v0, :cond_0

    .line 137
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 139
    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    .line 140
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$1;-><init>(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 1

    .line 84
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public updateLayoutParams(Z)V
    .locals 3

    .line 166
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLayoutParams lensVisible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v1, :cond_0

    const-string p0, "mCameraSwitcherView is null"

    .line 168
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 172
    :cond_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 176
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mScreenFormType:I

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const v1, 0x7f0700d9

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    const v1, 0x7f0700d8

    .line 177
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1

    :cond_3
    const v1, 0x7f0700d6

    .line 182
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 184
    :goto_1
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mLensVisible:Z

    .line 186
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 187
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 188
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

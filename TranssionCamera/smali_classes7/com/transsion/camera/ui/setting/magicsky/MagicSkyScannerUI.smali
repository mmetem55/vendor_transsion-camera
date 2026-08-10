.class public Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "MagicSkyScannerUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;,
        Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;
    }
.end annotation


# static fields
.field private static final DELAY_12S_TIME:I = 0x2ee0

.field private static final DELAY_3S_TIME:I = 0xbb8

.field private static final DELAY_9S_TIME:I = 0x2328

.field private static final MSG_12S_DELAY:I = 0x4

.field private static final MSG_3S_DELAY:I = 0x1

.field private static final MSG_9S_DELAY:I = 0x0

.field private static final MSG_DETECT_SKY:I = 0x2

.field private static final MSG_NOT_DETECT_SKY:I = 0x3

.field private static final RATIO_1_1:F = 1.0f

.field private static final RATIO_4_3:F = 1.3333334f


# instance fields
.field private mAnimatorAlpha:Landroid/animation/ObjectAnimator;

.field private mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mContext:Landroid/content/Context;

.field private mCutoutBaseLine:I

.field private mDetectCount:I

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mIsContinuousNotDetect:Z

.field private mIsPreviewStarted:Z

.field private mIsStateTwo:Z

.field private mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mMarginBottom:I

.field private mMarginLeft:I

.field private mMarginTop:I

.field private mPreviewHeight:I

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mPreviewWidth:I

.field private mScanViewHeight:I

.field private mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mTranslation:I

.field private mTranslationEnd:I

.field private mTranslationInterval:I

.field private final magicSkyUIHandler:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 82
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    const/16 v1, 0xf0

    .line 52
    iput v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationInterval:I

    const/16 v1, 0x1e0

    .line 53
    iput v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    const/16 v1, 0x4b0

    .line 54
    iput v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationEnd:I

    .line 67
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewRect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    .line 70
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsContinuousNotDetect:Z

    .line 71
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsStateTwo:Z

    .line 72
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsPreviewStarted:Z

    const/16 v1, 0xa

    .line 73
    iput v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mDetectCount:I

    .line 78
    new-instance v1, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 79
    new-instance v1, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 83
    new-instance v0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->magicSkyUIHandler:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;

    .line 84
    new-instance v0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;-><init>(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationEnd:I

    return p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->animationStateTwo()V

    return-void
.end method

.method static synthetic access$1300(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->setIsStateTwo(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->scanViewAnimStart()V

    return-void
.end method

.method static synthetic access$1500(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->scanViewAnimEnd()V

    return-void
.end method

.method static synthetic access$1600(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mDetectCount:I

    return p0
.end method

.method static synthetic access$1602(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mDetectCount:I

    return p1
.end method

.method static synthetic access$1610(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I
    .locals 2

    .line 39
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mDetectCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mDetectCount:I

    return v0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsContinuousNotDetect:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsContinuousNotDetect:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->magicSkyUIHandler:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    return p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    return p1
.end method

.method static synthetic access$212(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;I)I
    .locals 1

    .line 39
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    return v0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationInterval:I

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewWidth:I

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;II)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->setTranslation(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewHeight:I

    return p0
.end method

.method private animationStateTwo()V
    .locals 4

    .line 452
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsContinuousNotDetect:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 455
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsStateTwo:Z

    .line 456
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1001a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 457
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 458
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mAnimatorAlpha:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    .line 459
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 463
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->magicSkyUIHandler:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 464
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->magicSkyUIHandler:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private scanViewAnimEnd()V
    .locals 3

    .line 468
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 469
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsStateTwo:Z

    .line 470
    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    .line 471
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mAnimatorAlpha:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 472
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 473
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mAnimatorAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    iget v2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 476
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private scanViewAnimStart()V
    .locals 7

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1001a4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsStateTwo:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsPreviewStarted:Z

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 401
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsContinuousNotDetect:Z

    if-nez v0, :cond_2

    return-void

    .line 404
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mAnimatorAlpha:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 405
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 407
    :cond_3
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v2, :cond_7

    .line 408
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v5, 0x5a

    if-eq v0, v5, :cond_6

    const/16 v5, 0xb4

    if-eq v0, v5, :cond_5

    const/16 v5, 0x10e

    if-eq v0, v5, :cond_4

    .line 423
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewHeight:I

    neg-int v0, v0

    div-int/2addr v0, v4

    iget v5, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    div-int/2addr v5, v4

    add-int/2addr v0, v5

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    .line 424
    invoke-direct {p0, v3, v0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->setTranslation(II)V

    goto :goto_0

    .line 418
    :cond_4
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewWidth:I

    div-int/2addr v0, v4

    iget v5, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    div-int/2addr v5, v4

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    .line 419
    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->setTranslation(II)V

    goto :goto_0

    .line 414
    :cond_5
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewHeight:I

    div-int/2addr v0, v4

    iget v5, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    div-int/2addr v5, v4

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    .line 415
    invoke-direct {p0, v3, v0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->setTranslation(II)V

    goto :goto_0

    .line 410
    :cond_6
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewWidth:I

    neg-int v0, v0

    div-int/2addr v0, v4

    iget v5, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    div-int/2addr v5, v4

    add-int/2addr v0, v5

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    .line 411
    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->setTranslation(II)V

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_8

    if-ne v0, v4, :cond_9

    .line 428
    :cond_8
    iput v3, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    .line 429
    invoke-direct {p0, v3, v3}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->setTranslation(II)V

    .line 431
    :cond_9
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->startAnim()V

    .line 433
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_a

    .line 435
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 437
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v5, "alpha"

    invoke-static {v0, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mAnimatorAlpha:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    .line 438
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 439
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mAnimatorAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 440
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mAnimatorAlpha:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 441
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mAnimatorAlpha:Landroid/animation/ObjectAnimator;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 442
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v0, v2, :cond_b

    .line 443
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->magicSkyUIHandler:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 444
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->magicSkyUIHandler:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;

    const-wide/16 v2, 0x2ee0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_b
    if-eqz v0, :cond_c

    if-ne v0, v4, :cond_d

    .line 446
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->magicSkyUIHandler:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 447
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->magicSkyUIHandler:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;

    const-wide/16 v0, 0x2328

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_d
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setIsStateTwo(Z)V
    .locals 0

    .line 482
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsStateTwo:Z

    return-void
.end method

.method private setTranslation(II)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    int-to-float p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private setTranslationParameter()V
    .locals 6

    .line 233
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 234
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    .line 249
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewHeight:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationEnd:I

    .line 250
    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationInterval:I

    goto/16 :goto_1

    .line 244
    :cond_0
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewWidth:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationEnd:I

    neg-int v0, v0

    .line 245
    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationInterval:I

    goto/16 :goto_1

    .line 240
    :cond_1
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewHeight:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationEnd:I

    neg-int v0, v0

    .line 241
    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationInterval:I

    goto :goto_1

    .line 236
    :cond_2
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewWidth:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationEnd:I

    .line 237
    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationInterval:I

    goto :goto_1

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    if-eqz v0, :cond_6

    if-ne v0, v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    if-ne v0, v3, :cond_8

    .line 262
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewHeight:I

    int-to-float v3, v0

    iget v4, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpl-float v1, v3, v1

    if-nez v1, :cond_5

    .line 263
    iget v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationEnd:I

    .line 264
    div-int/2addr v0, v2

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationInterval:I

    goto :goto_1

    .line 266
    :cond_5
    iget v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mCutoutBaseLine:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationEnd:I

    .line 267
    div-int/2addr v0, v2

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationInterval:I

    goto :goto_1

    .line 254
    :cond_6
    :goto_0
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewHeight:I

    int-to-float v3, v0

    iget v4, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewWidth:I

    int-to-float v5, v4

    div-float/2addr v3, v5

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_7

    int-to-float v1, v0

    int-to-float v3, v4

    div-float/2addr v1, v3

    const v3, 0x3faaaaab

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_7

    .line 255
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationEnd:I

    .line 256
    div-int/2addr v0, v2

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationInterval:I

    goto :goto_1

    .line 258
    :cond_7
    iget v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationEnd:I

    .line 259
    div-int/2addr v0, v2

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslationInterval:I

    :cond_8
    :goto_1
    return-void
.end method

.method private stopScanViewAnim()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 215
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsStateTwo:Z

    .line 216
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mAnimatorAlpha:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_1

    .line 217
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 218
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mAnimatorAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 220
    :cond_1
    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mTranslation:I

    .line 221
    invoke-direct {p0, v0, v0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->setTranslation(II)V

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private updateLayoutParams(Landroid/graphics/Rect;)V
    .locals 6

    .line 159
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewWidth:I

    .line 160
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewHeight:I

    .line 162
    iget v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/16 v4, 0x168

    const/4 v5, 0x1

    if-eq v3, v5, :cond_6

    const/16 p1, 0x438

    if-ge v0, p1, :cond_0

    .line 164
    iput v4, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x1e0

    .line 166
    iput p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz v3, :cond_3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    cmpl-float p1, v1, p1

    if-nez p1, :cond_2

    .line 176
    iput v2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mMarginTop:I

    goto :goto_2

    .line 178
    :cond_2
    iget p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mCutoutBaseLine:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mMarginTop:I

    goto :goto_2

    :cond_3
    :goto_1
    int-to-float v3, v1

    int-to-float v4, v0

    div-float/2addr v3, v4

    cmpl-float p1, v3, p1

    if-eqz p1, :cond_4

    int-to-float p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const v0, 0x3faaaaab

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_4

    .line 170
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mMarginTop:I

    goto :goto_2

    .line 172
    :cond_4
    iput v2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mMarginTop:I

    .line 182
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mMarginTop:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 183
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewWidth:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 184
    iget v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 185
    iput v5, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 186
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    goto :goto_4

    .line 188
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070370

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mScanViewHeight:I

    .line 189
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mMarginTop:I

    .line 190
    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_7

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_7

    .line 199
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewWidth:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 200
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_3

    .line 193
    :cond_7
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewHeight:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 194
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 203
    :goto_3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v1, 0x11

    .line 204
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    sub-int/2addr v4, p1

    int-to-float p1, v4

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    .line 208
    :goto_4
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->stopScanViewAnim()V

    .line 210
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->setTranslationParameter()V

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c01a0

    const/4 v1, 0x0

    .line 130
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090434

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mSkyScannerView:Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    .line 132
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 133
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mContext:Landroid/content/Context;

    .line 134
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 136
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mContext:Landroid/content/Context;

    const-string v0, "cutout_baseline_height"

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mCutoutBaseLine:I

    return-object p1
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_magic_sky_type"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 292
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 323
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->scanViewAnimStart()V

    const/4 p1, 0x1

    .line 324
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsPreviewStarted:Z

    goto :goto_0

    .line 319
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->scanViewAnimEnd()V

    const/4 p1, 0x0

    .line 320
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mIsPreviewStarted:Z

    :goto_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 148
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 149
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->updateLayoutParams(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 154
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    .line 155
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->updateLayoutParams(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 1

    .line 303
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 304
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_magic_sky_detection"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public setupEntryView()V
    .locals 0

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 331
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->scanViewAnimEnd()V

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->magicSkyUIHandler:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_magic_sky_detection"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 335
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method public updateCameraState(I)V
    .locals 0

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 143
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->updateLayoutParams(Landroid/graphics/Rect;)V

    return-void
.end method

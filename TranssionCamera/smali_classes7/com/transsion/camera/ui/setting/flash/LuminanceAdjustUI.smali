.class public Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;
.super Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;
.source "LuminanceAdjustUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$FlashChangeListener;,
        Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;,
        Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$AdjustBarValueChangeListener;
    }
.end annotation


# static fields
.field private static final ADJUST_UI_ALPHA_CHANGE:I = 0x6

.field protected static final ADJUST_UI_HIDE_ALL:I = 0xa

.field private static final ADJUST_UI_HIDE_DELAY:I = 0xbb8

.field protected static final ADJUST_UI_SHOW_FLASH_CLICK:I = 0xc

.field protected static final ADJUST_UI_SHOW_PREVIEW_STARTED:I = 0xb

.field protected static final ADJUST_UI_SHRINK_HIDE:I = 0x7

.field protected static final ADJUST_UI_SPREAD_HIDE_ANIMATOR_END:I = 0x9

.field protected static final ADJUST_UI_SPREAD_HIDE_ANIMATOR_START:I = 0x8

.field private static final HIGH_VIBRATE_VALUE:I = 0x64

.field private static final LOW_VIBRATE_VALUE:I = 0x0

.field protected static final LUMINANCE_HIDE_STATE:I = -0x1

.field protected static final LUMINANCE_SHRINK_STATE:I = 0x1

.field protected static final LUMINANCE_SPREAD_STATE:I = 0x0

.field private static final LUMINANCE_STATE_KEY:Ljava/lang/String; = "luminance_state_key"

.field private static final MEDIUM_VIBRATE_VALUE:I = 0x32

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAdjustShrinkBarLayout:Landroid/widget/FrameLayout;

.field protected mCurrentState:I

.field private mHighRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field protected mHintShown:Z

.field private mHintStateChangeListener:Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;

.field private mLastProgressValue:I

.field private mLowRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field protected mLuminanceSpreadProgressBar:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;

.field protected mLuminanceSpreadProgressBarLayout:Landroid/widget/RelativeLayout;

.field private mMediumRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mNotAllowedDisplay:Z

.field private mShrinkProgressBar:Landroid/widget/ProgressBar;

.field protected mTopBarPopupShown:Z


# direct methods
.method public static synthetic $r8$lambda$MQETFtRvAhMgdrCq3s4oFBNsMns(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->lambda$new$0(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LuminanceAdjustUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    const/4 p1, -0x1

    .line 46
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mCurrentState:I

    .line 564
    new-instance p1, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHintStateChangeListener:Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->removeSpreadBarSwitchDelay()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateLevelIcon(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method static synthetic access$900()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 34
    sget-object v0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private facingFront()Z
    .locals 0

    .line 599
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 602
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isTorchMode()Z
    .locals 2

    .line 592
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 595
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    const-string v0, "torch"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isVerticalDirection()Z
    .locals 1

    .line 657
    iget p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mOrientation:I

    if-eqz p0, :cond_1

    const/16 v0, 0xb4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 3

    .line 566
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v0, :cond_0

    return-void

    .line 570
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHintShown:Z

    .line 572
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mNotAllowedDisplay:Z

    if-eqz v1, :cond_1

    return-void

    .line 576
    :cond_1
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mTopBarPopupShown:Z

    if-eqz v1, :cond_2

    return-void

    .line 579
    :cond_2
    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mCurrentState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 580
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "torch"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 582
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideShrinkUI()V

    goto :goto_0

    .line 584
    :cond_3
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mTopBarPopupShown:Z

    if-nez p1, :cond_4

    .line 585
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->showShrinkUI()V

    :cond_4
    :goto_0
    return-void
.end method

.method private removeSpreadBarSwitchDelay()V
    .locals 1

    .line 616
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 617
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private updateLevelIcon(I)V
    .locals 4

    .line 638
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLuminanceSpreadProgressBar:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;

    if-eqz v0, :cond_2

    .line 639
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 640
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLuminanceSpreadProgressBar:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v2, v0, v1

    mul-int/2addr p1, v2

    int-to-float p1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p1, v2

    float-to-int p1, p1

    mul-int/lit8 v2, v1, 0x3

    sub-int v2, v0, v2

    .line 642
    div-int/lit8 v2, v2, 0x2

    if-lt p1, v2, :cond_0

    .line 643
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mMediumRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const v3, 0x7f0806df

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 645
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mMediumRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const v3, 0x7f0806e0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    .line 649
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHighRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const p1, 0x7f0806dc

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 651
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHighRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const p1, 0x7f0806dd

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected doHideAnimation()V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLuminanceSpreadProgressBarLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLuminanceSpreadProgressBarLayout:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustViewHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method protected doOnUp()V
    .locals 0

    return-void
.end method

.method protected doShowAnimation()V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLuminanceSpreadProgressBarLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 334
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustViewShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public getEntryView()Landroid/view/View;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getLuminanceValue()I
    .locals 2

    .line 193
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->getLuminanceValue()I

    move-result v0

    .line 194
    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mMaxLuminanceValue:I

    iget p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mAvailableAdjustScope:I

    sub-int/2addr v1, p0

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    int-to-float p0, p0

    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method protected handlerMsgExt(Landroid/os/Message;)V
    .locals 3

    .line 120
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method protected hideAdjustUI()V
    .locals 0

    .line 469
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->hideAdjustUI()V

    .line 470
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->removeSpreadBarSwitchDelay()V

    return-void
.end method

.method public hideEntryView()V
    .locals 2

    .line 462
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->hideEntryView()V

    .line 463
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 464
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isAnimationRunning:Z

    return-void
.end method

.method protected hideShrinkUI()V
    .locals 1

    .line 431
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mShrinkProgressBar:Landroid/widget/ProgressBar;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 432
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected hideSpreadUI()V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLuminanceSpreadProgressBarLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 438
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 439
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLuminanceSpreadProgressBar:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->setAllowedMove(Z)V

    :cond_0
    return-void
.end method

.method protected initHandler()V
    .locals 2

    .line 491
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;-><init>(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method protected loadAdjustUI(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0091

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0901b3

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLuminanceSpreadProgressBarLayout:Landroid/widget/RelativeLayout;

    const p2, 0x7f0901b2

    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLuminanceSpreadProgressBar:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;

    .line 103
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$AdjustBarValueChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$AdjustBarValueChangeListener;-><init>(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$1;)V

    invoke-virtual {p2, v0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->addProgressChangeListener(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar$AdjustProgressBarChangeListener;)V

    const p2, 0x7f090054

    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mShrinkProgressBar:Landroid/widget/ProgressBar;

    const p2, 0x7f090055

    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mAdjustShrinkBarLayout:Landroid/widget/FrameLayout;

    const p2, 0x7f090276

    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLowRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const p2, 0x7f090299

    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mMediumRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const p2, 0x7f0901fc

    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHighRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 109
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mAdjustShrinkBarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method protected loadViewMarginParam()V
    .locals 2

    const/4 v0, 0x0

    .line 144
    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mVerticalAdjustViewMarginLeft:I

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f07020c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mVerticalAdjustViewMarginTop:I

    :cond_0
    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 3

    .line 199
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->notifyCameraOperateAction(I)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eq p1, v0, :cond_b

    const/16 v2, 0x12

    if-eq p1, v2, :cond_a

    const/16 v2, 0x4b

    if-eq p1, v2, :cond_9

    const/16 v0, 0x23

    const/4 v2, 0x1

    if-eq p1, v0, :cond_6

    const/16 v0, 0x24

    if-eq p1, v0, :cond_5

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x90

    if-eq p1, v0, :cond_2

    const/16 v0, 0x91

    if-eq p1, v0, :cond_1

    const/16 v0, 0x99

    if-eq p1, v0, :cond_6

    const/16 v0, 0x9a

    if-eq p1, v0, :cond_5

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_1

    .line 271
    :pswitch_0
    sget-object p1, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "All ui manager loaded."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 273
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_0

    .line 274
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->getHintState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHintShown:Z

    .line 275
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHintStateChangeListener:Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->registerHintStateListener(Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;)V

    .line 279
    :cond_0
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mCurrentState:I

    if-nez p1, :cond_e

    .line 280
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    goto/16 :goto_1

    .line 227
    :pswitch_1
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mTopBarPopupShown:Z

    .line 228
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->isTorchMode()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->facingFront()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 229
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->showShrinkUI()V

    .line 230
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideSpreadUI()V

    .line 231
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideAdjustUI()V

    .line 232
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateLuminanceUIState(I)V

    .line 233
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p0, :cond_e

    .line 234
    invoke-interface {p0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    goto/16 :goto_1

    .line 240
    :pswitch_2
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mTopBarPopupShown:Z

    .line 241
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mNotAllowedDisplay:Z

    goto/16 :goto_1

    .line 311
    :cond_1
    :pswitch_3
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mNotAllowedDisplay:Z

    .line 312
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mCurrentState:I

    if-ne p1, v2, :cond_e

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHintShown:Z

    if-nez p1, :cond_e

    .line 313
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->showShrinkUI()V

    goto/16 :goto_1

    .line 295
    :cond_2
    :pswitch_4
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mNotAllowedDisplay:Z

    .line 296
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_3

    .line 297
    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    .line 300
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->isTorchMode()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->facingFront()Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_1

    .line 303
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideSpreadUI()V

    .line 304
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideShrinkUI()V

    .line 305
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateLuminanceUIState(I)V

    goto/16 :goto_1

    .line 221
    :cond_5
    :pswitch_5
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mCurrentState:I

    if-ne p1, v2, :cond_e

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHintShown:Z

    if-nez p1, :cond_e

    .line 222
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->showShrinkUI()V

    goto/16 :goto_1

    .line 205
    :cond_6
    :pswitch_6
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_7

    .line 206
    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    .line 209
    :cond_7
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->isTorchMode()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->facingFront()Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_1

    .line 213
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideSpreadUI()V

    .line 214
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideShrinkUI()V

    .line 215
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateLuminanceUIState(I)V

    goto :goto_1

    .line 285
    :cond_9
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->isTorchMode()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->facingFront()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 286
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mCurrentState:I

    if-nez p1, :cond_e

    .line 287
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 245
    :cond_a
    :pswitch_7
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mTopBarPopupShown:Z

    .line 246
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->isTorchMode()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->facingFront()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 247
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->showAdjustUI()V

    .line 248
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHintShown:Z

    if-eqz p1, :cond_e

    .line 249
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideShrinkUI()V

    goto :goto_1

    .line 254
    :cond_b
    sget-object p1, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Preview started."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 255
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isAnimationRunning:Z

    .line 256
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->isTorchMode()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->facingFront()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 257
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-eqz p1, :cond_d

    const/16 v0, 0xb

    .line 258
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 261
    :cond_c
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-eqz p1, :cond_d

    const/16 v0, 0xa

    .line 262
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 265
    :cond_d
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_e

    .line 266
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->getHintState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHintShown:Z

    .line 267
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHintStateChangeListener:Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->registerHintStateListener(Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;)V

    :cond_e
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1b
        :pswitch_2
        :pswitch_1
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6d
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 1

    .line 349
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mCurrentState:I

    if-nez v0, :cond_1

    .line 350
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isAnimationRunning:Z

    if-nez v0, :cond_0

    .line 351
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 355
    :cond_1
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 457
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->processLuminanceFlashClick()V

    return-void
.end method

.method public onLongPress(FF)Z
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 484
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    .line 486
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onLongPress(FF)Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 2

    .line 158
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mOrientation:I

    .line 159
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateOrientation()V

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLowRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mMediumRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHighRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 161
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mMediumRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHighRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSingleTapUp(FF)Z
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 476
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 478
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onSingleTapUp(FF)Z

    move-result p0

    return p0
.end method

.method protected processAnimationComplete()V
    .locals 1

    .line 321
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x9

    .line 322
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method protected processLuminanceFlashClick()V
    .locals 2

    .line 381
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->showAdjustUI()V

    .line 382
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideShrinkUI()V

    .line 383
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->showSpreadUI()V

    .line 384
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->setHintRevealBlocked()V

    .line 385
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->doShowAnimation()V

    const/4 v0, 0x0

    .line 386
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateLuminanceUIState(I)V

    .line 387
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLuminanceValue:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateLevelIcon(I)V

    .line 388
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateSpreadBarDelay()V

    .line 389
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_adjust_ui_show_and_hide_ae_lock"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected processLuminancePreviewStart()V
    .locals 2

    .line 360
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->showAdjustUI()V

    .line 361
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 362
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHintShown:Z

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideSpreadUI()V

    .line 364
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideShrinkUI()V

    goto :goto_0

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->showShrinkUI()V

    .line 367
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideSpreadUI()V

    :goto_0
    return-void

    .line 371
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideShrinkUI()V

    .line 372
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->showSpreadUI()V

    .line 374
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->setHintRevealBlocked()V

    const/4 v0, 0x0

    .line 375
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateLuminanceUIState(I)V

    .line 376
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLuminanceValue:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateLevelIcon(I)V

    .line 377
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateSpreadBarDelay()V

    return-void
.end method

.method protected refreshAdjustUI(I)V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 180
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLuminanceSpreadProgressBar:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->setPercentage(F)V

    .line 182
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 3

    .line 340
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 341
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    new-instance v0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$FlashChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$FlashChangeListener;-><init>(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 342
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 343
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "luminance_state_key"

    const-string v2, "-1"

    invoke-virtual {p1, v1, v2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mCurrentState:I

    :cond_0
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method protected setHintRevealBlocked()V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    .line 623
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideAllHints()V

    .line 624
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    :cond_0
    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 152
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    return-void
.end method

.method protected setShrinkUIProgress()V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mShrinkProgressBar:Landroid/widget/ProgressBar;

    iget p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLuminanceValue:I

    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method protected showAdjustUI()V
    .locals 2

    .line 130
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->showAdjustUI()V

    .line 131
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->getLuminanceValue()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLuminanceValue:I

    .line 132
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->refreshAdjustUI(I)V

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->setAdjustUIOrientation(I)V

    .line 134
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLuminanceSpreadProgressBar:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 137
    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->setAllowedMove(Z)V

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateSpreadBarDelay()V

    return-void
.end method

.method protected showShrinkUI()V
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mShrinkProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 419
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mShrinkProgressBar:Landroid/widget/ProgressBar;

    iget p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLuminanceValue:I

    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    return-void
.end method

.method protected showSpreadUI()V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLuminanceSpreadProgressBarLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 445
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 446
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLuminanceSpreadProgressBar:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->setAllowedMove(Z)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 0

    .line 169
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->unInit()V

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p0, :cond_0

    .line 171
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->unRegisterHintStateListener()V

    :cond_0
    return-void
.end method

.method protected updateLuminanceUIState(I)V
    .locals 3

    .line 678
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mCurrentState:I

    .line 679
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 680
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mCurrentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    const-string v2, "luminance_state_key"

    invoke-virtual {p1, v2, v0, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected updateLuminanceValue(I)V
    .locals 3

    .line 685
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    .line 686
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLuminanceValue:I

    .line 687
    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mAvailableAdjustScope:I

    mul-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p1, v2

    float-to-int p1, p1

    iget p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mMaxLuminanceValue:I

    sub-int/2addr p0, v1

    add-int/2addr p1, p0

    .line 688
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "torch,"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected updateOrientation()V
    .locals 2

    .line 662
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mNotAllowedDisplay:Z

    if-eqz v0, :cond_0

    return-void

    .line 666
    :cond_0
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 667
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHintShown:Z

    if-eqz v0, :cond_1

    .line 668
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideShrinkUI()V

    goto :goto_0

    .line 670
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mTopBarPopupShown:Z

    if-nez v0, :cond_2

    .line 671
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->showShrinkUI()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected updateSpreadBarDelay()V
    .locals 4

    .line 609
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 610
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 611
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method protected updateVibrate(I)V
    .locals 4

    if-nez p1, :cond_0

    .line 629
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLastProgressValue:I

    if-nez v0, :cond_2

    :cond_0
    const/16 v0, 0x32

    if-ne p1, v0, :cond_1

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLastProgressValue:I

    if-ne v1, v0, :cond_2

    :cond_1
    const/16 v0, 0x64

    if-ne p1, v0, :cond_3

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLastProgressValue:I

    if-eq v1, v0, :cond_3

    .line 632
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x32

    const/16 v3, 0xc8

    invoke-static {v1, v2, v3}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 634
    :cond_3
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLastProgressValue:I

    return-void
.end method

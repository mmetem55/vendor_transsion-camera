.class public Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "AbstractFlashAdjustUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;
    }
.end annotation


# static fields
.field protected static final ADJUST_UI_ANIMATION_HIDE:I = 0x3

.field protected static final ADJUST_UI_ANIMATION_SHOW:I = 0x2

.field protected static final ADJUST_UI_HINT_HIDE:I = 0x5

.field protected static final ADJUST_UI_HINT_SHOW:I = 0x4

.field protected static final ADJUST_UI_UPDATE:I = 0x1

.field private static final ONE_FINGER:I = 0x1

.field private static final SCALE_TO_SCROLL_TIME:I = 0x12c

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field protected static final VIBRATOR_AMPLITUDE:I = 0xc8

.field protected static final VIBRATOR_DURATION_TIME:J = 0x32L


# instance fields
.field protected isAnimationRunning:Z

.field protected mAeAfShow:Z

.field protected mAvailableAdjustScope:I

.field protected mBatteryStatus:I

.field protected mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mFlashAdjustHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field protected mFlashAdjustView:Landroid/view/View;

.field protected mFlashAdjustViewHideAnim:Landroid/view/animation/Animation;

.field protected mFlashAdjustViewShowAnim:Landroid/view/animation/Animation;

.field protected mFrontDualFlashSupport:Z

.field protected mHorizontalAdjustViewMarginLeft:I

.field protected mHorizontalAdjustViewMarginTop:I

.field protected mIsAdjust:Z

.field private mIsInConflict:Z

.field protected mIsSceneSupport:Z

.field protected mIsSupport:Z

.field private mLastScaleEndTime:J

.field private mLastVibratorValue:I

.field private mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field protected mLuminanceValue:I

.field protected mMaxLuminanceValue:I

.field protected mMinLuminanceValue:I

.field protected mOrientation:I

.field private final mPreviewViewRect:Landroid/graphics/Rect;

.field protected mResources:Landroid/content/res/Resources;

.field private mScrollLimit:F

.field protected mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field protected mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field protected mTemperatureStatus:I

.field protected mUIHandler:Landroid/os/Handler;

.field protected mVerticalAdjustViewMarginLeft:I

.field protected mVerticalAdjustViewMarginRight:I

.field protected mVerticalAdjustViewMarginTop:I

.field protected mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AbstractFlashAdjustUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .locals 3

    .line 112
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mOrientation:I

    .line 69
    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mBatteryStatus:I

    .line 70
    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mTemperatureStatus:I

    const/4 v1, -0x1

    .line 84
    iput v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLastVibratorValue:I

    .line 85
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsSupport:Z

    const/4 v1, 0x1

    .line 86
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsSceneSupport:Z

    const-wide/16 v1, 0x0

    .line 99
    iput-wide v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLastScaleEndTime:J

    .line 102
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsAdjust:Z

    .line 105
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 106
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mAeAfShow:Z

    .line 582
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;-><init>(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 113
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    .line 114
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    const p2, 0x7f0a002f

    .line 115
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLuminanceValue:I

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->canShowHint()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method static synthetic access$600()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 48
    sget-object v0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$702(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsInConflict:Z

    return p1
.end method

.method private canShowHint()Z
    .locals 1

    .line 574
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsInConflict:Z

    if-eqz v0, :cond_1

    .line 575
    iget p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mOrientation:I

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private doGestureMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    .line 613
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsSupport:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 616
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "torch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 617
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    return v1

    .line 620
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLastScaleEndTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x12c

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    return v1

    .line 624
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    .line 625
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    .line 626
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    .line 627
    :cond_3
    sget-object v1, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[doGestureMove], deltaX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " , deltaY:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " , dx:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " , dy:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " , mScrollLimit:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mScrollLimit:F

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 628
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mScrollLimit:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 629
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->performScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method private initResources(Landroid/content/Context;)V
    .locals 2

    .line 638
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070682

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mScrollLimit:F

    .line 639
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 640
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDisplayWidth:I

    .line 641
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDisplayHeight:I

    .line 642
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->initHandler()V

    .line 643
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->loadViewMarginParam()V

    .line 644
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->loadAnimation(Landroid/content/Context;)V

    .line 645
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->loadHint()V

    const-string v0, "vibrator"

    .line 646
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method private isReachPreviewBoundary(FF)Z
    .locals 1

    .line 716
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_1

    iget p1, p0, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-ltz p1, :cond_1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_0

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

.method private loadHint()V
    .locals 4

    .line 662
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 663
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f10012a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 665
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 666
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f10012b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 668
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 669
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f100125

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method private onXVerticalScroll(F)V
    .locals 2

    .line 516
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDisplayWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mAvailableAdjustScope:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 517
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->updateLuminanceValue(FD)V

    return-void
.end method

.method private onYVerticalScroll(F)V
    .locals 2

    .line 521
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDisplayHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mAvailableAdjustScope:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 522
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->updateLuminanceValue(FD)V

    return-void
.end method

.method private performScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    .line 495
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mOrientation:I

    if-eqz p1, :cond_0

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_0

    const/16 p2, 0xb4

    if-eq p1, p2, :cond_0

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 500
    :cond_0
    invoke-direct {p0, p4}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->onYVerticalScroll(F)V

    :goto_0
    return-void
.end method

.method private updateLuminanceValue(FD)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    neg-double p2, p2

    .line 529
    :cond_0
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLuminanceValue:I

    int-to-double v0, p1

    add-double/2addr v0, p2

    double-to-int p1, v0

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLuminanceValue:I

    .line 530
    iget p2, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mMinLuminanceValue:I

    iget p3, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mMaxLuminanceValue:I

    .line 531
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 530
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLuminanceValue:I

    .line 532
    iget p2, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLastVibratorValue:I

    if-eq p1, p2, :cond_2

    iget p2, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mMaxLuminanceValue:I

    if-eq p1, p2, :cond_1

    iget p2, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mMinLuminanceValue:I

    if-ne p1, p2, :cond_2

    .line 534
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 p2, 0x32

    const/16 v0, 0xc8

    invoke-static {p2, p3, v0}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 535
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLuminanceValue:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLastVibratorValue:I

    .line 537
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "torch,"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLuminanceValue:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 538
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsAdjust:Z

    .line 539
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLuminanceValue:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->updateAdjustUI(I)V

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsSupport:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 123
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->initResources(Landroid/content/Context;)V

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->loadAdjustUI(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 p2, 0x4

    .line 126
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 128
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    return-object p0
.end method

.method protected doHideAnimation()V
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustViewHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method protected doOnUp()V
    .locals 0

    return-void
.end method

.method protected doShowAnimation()V
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 490
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustViewShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getFrontDualFlashValue()[Ljava/lang/String;
    .locals 5

    .line 446
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 449
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 450
    array-length v1, p0

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    aget-object v3, p0, v1

    const-string v4, "torch"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v3, 0x1

    .line 451
    aget-object v4, p0, v3

    aput-object v4, v0, v1

    aget-object p0, p0, v2

    aput-object p0, v0, v3

    :cond_1
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getLuminanceValue()I
    .locals 4

    .line 435
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 438
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    const-string v1, ","

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/StringUtils;->splitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 439
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "torch"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 440
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 254
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/StringUtils;->splitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 255
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method protected handlerMsgExt(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected hideAdjustUI()V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 378
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideEntryView()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v1, :cond_0

    .line 143
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v1, :cond_1

    .line 146
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v1, :cond_2

    .line 149
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 152
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method protected initHandler()V
    .locals 1

    .line 721
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method protected initLuminanceSupport()V
    .locals 6

    .line 457
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_3

    .line 458
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 459
    iput v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mAvailableAdjustScope:I

    .line 460
    iput v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mMaxLuminanceValue:I

    .line 461
    iput v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mMinLuminanceValue:I

    .line 462
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, ","

    .line 463
    invoke-static {v2, v4}, Lcom/transsion/camera/utils/StringUtils;->splitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 464
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "torch"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    .line 465
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mMaxLuminanceValue:I

    .line 466
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mMinLuminanceValue:I

    .line 467
    iget v3, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mMaxLuminanceValue:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mAvailableAdjustScope:I

    goto :goto_0

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 471
    sget-object v2, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[initLuminanceSupport] currentCameraId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , mAvailableAdjustScope:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mAvailableAdjustScope:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 472
    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mAvailableAdjustScope:I

    if-lez v0, :cond_2

    .line 473
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsSupport:Z

    .line 474
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->getLuminanceValue()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLuminanceValue:I

    goto :goto_1

    .line 476
    :cond_2
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsSupport:Z

    .line 478
    :goto_1
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mAeAfShow:Z

    :cond_3
    return-void
.end method

.method protected loadAdjustUI(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected loadAnimation(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f01000d

    .line 673
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustViewShowAnim:Landroid/view/animation/Animation;

    const v0, 0x7f01000c

    .line 674
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustViewHideAnim:Landroid/view/animation/Animation;

    .line 675
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$2;-><init>(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 692
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustViewShowAnim:Landroid/view/animation/Animation;

    new-instance v0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$3;-><init>(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method protected loadViewMarginParam()V
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070208

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mVerticalAdjustViewMarginLeft:I

    .line 651
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f07020a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mVerticalAdjustViewMarginTop:I

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070209

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mVerticalAdjustViewMarginRight:I

    .line 655
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070206

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mHorizontalAdjustViewMarginLeft:I

    .line 656
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v0

    if-eqz v0, :cond_1

    .line 657
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070207

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mHorizontalAdjustViewMarginTop:I

    :cond_1
    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 3

    const/16 v0, 0x15

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_5

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_5

    const/16 v0, 0x23

    if-eq p1, v0, :cond_4

    const/16 v0, 0x24

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_4

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x90

    if-eq p1, v0, :cond_4

    const/16 v0, 0x91

    if-eq p1, v0, :cond_2

    const/16 v0, 0x99

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9a

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 320
    :cond_0
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mAeAfShow:Z

    goto :goto_0

    .line 305
    :cond_1
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mAeAfShow:Z

    goto :goto_1

    .line 327
    :cond_2
    :goto_0
    :pswitch_0
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsSceneSupport:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mAeAfShow:Z

    if-nez p1, :cond_7

    .line 328
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    .line 329
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mAvailableAdjustScope:I

    if-lez p1, :cond_3

    .line 330
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsSupport:Z

    .line 332
    :cond_3
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsSceneSupport:Z

    goto :goto_2

    .line 312
    :cond_4
    :goto_1
    :pswitch_1
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsSupport:Z

    if-eqz p1, :cond_7

    .line 313
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsSceneSupport:Z

    .line 314
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsSupport:Z

    .line 315
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->hideAdjustUI()V

    goto :goto_2

    .line 337
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->hideAdjustUI()V

    .line 338
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-eqz p0, :cond_7

    const/4 p1, 0x3

    .line 339
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2

    .line 343
    :cond_6
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsAdjust:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsSupport:Z

    if-eqz p1, :cond_7

    const/4 p1, -0x1

    .line 344
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLastVibratorValue:I

    .line 345
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsAdjust:Z

    .line 346
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->doOnUp()V

    :cond_7
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isReachPreviewBoundary(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    sget-object p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onDragMove point is out of preview rect!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 200
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->doGestureMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 3

    .line 290
    sget-object v0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 291
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mOrientation:I

    .line 292
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 293
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 294
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLastScaleEndTime:J

    const/4 p0, 0x0

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isReachPreviewBoundary(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    sget-object p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onScroll point is out of preview rect!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 191
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->doGestureMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 232
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsSupport:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    .line 235
    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLastVibratorValue:I

    .line 236
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsAdjust:Z

    .line 237
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->doOnUp()V

    .line 238
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected processAnimationComplete()V
    .locals 0

    .line 725
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->hideAdjustUI()V

    return-void
.end method

.method protected refreshAdjustUI(I)V
    .locals 0

    return-void
.end method

.method protected setAdjustUIOrientation(I)V
    .locals 5

    .line 383
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 387
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    .line 389
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v1, v2

    .line 395
    :cond_2
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_6

    const/16 v3, 0x5a

    const/16 v4, 0xb4

    if-eq p1, v3, :cond_5

    if-eq p1, v4, :cond_3

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_5

    goto :goto_3

    .line 408
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {p1, v3}, Landroid/view/View;->setRotation(F)V

    .line 409
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mVerticalAdjustViewMarginTop:I

    invoke-virtual {v0, v2, p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    if-eqz v1, :cond_4

    .line 411
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mVerticalAdjustViewMarginLeft:I

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_1

    .line 413
    :cond_4
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mVerticalAdjustViewMarginRight:I

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 415
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 419
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mOrientation:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 420
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mHorizontalAdjustViewMarginTop:I

    invoke-virtual {v0, v2, p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 421
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mHorizontalAdjustViewMarginLeft:I

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 422
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 398
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setRotation(F)V

    .line 399
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mVerticalAdjustViewMarginTop:I

    invoke-virtual {v0, v2, p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    if-eqz v1, :cond_7

    .line 401
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mVerticalAdjustViewMarginLeft:I

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_2

    .line 403
    :cond_7
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mVerticalAdjustViewMarginRight:I

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 405
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    return-void
.end method

.method public setBatteryStatus(II)V
    .locals 0

    .line 354
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mBatteryStatus:I

    .line 355
    iput p2, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mTemperatureStatus:I

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 262
    sget-object p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->initLuminanceSupport()V

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
    .locals 2

    .line 270
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez p1, :cond_0

    .line 272
    sget-object p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 276
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_conflict_ui_state"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public setupEntryView()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->updateSettingUILayout(Z)V

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected showAdjustUI()V
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_conflict_ui_state"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v1, :cond_1

    .line 165
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v1, :cond_2

    .line 168
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v1, :cond_3

    .line 171
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_3
    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsInConflict:Z

    .line 174
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->hideAdjustUI()V

    .line 175
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 176
    sget-object p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "unInit"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected updateAdjustUI(I)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->showAdjustUI()V

    .line 361
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->doShowAnimation()V

    goto :goto_0

    .line 363
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->refreshAdjustUI(I)V

    :goto_0
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

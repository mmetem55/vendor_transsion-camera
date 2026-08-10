.class public Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;
.super Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;
.source "FrontDualFlashAdjustUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FlashChangeListener;,
        Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FrontAdjustUIHandler;,
        Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$ColorTempChangeListener;,
        Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$StrengthModeChangeListener;
    }
.end annotation


# static fields
.field private static final ADJUST_UI_HIDE:I = 0xd

.field private static final ADJUST_UI_HIDE_ALL:I = 0xa

.field private static final ADJUST_UI_HIDE_DELAY:I = 0x1388

.field private static final ADJUST_UI_SHOW_FLASH_CLICK:I = 0xc

.field private static final ADJUST_UI_SHOW_PREVIEW_STARTED:I = 0xb

.field private static final ADJUST_UI_SPREAD_HIDE_ANIMATOR_END:I = 0x9

.field private static final ADJUST_UI_SPREAD_HIDE_ANIMATOR_START:I = 0x8

.field private static final DUAL_FRONT_FLASH_STATE_KEY:Ljava/lang/String; = "dual_front_flash_state_key"

.field private static final FRONT_DUAL_FLASH_COLD_TEMP:I = 0x3

.field private static final FRONT_DUAL_FLASH_DEFAULT_TEMP:I = 0x2

.field private static final FRONT_DUAL_FLASH_HIGH_STRENGTH:I = 0x2

.field private static final FRONT_DUAL_FLASH_LOW_STRENGTH:I = 0x0

.field private static final FRONT_DUAL_FLASH_MIDDLE_STRENGTH:I = 0x1

.field private static final FRONT_DUAL_FLASH_UI_HIDE_STATE:I = 0x0

.field private static final FRONT_DUAL_FLASH_UI_INIT_STATE:I = -0x1

.field private static final FRONT_DUAL_FLASH_UI_SHOW_STATE:I = 0x1

.field private static final FRONT_DUAL_FLASH_WARM_TEMP:I = 0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mColdColorTempLayout:Landroid/widget/FrameLayout;

.field private mCurrentState:I

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDefaultColorTempLayout:Landroid/widget/FrameLayout;

.field private mFlashColorTempProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;

.field private mFlashStrengthModeProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;

.field private final mFrontDualFlashCodeInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

.field private final mFrontDualFlashDefaultInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

.field private mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

.field private final mFrontDualFlashWarmInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

.field private mHighRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mLowRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mMediumRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mSelectedStrengthMode:I

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mWarmColorTempLayout:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$oc0vE8UTMuhAdIq0nPFdPdlsaQA(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->lambda$loadAdjustUI$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pVwl-bDUiFw1opqIvQ140sVfnb8(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->lambda$new$1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "DualFlashAdjustUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    const/4 p1, -0x1

    .line 59
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentState:I

    .line 66
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-direct {p1}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    .line 176
    new-instance p1, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 83
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    const/4 p2, 0x2

    invoke-direct {p1, p2, p2}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;-><init>(II)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashWarmInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    .line 84
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-direct {p1, p2, p2}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;-><init>(II)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashDefaultInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    .line 85
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-direct {p1, p2, p2}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;-><init>(II)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashCodeInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->processFrontDualFlashClick()V

    return-void
.end method

.method static synthetic access$1102(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isAnimationRunning:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isAnimationRunning:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->triggerAdjustUIHide()V

    return-void
.end method

.method static synthetic access$1402(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isAnimationRunning:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isAnimationRunning:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isAnimationRunning:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isAnimationRunning:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->removeSpreadBarSwitchDelay()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateSpreadBarDelay()V

    return-void
.end method

.method static synthetic access$500()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 46
    sget-object v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateStrengthModeState(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateColorTempState(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateFrontFlashUIState(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->processLuminancePreviewStart()V

    return-void
.end method

.method private facingFront()Z
    .locals 0

    .line 587
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 590
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isFlashModeOff()Z
    .locals 2

    .line 580
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 583
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    const-string v0, "off"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isTorchMode()Z
    .locals 2

    .line 573
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 576
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

.method private static synthetic lambda$loadAdjustUI$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    sget-object v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged: key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "key_super_definition"

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->querySupportedEntryValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 182
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const-string v0, "key_video_portrait"

    .line 183
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 184
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v2, :cond_4

    :cond_3
    const-string v0, "key_360_video_hdr"

    .line 185
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "key_anti_video"

    .line 186
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const-string p1, "on"

    .line 187
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 188
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/16 p1, 0xd

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    return-void
.end method

.method private processFrontDualFlashClick()V
    .locals 2

    .line 488
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->showAdjustUI()V

    .line 489
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_adjust_ui_show_and_hide_ae_lock"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private processLuminancePreviewStart()V
    .locals 1

    .line 450
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentState:I

    if-nez v0, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->hideAdjustUI()V

    goto :goto_0

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->showAdjustUI()V

    :goto_0
    return-void
.end method

.method private refreshUIState(I)V
    .locals 0

    .line 548
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateColorTempState(I)V

    return-void
.end method

.method private removeSpreadBarSwitchDelay()V
    .locals 1

    .line 511
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 512
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private triggerAdjustUIHide()V
    .locals 1

    .line 194
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentState:I

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->isTorchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->facingFront()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 200
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateFrontFlashUIState(I)V

    .line 201
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->hideAdjustUI()V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateColorTempState(I)V
    .locals 5

    const-string v0, "2"

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    goto/16 :goto_0

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mColdColorTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 248
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDefaultColorTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 249
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mWarmColorTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 250
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mWarmColorTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 251
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDefaultColorTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 252
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mColdColorTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 253
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mSelectedStrengthMode:I

    .line 254
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashCodeInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashColorTemp(I)V

    .line 255
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashCodeInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    goto/16 :goto_0

    .line 236
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mColdColorTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 237
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDefaultColorTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 238
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mWarmColorTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 239
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mWarmColorTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 240
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mColdColorTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 241
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDefaultColorTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 242
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mSelectedStrengthMode:I

    .line 243
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashDefaultInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashColorTemp(I)V

    .line 244
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashDefaultInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    goto :goto_0

    .line 225
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mColdColorTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 226
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDefaultColorTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 227
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mWarmColorTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 228
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mWarmColorTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 229
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mColdColorTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 230
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDefaultColorTempLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 231
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mSelectedStrengthMode:I

    .line 232
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashWarmInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashColorTemp(I)V

    .line 233
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashWarmInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    .line 260
    :goto_0
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mSelectedStrengthMode:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateStrengthModeState(I)V

    .line 261
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashStrengthModeProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;

    iget p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mSelectedStrengthMode:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->setStrengthMode(I)V

    return-void
.end method

.method private updateFrontDualFlashTemValue(Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;)V
    .locals 3

    .line 684
    sget-object v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFrontDualFlashTemValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mFrontDualFlashTemLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashStrengthMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 685
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_0

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "torch,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashStrengthMode:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateFrontFlashUIState(I)V
    .locals 3

    .line 676
    sget-object v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFrontFlashUIState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 677
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentState:I

    .line 678
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-eqz p1, :cond_0

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    const-string v2, "dual_front_flash_state_key"

    invoke-virtual {p1, v2, v0, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private updateSpreadBarDelay()V
    .locals 4

    .line 496
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 497
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 498
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private updateStrengthModeState(I)V
    .locals 6

    const v0, 0x7f08066c

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_8

    const v5, 0x7f08066f

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_0

    goto/16 :goto_3

    .line 299
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mMediumRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 300
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mHighRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const v0, 0x7f08066b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 301
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashWarmInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashColorTemp(I)V

    .line 302
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget p1, p1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    if-ne p1, v4, :cond_1

    .line 303
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashWarmInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashTemLevel(I)V

    .line 304
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashWarmInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    .line 306
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashDefaultInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashTemLevel(I)V

    .line 307
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashDefaultInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    .line 309
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashCodeInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashTemLevel(I)V

    .line 310
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashCodeInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    .line 312
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 283
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mMediumRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 284
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mHighRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 285
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashWarmInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashColorTemp(I)V

    .line 286
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget p1, p1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    if-ne p1, v4, :cond_5

    .line 287
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashWarmInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashTemLevel(I)V

    .line 288
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashWarmInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    goto :goto_1

    :cond_5
    if-ne p1, v3, :cond_6

    .line 290
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashDefaultInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashTemLevel(I)V

    .line 291
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashDefaultInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    goto :goto_1

    :cond_6
    if-ne p1, v1, :cond_7

    .line 293
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashCodeInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashTemLevel(I)V

    .line 294
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashCodeInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    .line 296
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 267
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mMediumRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const v5, 0x7f080670

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 268
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mHighRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 269
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashWarmInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashColorTemp(I)V

    .line 270
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget p1, p1, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    if-ne p1, v4, :cond_9

    .line 271
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashWarmInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashTemLevel(I)V

    .line 272
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashWarmInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    goto :goto_2

    :cond_9
    if-ne p1, v3, :cond_a

    .line 274
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashDefaultInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashTemLevel(I)V

    .line 275
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashDefaultInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    goto :goto_2

    :cond_a
    if-ne p1, v1, :cond_b

    .line 277
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashCodeInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashTemLevel(I)V

    .line 278
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashCodeInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    .line 280
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    iget v0, v0, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->mFrontDualFlashColorTemp:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 317
    :goto_3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateFrontDualFlashTemValue(Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;)V

    return-void
.end method


# virtual methods
.method public doHideAnimation()V
    .locals 1

    .line 373
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->doHideAnimation()V

    .line 374
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustViewHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method protected doShowAnimation()V
    .locals 1

    .line 381
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->doShowAnimation()V

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 383
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

.method public hideAdjustUI()V
    .locals 3

    .line 553
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->hideAdjustUI()V

    .line 554
    sget-object v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideAdjustUI"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashColorTempProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->setAllowedMove(Z)V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashStrengthModeProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;

    if-eqz v0, :cond_1

    .line 559
    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->setAllowedMove(Z)V

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 562
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    .line 564
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_3

    .line 565
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideFrontDualFlashUI()V

    .line 567
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_front_dual_flash_ui_visible"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "front_dual_flash_ui_hide"

    .line 568
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 569
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->removeSpreadBarSwitchDelay()V

    return-void
.end method

.method public hideEntryView()V
    .locals 1

    .line 445
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->hideEntryView()V

    .line 446
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public initHandler()V
    .locals 2

    .line 108
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FrontAdjustUIHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FrontAdjustUIHandler;-><init>(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method public initLuminanceSupport()V
    .locals 6

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_4

    .line 124
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v0

    .line 125
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, ","

    .line 126
    invoke-static {v1, v4}, Lcom/transsion/camera/utils/StringUtils;->splitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 127
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "torch"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFrontDualFlashSupport:Z

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFrontDualFlashSupport:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsSupport:Z

    .line 133
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mAeAfShow:Z

    :cond_4
    return-void
.end method

.method public loadAdjustUI(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c009e

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0901c5

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    .line 92
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p2, 0x7f0901af

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mColdColorTempLayout:Landroid/widget/FrameLayout;

    const p2, 0x7f0901b1

    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDefaultColorTempLayout:Landroid/widget/FrameLayout;

    const p2, 0x7f0901b5

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mWarmColorTempLayout:Landroid/widget/FrameLayout;

    const p2, 0x7f0901b0

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashColorTempProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;

    .line 97
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$ColorTempChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$ColorTempChangeListener;-><init>(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$1;)V

    invoke-virtual {p2, v0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->addColorTempChangeListener(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar$ColorTempChangeListener;)V

    const p2, 0x7f090276

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mLowRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const p2, 0x7f090299

    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mMediumRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const p2, 0x7f0901fc

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mHighRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const p2, 0x7f0901b4

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashStrengthModeProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;

    .line 102
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$StrengthModeChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$StrengthModeChangeListener;-><init>(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$1;)V

    invoke-virtual {p2, v0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->addStrengthModeChangeListener(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar$StrengthModeChangeListener;)V

    return-object p1
.end method

.method public loadAnimation(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f010032

    .line 389
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustViewShowAnim:Landroid/view/animation/Animation;

    const v0, 0x7f010031

    .line 390
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustViewHideAnim:Landroid/view/animation/Animation;

    .line 391
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$1;-><init>(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 407
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustViewShowAnim:Landroid/view/animation/Animation;

    new-instance v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$2;-><init>(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public loadViewMarginParam()V
    .locals 2

    const/4 v0, 0x0

    .line 504
    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mVerticalAdjustViewMarginLeft:I

    .line 505
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 506
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
    .locals 4

    .line 595
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->notifyCameraOperateAction(I)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eq p1, v0, :cond_a

    const/16 v2, 0x1c

    if-eq p1, v2, :cond_9

    const/16 v2, 0x4b

    const/4 v3, 0x1

    if-eq p1, v2, :cond_8

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_7

    const/16 v0, 0x14

    if-eq p1, v0, :cond_5

    const/16 v0, 0x15

    if-eq p1, v0, :cond_3

    const/16 v0, 0x23

    if-eq p1, v0, :cond_7

    const/16 v0, 0x24

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_7

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_7

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 626
    :cond_0
    sget-object p1, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "All ui manager loaded."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 628
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentState:I

    if-ne p1, v3, :cond_c

    .line 629
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    goto/16 :goto_0

    .line 644
    :cond_1
    :pswitch_0
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsSceneSupport:Z

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mAeAfShow:Z

    if-nez p1, :cond_c

    .line 645
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    .line 646
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFrontDualFlashSupport:Z

    if-eqz p1, :cond_2

    .line 647
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsSupport:Z

    .line 649
    :cond_2
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsSceneSupport:Z

    goto/16 :goto_0

    .line 653
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->isTorchMode()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->facingFront()Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    .line 657
    :cond_4
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->isFlashModeOff()Z

    move-result p1

    if-nez p1, :cond_c

    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentState:I

    if-ne p1, v3, :cond_c

    .line 658
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateFrontFlashUIState(I)V

    .line 659
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->hideAdjustUI()V

    goto :goto_0

    .line 663
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashStrengthModeProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;

    if-eqz p1, :cond_6

    .line 664
    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->resetValue()V

    .line 666
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashColorTempProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;

    if-eqz p0, :cond_c

    .line 667
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->resetValue()V

    goto :goto_0

    .line 604
    :cond_7
    :pswitch_1
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->triggerAdjustUIHide()V

    goto :goto_0

    .line 633
    :cond_8
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->isTorchMode()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->facingFront()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 634
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentState:I

    if-ne p1, v3, :cond_c

    .line 635
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 607
    :cond_9
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->isTorchMode()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->facingFront()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 608
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateFrontFlashUIState(I)V

    .line 609
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->hideAdjustUI()V

    goto :goto_0

    .line 613
    :cond_a
    sget-object p1, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Preview started."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 614
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isAnimationRunning:Z

    .line 615
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->isTorchMode()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->facingFront()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 616
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-eqz p0, :cond_c

    const/16 p1, 0xb

    .line 617
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 620
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-eqz p0, :cond_c

    const/16 p1, 0xa

    .line 621
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_c
    :goto_0
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

.method public onBackPressed()Z
    .locals 2

    .line 433
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 434
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isAnimationRunning:Z

    if-nez v0, :cond_0

    .line 435
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return v1

    .line 439
    :cond_1
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(FF)Z
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 356
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    .line 358
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onLongPress(FF)Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 2

    .line 363
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mOrientation:I

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mLowRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mMediumRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mHighRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 365
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mMediumRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 367
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mHighRotationIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public processAnimationComplete()V
    .locals 1

    .line 426
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x9

    .line 427
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 3

    .line 459
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 460
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 461
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    new-instance v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FlashChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FlashChangeListener;-><init>(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 462
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-eqz p1, :cond_0

    .line 463
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dual_front_flash_state_key"

    const-string v2, "-1"

    invoke-virtual {p1, v1, v2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mCurrentState:I

    :cond_0
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 2

    .line 159
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_video_portrait"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 161
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_super_definition"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 162
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_360_video_hdr"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 163
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_anti_video"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public showAdjustUI()V
    .locals 7

    .line 518
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->getFrontDualFlashValue()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 519
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    .line 520
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 521
    sget-object v4, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showAdjustUI colorTemp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", strengthMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 522
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    if-eqz v4, :cond_0

    .line 523
    invoke-virtual {v4, v2}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashColorTemp(I)V

    .line 524
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFrontDualFlashInfo:Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;

    invoke-virtual {v4, v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/FrontDualFlashInfo;->updateFrontDualFlashTemLevel(I)V

    .line 526
    :cond_0
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->refreshUIState(I)V

    .line 527
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 528
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashColorTempProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;

    if-eqz v0, :cond_2

    .line 531
    invoke-virtual {v0, v3}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->setAllowedMove(Z)V

    .line 533
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mFlashStrengthModeProgressBar:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;

    if-eqz v0, :cond_3

    .line 534
    invoke-virtual {v0, v3}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->setAllowedMove(Z)V

    .line 536
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_4

    .line 537
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showFrontDualFlashUI()V

    .line 539
    :cond_4
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateFrontFlashUIState(I)V

    .line 540
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_front_dual_flash_ui_visible"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v3, "front_dual_flash_ui_show"

    .line 541
    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 542
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->setAdjustUIOrientation(I)V

    .line 543
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->updateSpreadBarDelay()V

    .line 544
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->doShowAnimation()V

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 168
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->unInit()V

    .line 169
    sget-object v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_video_portrait"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_super_definition"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_360_video_hdr"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_anti_video"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

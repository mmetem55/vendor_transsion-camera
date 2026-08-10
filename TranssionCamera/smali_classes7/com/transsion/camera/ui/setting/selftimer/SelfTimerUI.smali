.class public Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SelfTimerUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;
    }
.end annotation


# static fields
.field private static final BEEP_ONCE_ID:I = 0x7f0f0000

.field private static final BEEP_TWICE_ID:I = 0x7f0f0001

.field private static final DEFAULT_NUM:I = 0x0

.field private static final RESOURCES_TYPE:Ljava/lang/String; = "bool"

.field private static final SELFTIMERUI_USE_LAYER_TYPE_SOFTWARE:Ljava/lang/String; = "selftimerui_use_layer_type_software"

.field private static final SELF_TIMER_NUM_UPDATE:I = 0x3

.field private static final SELF_TIMER_ORIENTATION_UPDATE:I = 0x4

.field private static final SELF_TIMER_UPDATE_SHUTTER_ICON:I = 0x5

.field private static final SELF_TIMER_VIEW_HIDE:I = 0x2

.field private static final SELF_TIMER_VIEW_SHOW:I = 0x1

.field private static final START_SELF_TIMER_DEFAULT:I = 0x0

.field private static final START_SELF_TIMER_GESTURE:I = 0x2

.field private static final START_SELF_TIMER_VOICE:I = 0x1

.field private static final START_TIME_MAX:I = 0x1e

.field private static final START_TIME_MIN:I = 0x3

.field public static final STATE_SELF_TIMER_CAPTURE:Ljava/lang/String; = "self_timer_capture"

.field public static final STATE_SELF_TIMER_IDLE:Ljava/lang/String; = "self_timer_idle"

.field public static final STATE_SELF_TIMER_START:Ljava/lang/String; = "self_timer_start"

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final UPDATE_DELAY_TIME:I = 0x3e8


# instance fields
.field private final mActionSoundLock:Ljava/lang/Object;

.field private mBeepOnceSampleId:I

.field private mBeepTwiceSampleId:I

.field private mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mCountDownAnim:Landroid/view/animation/Animation;

.field private mCurSelfTimerNum:I

.field private mCurrentCameraId:Ljava/lang/String;

.field private mCurrentPriority:I

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mIsFunVideoRecordingStart:Z

.field private mIsPause:Z

.field private mPreviewViewRect:Landroid/graphics/Rect;

.field private final mResources:Landroid/content/res/Resources;

.field private mSelfTimerNumBeforeDelay:I

.field private mSelfTimerSoundLoaded:Z

.field private volatile mSelfTimerState:Ljava/lang/String;

.field private mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

.field private mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

.field private mSoundEnable:Z

.field private mStartSelfTimerNum:I

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

.field private mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;


# direct methods
.method public static synthetic $r8$lambda$8R4CnAI7clI1LmyBvpbm481qTh4(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->lambda$loadSelfTimerSound$2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dar2lL1dO9gLXUQ_2sz1STE_aTU(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->lambda$loadSelfTimerSound$1(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vjb6dUTHfWSUqkhU93Y8L_xtH_k(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->lambda$loadSelfTimerSound$3(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zAnhUqaVzT89Hbtp6PRd8jhy0yA(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->lambda$startSelfTimerImmediately$0(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SelfTimerUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3

    .line 94
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerSoundLoaded:Z

    .line 71
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mActionSoundLock:Ljava/lang/Object;

    const-string v1, "self_timer_idle"

    .line 79
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    .line 80
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 86
    iput v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerNumBeforeDelay:I

    const-string v1, "0"

    .line 88
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurrentCameraId:Ljava/lang/String;

    .line 90
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsFunVideoRecordingStart:Z

    .line 513
    new-instance v1, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;-><init>(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 95
    sget-object v1, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "init"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 96
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsPause:Z

    .line 97
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mResources:Landroid/content/res/Resources;

    .line 98
    new-instance p1, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->showSelfTimerView()V

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Ljava/lang/String;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->startSelfTimerImmediately(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;ZZ)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->hideSelfTimerView(ZZ)V

    return-void
.end method

.method static synthetic access$302(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->updateSelfTimerNum()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    return-object p0
.end method

.method static synthetic access$602(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSoundEnable:Z

    return p1
.end method

.method static synthetic access$700(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->loadSelfTimerSoundIfNeed()V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->onSelfTimerStatusChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$902(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurrentPriority:I

    return p1
.end method

.method private hideSelfTimerTextView()V
    .locals 1

    .line 508
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 509
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideSelfTimerView(ZZ)V
    .locals 3

    .line 484
    sget-object p1, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "hideSelfTimerView"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 485
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerSoundLoaded:Z

    if-eqz p1, :cond_0

    .line 486
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepOnceSampleId:I

    invoke-interface {p1, v0}, Lcom/transsion/camera/utils/sound/IActionSound;->stop(I)V

    .line 487
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepTwiceSampleId:I

    invoke-interface {p1, v0}, Lcom/transsion/camera/utils/sound/IActionSound;->stop(I)V

    .line 490
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    const/4 p1, 0x0

    .line 491
    iput p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurSelfTimerNum:I

    .line 492
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 493
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    if-eqz p2, :cond_1

    .line 495
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p2, 0xc

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    const-string p1, "status_self_timer_end"

    .line 496
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->sendStatusChanged(Ljava/lang/String;)V

    .line 498
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private interruptTimer()V
    .locals 2

    .line 401
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "interruptTimer"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 404
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, "status_self_timer_cancel"

    .line 405
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->sendStatusChanged(Ljava/lang/String;)V

    return-void
.end method

.method private interruptTimerDirectly(Z)V
    .locals 2

    .line 392
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "interruptTimerDirectly"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 394
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 395
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 396
    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->hideSelfTimerView(ZZ)V

    const-string p1, "self_timer_idle"

    .line 397
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    return-void
.end method

.method private isMainThread()Z
    .locals 1

    .line 388
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$loadSelfTimerSound$1(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 590
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_0

    .line 591
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_0

    .line 593
    :cond_0
    iput p2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepOnceSampleId:I

    .line 595
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static synthetic lambda$loadSelfTimerSound$2(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 598
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadSelfTimerSound$3(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 2

    .line 602
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 603
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_0

    .line 604
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_0

    .line 606
    :cond_0
    iput p2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepTwiceSampleId:I

    .line 608
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$startSelfTimerImmediately$0(I)V
    .locals 1

    .line 555
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsPause:Z

    if-nez v0, :cond_0

    .line 556
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->startSelfTimer(I)V

    :cond_0
    return-void
.end method

.method private loadSelfTimerSound(Ljava/lang/Runnable;)V
    .locals 4

    .line 579
    iget v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStartSelfTimerNum:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSoundEnable:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerSoundLoaded:Z

    if-nez v1, :cond_1

    const/high16 v1, 0x7f0f0000

    .line 588
    new-instance v2, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V

    new-instance v3, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/utils/sound/IActionSound;->load(ILcom/transsion/camera/utils/sound/IActionSound$SoundCallback;Lcom/transsion/camera/utils/sound/IActionSound$SoundLoadCompleteCallback;)V

    .line 601
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    const v0, 0x7f0f0001

    new-instance v1, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/utils/sound/IActionSound;->load(ILcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    const/4 p1, 0x1

    .line 610
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerSoundLoaded:Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 583
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method private loadSelfTimerSoundIfNeed()V
    .locals 1

    const/4 v0, 0x0

    .line 575
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->loadSelfTimerSound(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onSelfTimerStatusChanged(Ljava/lang/String;)V
    .locals 2

    const-string v0, "off"

    .line 563
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x5

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 564
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStartSelfTimerNum:I

    .line 565
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->getShutterTypeSelftimerOn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 568
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->loadSelfTimerSoundIfNeed()V

    goto :goto_0

    .line 570
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->getShutterTypeSelftimerOff()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method private querySettingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 626
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_0

    .line 627
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private realCapture()V
    .locals 2

    .line 348
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[realCapture]: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 349
    iget v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerNumBeforeDelay:I

    if-eqz v0, :cond_0

    .line 350
    iput v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStartSelfTimerNum:I

    const/4 v0, 0x0

    .line 351
    iput v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerNumBeforeDelay:I

    :cond_0
    const-string v0, "self_timer_capture"

    .line 353
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    .line 354
    iget v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurrentPriority:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x4f

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x8c

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 359
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    iget v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurrentPriority:I

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateTriggerSelfTimerPriority(I)V

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->triggerShutterClick(I)V

    .line 361
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->getShutterTypeSelftimerOff()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    const-string v0, "self_timer_idle"

    .line 362
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    return-void
.end method

.method private sendStatusChanged(Ljava/lang/String;)V
    .locals 1

    .line 409
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_self_timer_status"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 411
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private showSelfTimerView()V
    .locals 2

    .line 502
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showSelfTimerView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 503
    iget v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStartSelfTimerNum:I

    iput v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurSelfTimerNum:I

    .line 504
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private startSelfTimer(I)V
    .locals 3

    .line 366
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 367
    sget-object p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "startSelfTimer mEntryRootLayout is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 370
    :cond_0
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[startSelfTimer]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 372
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    const/16 v1, 0x12

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    goto :goto_0

    .line 374
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->getShutterTypeSelftimerOn()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    :goto_0
    const-string p1, "self_timer_start"

    .line 376
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    .line 377
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0xb

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    const-string p1, "status_self_timer_begin"

    .line 378
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->sendStatusChanged(Ljava/lang/String;)V

    .line 379
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 380
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->isMainThread()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 381
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->showSelfTimerView()V

    goto :goto_1

    .line 383
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method

.method private startSelfTimerImmediately(Ljava/lang/String;I)V
    .locals 2

    .line 543
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x1e

    const/4 v1, 0x3

    if-ge p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    .line 549
    :cond_1
    :goto_0
    iget v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStartSelfTimerNum:I

    iput v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerNumBeforeDelay:I

    .line 550
    iput p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStartSelfTimerNum:I

    .line 551
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerSoundLoaded:Z

    if-eqz p1, :cond_2

    .line 552
    invoke-direct {p0, p2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->startSelfTimer(I)V

    goto :goto_1

    .line 554
    :cond_2
    new-instance p1, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;I)V

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->loadSelfTimerSound(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method private unloadSelfTimerSound()V
    .locals 3

    .line 615
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 616
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerSoundLoaded:Z

    if-eqz v2, :cond_0

    .line 617
    iget v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepOnceSampleId:I

    invoke-interface {v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    .line 618
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepTwiceSampleId:I

    invoke-interface {v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    :cond_0
    const/4 v1, 0x0

    .line 620
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerSoundLoaded:Z

    const/4 v1, 0x0

    .line 621
    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 622
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private updateRootLayoutRect()V
    .locals 5

    .line 633
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 637
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 638
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 639
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 640
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 641
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateSelfTimerLayout()V
    .locals 11

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    .line 124
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v2, 0x9

    .line 125
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v3, 0xa

    .line 126
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v4, 0xb

    .line 127
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v5, 0xc

    .line 128
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v6, 0xf

    .line 129
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v7, 0xe

    .line 130
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v8, 0xd

    .line 131
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 132
    iget v9, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_3

    .line 133
    iget v8, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v9, 0x5a

    const v10, 0x7f070063

    if-eq v8, v9, :cond_2

    const/16 v2, 0xb4

    if-eq v8, v2, :cond_1

    const/16 v2, 0x10e

    if-eq v8, v2, :cond_0

    .line 152
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 153
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 154
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 146
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 147
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 141
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 142
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 136
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 137
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 156
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f070062

    .line 157
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 156
    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 159
    :cond_3
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 160
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0706a8

    .line 161
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 160
    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 163
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateSelfTimerNum()V
    .locals 5

    .line 445
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 446
    sget-object p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "updateSelfTimerNum mEntryRootLayout is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 449
    :cond_0
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateSelfTimer] mCurSelfTimerNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurSelfTimerNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 450
    iget v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurSelfTimerNum:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_6

    .line 451
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "%d"

    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 452
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 457
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070768

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 459
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070767

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    int-to-float v0, v0

    .line 461
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    neg-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCountDownAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    .line 464
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 465
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 466
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCountDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 468
    :cond_3
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSoundEnable:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerSoundLoaded:Z

    if-eqz v0, :cond_5

    .line 469
    iget v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurSelfTimerNum:I

    if-ne v0, v2, :cond_4

    .line 470
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v3, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepTwiceSampleId:I

    invoke-interface {v0, v3}, Lcom/transsion/camera/utils/sound/IActionSound;->play(I)V

    goto :goto_1

    :cond_4
    if-gt v0, v1, :cond_5

    .line 472
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v3, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mBeepOnceSampleId:I

    invoke-interface {v0, v3}, Lcom/transsion/camera/utils/sound/IActionSound;->play(I)V

    .line 475
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 476
    iget v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurSelfTimerNum:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurSelfTimerNum:I

    goto :goto_2

    .line 478
    :cond_6
    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->hideSelfTimerView(ZZ)V

    .line 479
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->realCapture()V

    :goto_2
    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0192

    const/4 v1, 0x0

    .line 103
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0903f0

    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "selftimerui_use_layer_type_software"

    .line 105
    invoke-static {p2, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 107
    sget-object p2, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "use LAYER_TYPE_SOFTWARE"

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->hideSelfTimerTextView()V

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f01001f

    .line 112
    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCountDownAnim:Landroid/view/animation/Animation;

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

    const-string p0, "key_self_timer"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 227
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/16 v1, 0x11

    if-eq p1, v1, :cond_4

    const/16 v1, 0x1b

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/16 v1, 0x1f

    if-eq p1, v1, :cond_2

    const/16 v1, 0x4d

    if-eq p1, v1, :cond_4

    const/16 v1, 0x55

    if-eq p1, v1, :cond_4

    const/16 v1, 0x2d

    if-eq p1, v1, :cond_1

    const/16 v1, 0x2e

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsFunVideoRecordingStart:Z

    goto :goto_0

    .line 296
    :cond_1
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsFunVideoRecordingStart:Z

    goto :goto_0

    .line 281
    :cond_2
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsPause:Z

    goto :goto_0

    .line 284
    :cond_3
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsPause:Z

    .line 285
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsFunVideoRecordingStart:Z

    .line 291
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    const-string v1, "self_timer_start"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 292
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->interruptTimerDirectly(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 339
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    const-string v1, "self_timer_start"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->interruptTimer()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 2

    .line 238
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 239
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x5

    if-ne v1, v0, :cond_1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_1

    :cond_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    if-eqz v0, :cond_2

    .line 244
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->updateSelfTimerLayout()V

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerTextView:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->setOrientation(IZ)V

    :cond_2
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 271
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    .line 272
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    const-string p2, "self_timer_start"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 273
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->interruptTimerDirectly(Z)V

    :cond_0
    return-void
.end method

.method public onShutterClick(I)Z
    .locals 3

    .line 307
    iput p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurrentPriority:I

    .line 308
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mIsFunVideoRecordingStart:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 312
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    const-string v1, "self_timer_capture"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    return v1

    .line 315
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    const-string v2, "self_timer_start"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 316
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->interruptTimer()V

    return v1

    .line 319
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v2, "off"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 320
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    iget p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurrentPriority:I

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateTriggerSelfTimerPriority(I)V

    return v0

    .line 323
    :cond_3
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->startSelfTimer(I)V

    return v1
.end method

.method public onShutterLongClick(I)Z
    .locals 3

    .line 329
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onShutterLongClick"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSelfTimerState:Ljava/lang/String;

    const-string v2, "self_timer_idle"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "intercept long click event when self timer start"

    .line 331
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 334
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onShutterLongClick(I)Z

    move-result p0

    return p0
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 1

    .line 168
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 170
    sget-object p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "key_shutter_sound"

    .line 173
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->querySettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mSoundEnable:Z

    .line 174
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->onSelfTimerStatusChanged(Ljava/lang/String;)V

    .line 175
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCurrentCameraId:Ljava/lang/String;

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

    .line 191
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez p1, :cond_0

    .line 193
    sget-object p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 196
    :cond_0
    sget-object p1, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "register status"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 197
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_shutter_sound"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 198
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_self_timer"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 199
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_start_self_timer"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 200
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_start_gesture_self_timer"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .locals 1

    .line 256
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz p1, :cond_0

    const/16 v0, 0xa

    .line 258
    invoke-interface {p1, p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->registerShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;I)V

    :cond_0
    return-void
.end method

.method public setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    return-void
.end method

.method public setupEntryView()V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->updateSelfTimerLayout()V

    .line 119
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->loadSelfTimerSoundIfNeed()V

    return-void
.end method

.method public unInit()V
    .locals 4

    .line 205
    sget-object v0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mUIHandler:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 207
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 209
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v3, "key_shutter_sound"

    invoke-virtual {v0, v3, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v3, "key_self_timer"

    invoke-virtual {v0, v3, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v3, "key_start_self_timer"

    invoke-virtual {v0, v3, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v3, "key_start_gesture_self_timer"

    invoke-virtual {v0, v3, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->unloadSelfTimerSound()V

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->unRegisterShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCountDownAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 218
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mCountDownAnim:Landroid/view/animation/Animation;

    :cond_1
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 181
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->updateRootLayoutRect()V

    return-void
.end method

.class public Lcom/transsion/camera/feature/setting/focus/Focus;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "Focus.java"

# interfaces
.implements Lcom/transsion/camera/feature/setting/focus/IFocus;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;,
        Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;
    }
.end annotation


# static fields
.field private static final FOCUS_HOLD_MILLS:I = 0xbb8

.field private static final FOCUS_STATE_UPDATE:I = 0x2

.field private static final RESET_TOUCH_FOCUS:I = 0x1

.field private static final TYPE_RESET_TOUCH_FOCUS_AND_VIEW:I = 0x1

.field private static final TYPE_RESET_TOUCH_VIEW:I = 0x2


# instance fields
.field private mDisableTouchCapture:Z

.field private mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

.field private mFocusParameterConfigure:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

.field private final mFocusStateListener:Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;

.field private mFocusStateUpdateDisabled:Z

.field private mIsAutoFocusTriggered:Z

.field private mIsCapturing:Z

.field private mIsEvChanging:Z

.field private mIsInitValue:Z

.field private mIsPreviewStarted:Z

.field private mIsProfessionalMode:Z

.field private mIsShowUI:Z

.field private mLaserFocusSupport:Z

.field private mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

.field private mMainHandler:Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

.field private mModeDeviceState:I

.field private mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

.field private mNeedResetFocusState:Z

.field private mNeedResetTouchFocus:Z

.field private mNeedResetTouchType:I

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mPreviousMode:Ljava/lang/String;

.field private mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mStatusChangeListener:Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;

.field private mTag:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 31
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x1

    .line 34
    iput v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mModeDeviceState:I

    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    const/4 v2, 0x0

    .line 39
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusStateUpdateDisabled:Z

    .line 40
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    .line 42
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsPreviewStarted:Z

    .line 44
    sget-object v3, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->STATE_UNLOCKED:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    iput-object v3, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    .line 48
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsCapturing:Z

    .line 49
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    .line 50
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mDisableTouchCapture:Z

    .line 55
    iput v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    .line 56
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetFocusState:Z

    .line 57
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchFocus:Z

    .line 59
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLaserFocusSupport:Z

    .line 61
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsProfessionalMode:Z

    .line 62
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsInitValue:Z

    .line 63
    new-instance v0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/focus/Focus;Lcom/transsion/camera/feature/setting/focus/Focus$1;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;

    .line 314
    new-instance v0, Lcom/transsion/camera/feature/setting/focus/Focus$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/focus/Focus$1;-><init>(Lcom/transsion/camera/feature/setting/focus/Focus;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusStateListener:Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;

    .line 462
    new-instance v0, Lcom/transsion/camera/feature/setting/focus/Focus$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/focus/Focus$2;-><init>(Lcom/transsion/camera/feature/setting/focus/Focus;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/setting/focus/Focus;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->resetFocusArea()V

    return-void
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/transsion/camera/feature/setting/focus/Focus;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/setting/focus/Focus;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/transsion/camera/feature/setting/focus/Focus;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/setting/focus/Focus;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    return p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/setting/focus/Focus;IIJ)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/setting/focus/Focus;->sendFocusMessage(IIJ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/setting/focus/Focus;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsInitValue:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/setting/focus/Focus;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->processManualFocus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/focus/Focus;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsCapturing:Z

    return p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/setting/focus/Focus;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsCapturing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/focus/Focus;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->doResetTouchFocus(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/focus/Focus;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchFocus:Z

    return p0
.end method

.method static synthetic access$402(Lcom/transsion/camera/feature/setting/focus/Focus;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchFocus:Z

    return p1
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/setting/focus/Focus;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetFocusState:Z

    return p0
.end method

.method static synthetic access$502(Lcom/transsion/camera/feature/setting/focus/Focus;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetFocusState:Z

    return p1
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/setting/focus/Focus;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->onFocusStateUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mMainHandler:Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/setting/focus/Focus;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsAutoFocusTriggered:Z

    return p0
.end method

.method static synthetic access$802(Lcom/transsion/camera/feature/setting/focus/Focus;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsAutoFocusTriggered:Z

    return p1
.end method

.method static synthetic access$902(Lcom/transsion/camera/feature/setting/focus/Focus;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsPreviewStarted:Z

    return p1
.end method

.method private checkAfEnv()Z
    .locals 4

    .line 507
    iget v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mModeDeviceState:I

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-ne v2, v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[checkAfEnv] touch focus has been disabled mModeDeviceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mModeDeviceState:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->isFocusCanDo()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 516
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 517
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_3

    const-string v3, "continuous-picture"

    .line 518
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "continuous-video"

    .line 519
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 520
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "getEntryValues not contains continuous"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method private doResetTouchFocus(I)V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doResetTouchFocus"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    const-string v1, "key_focus_state"

    .line 283
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "INACTIVE"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 287
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    .line 288
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    if-eqz p0, :cond_1

    .line 289
    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->restoreContinue()V

    :cond_1
    return-void
.end method

.method private handleAfLockRestore()V
    .locals 3

    .line 527
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleAfLockRestore] mLockState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 528
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->isLockActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->STATE_UNLOCKED:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    :cond_0
    return-void
.end method

.method private isLockActive()Z
    .locals 3

    .line 500
    sget-object v0, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->STATE_LOCKING:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->STATE_LOCKED:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    .line 501
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 502
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isLockActive] isLockActive =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private onFocusStateUpdate(Ljava/lang/String;)V
    .locals 6

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusStateUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mIsAutoFocusTriggered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsAutoFocusTriggered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsShowUI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 326
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsAutoFocusTriggered:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    if-eqz v0, :cond_0

    return-void

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 332
    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFocusStateUpdate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_focus_state"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 338
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "PASSIVE_SCAN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "ACTIVE_FOCUSED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "PASSIVE_FOCUSED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "ACTIVE_UNFOCUSED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_0

    :sswitch_4
    const-string v2, "PASSIVE_UNFOCUSED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    move v0, v1

    :goto_0
    const-string v2, "[onFocusStateUpdate] ignore the state "

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 340
    :pswitch_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onFocusStateUpdate] passive focus start with state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 341
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->isLockActive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 342
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 345
    :cond_8
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusStateUpdateDisabled:Z

    if-eqz p1, :cond_9

    .line 346
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onFocusStateUpdate] disable update passive focus state "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 349
    :cond_9
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    .line 350
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->resetFocusArea()V

    goto/16 :goto_2

    .line 365
    :pswitch_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onFocusStateUpdate] active focus done with state "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , mLockState "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", needResetTouchType:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 367
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsAutoFocusTriggered:Z

    .line 371
    sget-object p1, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->STATE_LOCKING:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 372
    sget-object p1, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->STATE_LOCKED:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    goto :goto_1

    .line 374
    :cond_a
    iget p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    if-lez p1, :cond_b

    .line 375
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->resetFocusArea()V

    .line 376
    iput-boolean v3, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetFocusState:Z

    .line 377
    iget p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    const-wide/16 v4, 0xbb8

    invoke-direct {p0, v3, p1, v4, v5}, Lcom/transsion/camera/feature/setting/focus/Focus;->sendFocusMessage(IIJ)V

    .line 380
    :cond_b
    :goto_1
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mDisableTouchCapture:Z

    if-eqz p1, :cond_c

    .line 381
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mDisableTouchCapture:Z

    .line 382
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->updateTouchCapture()V

    goto :goto_2

    .line 357
    :pswitch_2
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onFocusStateUpdate] passive focus done with state "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 358
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->isLockActive()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 359
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 388
    :cond_c
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onFocusStateUpdate]-"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1d09b766 -> :sswitch_4
        0x2c1b7ca5 -> :sswitch_3
        0x4b74c21f -> :sswitch_2
        0x5664cb1e -> :sswitch_1
        0x5b4248b5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processManualFocus(Ljava/lang/String;)V
    .locals 4

    .line 560
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsInitValue:Z

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mMainHandler:Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 565
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->resetTouchFocusView()V

    const-string v0, "continuous-picture"

    .line 567
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "auto"

    if-eqz v2, :cond_1

    .line 568
    iput v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    goto :goto_0

    .line 569
    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    .line 570
    iput v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 572
    iput v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    .line 575
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p1, "fixed"

    .line 579
    :cond_3
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsPreviewStarted:Z

    if-nez v0, :cond_4

    .line 580
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "processManualFocus, preview is not started!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 584
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 585
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processManualFocus is same, value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 589
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->checkAfEnv()Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 593
    :cond_6
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->handleAfLockRestore()V

    .line 595
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    if-eqz v0, :cond_7

    .line 596
    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->updateFocusMode(Ljava/lang/String;)Z

    .line 598
    :cond_7
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, p1, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 600
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processManualFocus, updateFocusMode value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 601
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz p0, :cond_8

    .line 602
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_8
    :goto_1
    return-void
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private resetFocusArea()V
    .locals 1

    .line 494
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 495
    invoke-interface {p0, v0, v0}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->updateFocusArea(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private resetTouchFocusView()V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_focus_state"

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "INACTIVE"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "ACTIVE_HIDE_FOCUSE_VIEW"

    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 307
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 310
    invoke-interface {p0, v2, v0}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method private sendFocusMessage(IIJ)V
    .locals 2

    .line 548
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mMainHandler:Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 553
    invoke-virtual {p0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 555
    :cond_1
    invoke-virtual {p0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private updateTouchCapture()V
    .locals 3

    .line 447
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 448
    invoke-static {}, Lcom/transsion/camera/feature/setting/focus/LockRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    .line 449
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mDisableTouchCapture:Z

    if-eqz p0, :cond_0

    const-string p0, "on"

    goto :goto_0

    :cond_0
    const-string p0, "off"

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    .line 447
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forceApplyValue(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic forceUpdateValue(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_focus"

    return-object p0
.end method

.method public getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    .locals 0

    .line 658
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusParameterConfigure:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/focus/Focus;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusParameterConfigure:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    .line 223
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    .line 224
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    .line 226
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusStateListener:Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/setting/focus/IFocusController;->setFocusStateListener(Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;)V

    .line 228
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusParameterConfigure:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 459
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 203
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getStoreScope()Ljava/lang/String;
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsProfessionalMode:Z

    if-eqz v0, :cond_0

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "key_professional"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 216
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 454
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 70
    new-instance p2, Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;-><init>(Lcom/transsion/camera/feature/setting/focus/Focus;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mMainHandler:Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

    const/4 p2, 0x1

    .line 71
    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "show_laser_focus_view"

    .line 72
    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLaserFocusSupport:Z

    .line 74
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    const-string p1, "key_exposure_view"

    .line 75
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "capture_state"

    .line 76
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_exposure_scroll_start_and_hide"

    .line 77
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_manual_focus"

    .line 78
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "screen_form_state"

    .line 79
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->registerKeyToMonitor(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 102
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 105
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 109
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, p2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, p2, v2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 117
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 118
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsInitValue:Z

    const-string p1, "continuous-picture"

    .line 119
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "continuous-video"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "auto"

    .line 121
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    .line 122
    iput p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 124
    iput p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    goto :goto_2

    .line 120
    :cond_4
    :goto_1
    iput v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    .line 126
    :goto_2
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    if-eqz p1, :cond_5

    .line 127
    invoke-interface {p1, p2}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->updateFocusMode(Ljava/lang/String;)Z

    .line 129
    :cond_5
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    .line 130
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initValueAndSupport, setValue, value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", needResetTouchType:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method laserFocusSupport()Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLaserFocusSupport:Z

    return p0
.end method

.method notifyModeChanged(Ljava/lang/String;)V
    .locals 1

    .line 542
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_0

    const-string v0, "key_focus_mode"

    .line 543
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onModeClosed(Ljava/lang/String;)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onModeClosed]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 155
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 156
    sget-object p1, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->STATE_UNLOCKED:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    const/4 p1, 0x1

    .line 157
    iput p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    const/4 p1, 0x0

    .line 158
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetFocusState:Z

    .line 159
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchFocus:Z

    .line 160
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->resetFocusArea()V

    .line 161
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    .line 162
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusStateUpdateDisabled:Z

    .line 163
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsInitValue:Z

    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 4

    const-string v0, "key_professional"

    .line 135
    invoke-static {p3, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsProfessionalMode:Z

    const-string p3, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    .line 136
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    const-string v0, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    .line 137
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    .line 138
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsInitValue:Z

    .line 139
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    .line 140
    sget-object p2, Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;->STATE_UNLOCKED:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mLockState:Lcom/transsion/camera/feature/setting/focus/IFocus$LockState;

    const/4 p2, 0x1

    .line 141
    iput p2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mNeedResetTouchType:I

    .line 142
    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    .line 143
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 144
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mPreviousMode:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez p3, :cond_0

    if-nez v0, :cond_0

    move v1, p2

    :cond_0
    const-string p2, "focus_ui_active"

    .line 145
    invoke-interface {v2, p2, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 148
    :cond_1
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mPreviousMode:Ljava/lang/String;

    .line 149
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onModeOpened, mIsProfessionalMode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsProfessionalMode:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " , mModeType:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 6

    .line 394
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsPreviewStarted:Z

    if-nez v0, :cond_0

    .line 395
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "preview is not started!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 399
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->checkAfEnv()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, ","

    .line 403
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/StringUtils;->splitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 404
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 405
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onValueChanged illegal value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 409
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsAutoFocusTriggered:Z

    .line 410
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->handleAfLockRestore()V

    .line 412
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    .line 413
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    .line 414
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 419
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 420
    new-instance v3, Lcom/transsion/camera/utils/SettingInfo$Area;

    invoke-direct {v3, v1}, Lcom/transsion/camera/utils/SettingInfo$Area;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 423
    new-instance v4, Lcom/transsion/camera/utils/SettingInfo$Area;

    invoke-direct {v4, v1}, Lcom/transsion/camera/utils/SettingInfo$Area;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    invoke-interface {v1, v2, v3}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->updateFocusArea(Ljava/util/List;Ljava/util/List;)V

    .line 430
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mMainHandler:Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 431
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    const-string v2, "auto"

    invoke-interface {v1, v2}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->updateFocusMode(Ljava/lang/String;)Z

    .line 432
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onValueChanged, updateFocusMode value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz v1, :cond_3

    .line 434
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    .line 436
    :cond_3
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsShowUI:Z

    .line 437
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    invoke-interface {v1}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->autoFocus()V

    const/4 v1, 0x4

    .line 438
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 439
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mDisableTouchCapture:Z

    .line 440
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->updateTouchCapture()V

    .line 443
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onSingleTapUp]-"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 425
    :catch_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onValueChanged IllegalArgumentException"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideValues] + headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",supportValues "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 236
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 237
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 238
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->overrideFocusMode(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 240
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const-string p3, "auto"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 241
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 242
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mMainHandler:Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 0

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    const-string v0, "key_exposure_view"

    .line 91
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "capture_state"

    .line 92
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_exposure_scroll_start_and_hide"

    .line 93
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_manual_focus"

    .line 94
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "screen_form_state"

    .line 95
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    return-void
.end method

.method public updateModeDeviceState(I)V
    .locals 3

    .line 169
    iput p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mModeDeviceState:I

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateModeDeviceState] + newState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x6

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x7

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_6

    .line 180
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 181
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    if-eqz p1, :cond_1

    .line 182
    invoke-interface {p1, v2}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->disableUpdateFocusState(Z)V

    .line 184
    :cond_1
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusStateUpdateDisabled:Z

    goto :goto_0

    .line 173
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    if-eqz p1, :cond_3

    .line 174
    invoke-interface {p1, v2}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->disableUpdateFocusState(Z)V

    .line 176
    :cond_3
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusStateUpdateDisabled:Z

    goto :goto_0

    .line 191
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    if-eqz p1, :cond_5

    .line 192
    invoke-interface {p1, v1}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->disableUpdateFocusState(Z)V

    .line 194
    :cond_5
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mFocusStateUpdateDisabled:Z

    :cond_6
    :goto_0
    return-void
.end method

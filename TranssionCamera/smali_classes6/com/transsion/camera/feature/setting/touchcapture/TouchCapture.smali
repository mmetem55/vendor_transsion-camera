.class public Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "TouchCapture.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# static fields
.field private static final DEFAULT_VALUE:Ljava/lang/String; = "off"

.field private static final SETTING_KEY:Ljava/lang/String; = "key_touch_capture"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mIsModeSupport:Z

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mRestored:Z

.field private mTouchCaptureParametersConfigure:Lcom/transsion/camera/feature/setting/touchcapture/TouchCaptureParametersConfigure;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;->mRestored:Z

    .line 42
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;->mIsModeSupport:Z

    .line 149
    new-instance v0, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture$1;-><init>(Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;->mRestored:Z

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;->syncRemoteCaptureFragment()V

    return-void
.end method

.method private syncRemoteCaptureFragment()V
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;->mIsModeSupport:Z

    if-eqz v1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    const-string v3, "remote_capture_state_touch"

    invoke-virtual {v0, v3, v1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

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

    const-string p0, "key_touch_capture"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;->mTouchCaptureParametersConfigure:Lcom/transsion/camera/feature/setting/touchcapture/TouchCaptureParametersConfigure;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/transsion/camera/feature/setting/touchcapture/TouchCaptureParametersConfigure;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/touchcapture/TouchCaptureParametersConfigure;-><init>(Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;->mTouchCaptureParametersConfigure:Lcom/transsion/camera/feature/setting/touchcapture/TouchCaptureParametersConfigure;

    .line 117
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;->mTouchCaptureParametersConfigure:Lcom/transsion/camera/feature/setting/touchcapture/TouchCaptureParametersConfigure;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 79
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

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

    .line 109
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    const-string p2, "on"

    .line 50
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "off"

    .line 51
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    const-string p2, "key_remote_capture"

    .line 54
    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
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

    .line 60
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {p1, v0, v2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;->syncRemoteCaptureFragment()V

    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 103
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;->mIsModeSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;->mIsModeSupport:Z

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "key_remote_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    check-cast p2, Ljava/lang/CharSequence;

    const-string p1, "remote_capture_state_touch"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 125
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;->getKey()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;->onValueChanged(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 3

    .line 89
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .locals 1

    .line 136
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/touchcapture/TouchCapture;->mRestored:Z

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    const-string v1, "key_remote_capture"

    .line 73
    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

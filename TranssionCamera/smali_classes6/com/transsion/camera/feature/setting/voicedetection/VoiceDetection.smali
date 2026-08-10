.class public Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "VoiceDetection.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;
    }
.end annotation


# static fields
.field private static final MSG_CHECK_VOICE:I = 0x66

.field private static final MSG_INIT_VOICE:I = 0x64

.field private static final MSG_PAUSE_VOICE:I = 0x68

.field private static final MSG_RESUME_VOICE:I = 0x67

.field private static final MSG_TAKE_PICTURE:I = 0x69

.field private static final MSG_TRIGGER_TAKE_PICTURE:I = 0x6a

.field private static final MSG_UNINIT_VOICE:I = 0x65

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VALUE_OFF:Ljava/lang/String; = "off"

.field private static final VOICE_CAPTURE:Ljava/lang/String; = "capture"

.field private static final VOICE_CHEESE:Ljava/lang/String; = "cheese"

.field private static final VOICE_SHOOT:Ljava/lang/String; = "shoot"

.field private static mInit:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/String;

.field private final mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

.field private mHandler:Landroid/os/Handler;

.field private mIsModeSupport:Z

.field private mIsTakePicture:Z

.field private final mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mRestored:Z

.field private mResumed:Z

.field mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

.field private mSupportCapture:Z

.field private final mTvcResultListener:Lcom/transsion/voicecamera/sdk/TVCResultListener;

.field private mVoiceDetectionParametersConfigure:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetectionParametersConfigure;


# direct methods
.method public static synthetic $r8$lambda$OD9skOSmx1qkvkHQgLXTjybi1Ks(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Landroid/media/Image;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->lambda$new$0(Landroid/media/Image;III)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 84
    sput-boolean v0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsModeSupport:Z

    const/4 v1, 0x1

    .line 79
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mSupportCapture:Z

    .line 80
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mResumed:Z

    .line 81
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mRestored:Z

    .line 82
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsTakePicture:Z

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mDefaultValue:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    .line 237
    new-instance v0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$1;-><init>(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    .line 279
    new-instance v0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;-><init>(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 439
    new-instance v0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$3;-><init>(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mTvcResultListener:Lcom/transsion/voicecamera/sdk/TVCResultListener;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Landroid/os/Handler;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/camera/app/common/storage/DataStore;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mSupportCapture:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mSupportCapture:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mResumed:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mResumed:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsTakePicture:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsTakePicture:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetectionParametersConfigure;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mVoiceDetectionParametersConfigure:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetectionParametersConfigure;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mRestored:Z

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->syncRemoteCaptureFragment()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsModeSupport:Z

    return p0
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 58
    sget-boolean v0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mInit:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    .line 58
    sput-boolean p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mInit:Z

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Landroid/content/Context;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/voicecamera/sdk/TVCResultListener;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mTvcResultListener:Lcom/transsion/voicecamera/sdk/TVCResultListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/camera/app/common/storage/DataStore;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method private hasVisibleFragment()Z
    .locals 1

    .line 357
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    .line 358
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 359
    invoke-virtual {p0}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    .line 360
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/media/Image;III)V
    .locals 0

    .line 87
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string p2, "off"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsModeSupport:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    sget-boolean p1, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mInit:Z

    if-nez p1, :cond_1

    .line 91
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private syncRemoteCaptureFragment()V
    .locals 4

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsModeSupport:Z

    if-eqz v1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    const-string v3, "remote_capture_state_voice"

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

.method public getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mDevicePictureStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_voice_detection"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mVoiceDetectionParametersConfigure:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetectionParametersConfigure;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetectionParametersConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetectionParametersConfigure;-><init>(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mVoiceDetectionParametersConfigure:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetectionParametersConfigure;

    .line 265
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mVoiceDetectionParametersConfigure:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetectionParametersConfigure;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 145
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

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

    .line 257
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 100
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mContext:Landroid/content/Context;

    .line 101
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "voice_detection"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 103
    new-instance p2, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;-><init>(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Landroid/os/Looper;Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$1;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    const-string p2, "key_remote_capture"

    .line 105
    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 106
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_voice_state"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 107
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_restore_settings_notify_ui"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
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

    .line 130
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mDefaultValue:Ljava/lang/String;

    .line 131
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 132
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 133
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 134
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 135
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 136
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mDefaultValue:Ljava/lang/String;

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 139
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->syncRemoteCaptureFragment()V

    .line 140
    sget-object p1, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[initializeValue] -- mDefaultValue:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isModeSupport()Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsModeSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 205
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 206
    sget-object p1, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onModeClosed"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 207
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsModeSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 2

    .line 195
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 196
    sget-object p2, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onModeOpened: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsModeSupport:Z

    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string p2, "on"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x67

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 314
    sget-object v0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "key_restore_settings_notify_ui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "key_remote_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "key_voice_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 341
    :pswitch_0
    check-cast p2, Ljava/lang/CharSequence;

    const-string p1, "end"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 342
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 344
    invoke-static {v1}, Lcom/transsion/voicecamera/sdk/TransVCamera;->setSaveAudioData(Z)V

    goto/16 :goto_1

    .line 327
    :pswitch_1
    check-cast p2, Ljava/lang/CharSequence;

    const-string p1, "remote_capture_state_voice"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "off"

    if-eqz p1, :cond_3

    .line 328
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->getKey()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p2, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 329
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->onValueChanged(Ljava/lang/String;)V

    .line 330
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 332
    invoke-static {v1}, Lcom/transsion/voicecamera/sdk/TransVCamera;->setSaveAudioData(Z)V

    goto :goto_1

    :cond_3
    const-string p1, "remote_capture_state_dump_voice"

    .line 334
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 335
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string p2, "key_dump_voice"

    invoke-virtual {p1, p2, v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "on"

    .line 337
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-static {p0}, Lcom/transsion/voicecamera/sdk/TransVCamera;->setSaveAudioData(Z)V

    goto :goto_1

    .line 318
    :pswitch_2
    check-cast p2, Ljava/lang/CharSequence;

    const-string p1, "voice_normal_state"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v0, 0x69

    if-eqz p1, :cond_4

    .line 319
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 320
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_4
    const-string p1, "voice_invalid_state"

    .line 321
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 322
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 323
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x52f54164 -> :sswitch_2
        0x5465262d -> :sswitch_1
        0x60ee855f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 171
    sget-object v0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChanged value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", oldValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 175
    invoke-static {}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetectionRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    const-string v0, "on"

    .line 178
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v0, 0x64

    if-eqz p1, :cond_0

    .line 179
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 180
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 183
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 187
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mVoiceDetectionParametersConfigure:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetectionParametersConfigure;

    if-eqz p0, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetectionParametersConfigure;->sendSettingChangeRequest()V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 3

    .line 222
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    .line 223
    sget-object v0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 224
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsModeSupport:Z

    const-string v1, "on"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .locals 1

    .line 270
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    const/4 v0, 0x1

    .line 271
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mRestored:Z

    return-void
.end method

.method public resume()V
    .locals 2

    .line 212
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->resume()V

    .line 213
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x69

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 217
    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "resume"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public turnOnSwitch(Z)V
    .locals 3

    .line 160
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->turnOnSwitch(Z)V

    if-eqz p1, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->hasVisibleFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 164
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " turnOnSwitch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 113
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 114
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mIsModeSupport:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_2

    const-string v1, "key_remote_capture"

    .line 121
    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_voice_state"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_restore_settings_notify_ui"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 125
    :cond_2
    sget-object p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "uninit"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

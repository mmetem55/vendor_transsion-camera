.class public Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "VoiceDetectionUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$VoiceDetSettingCallBack;
    }
.end annotation


# static fields
.field private static final SETTING_KEY:Ljava/lang/String; = "key_voice_detection"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mIsTackPicture:Z

.field private mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

.field private mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mUIHandler:Landroid/os/Handler;

.field private mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

.field private mVoiceDetSettingCallBack:Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$VoiceDetSettingCallBack;


# direct methods
.method public static synthetic $r8$lambda$Kv_EcTilP3gl_4PkdsnXlPR_C9E(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 135
    new-instance p1, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 61
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mUIHandler:Landroid/os/Handler;

    .line 62
    new-instance p1, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$VoiceDetSettingCallBack;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$VoiceDetSettingCallBack;-><init>(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mVoiceDetSettingCallBack:Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$VoiceDetSettingCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mIsTackPicture:Z

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mIsTackPicture:Z

    return p1
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 40
    sget-object v0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;)Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 136
    sget-object v0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "key_focus_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "key_voice_state"

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "voice_capture_state"

    .line 149
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 150
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mUIHandler:Landroid/os/Handler;

    new-instance p2, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$1;-><init>(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 139
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 140
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_touch_capture"

    const-string v3, "off"

    .line 139
    invoke-virtual {p1, v2, v3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "ACTIVE_SCAN"

    .line 141
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_2

    .line 143
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "voice_invalid_state"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_voice_detection"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 98
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .locals 2

    .line 76
    sget-object v0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MSG_HIDE_VOICE hideEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mUIHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 7

    const/16 v0, 0xb

    const-string v1, "key_voice_state"

    if-eq p1, v0, :cond_8

    const/16 v0, 0xc

    const/4 v2, 0x1

    if-eq p1, v0, :cond_6

    const/16 v0, 0x11

    if-eq p1, v0, :cond_5

    const/16 v0, 0x12

    if-eq p1, v0, :cond_6

    const/16 v0, 0x17

    if-eq p1, v0, :cond_5

    const/16 v0, 0x18

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1b

    const-string v3, "on"

    const-string v4, "key_voice_detection"

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x34

    if-eq p1, v0, :cond_5

    const/16 v0, 0x35

    if-eq p1, v0, :cond_4

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_6

    const/16 v0, 0x87

    if-eq p1, v0, :cond_5

    const/16 v0, 0x88

    if-eq p1, v0, :cond_6

    const/16 v0, 0x89

    if-eq p1, v0, :cond_5

    const/16 v0, 0x8a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x8d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x29

    if-eq p1, v0, :cond_5

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_4

    const/16 v0, 0x40

    if-eq p1, v0, :cond_5

    const/16 v0, 0x41

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4d

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4e

    if-eq p1, v0, :cond_6

    const/16 v0, 0x55

    if-eq p1, v0, :cond_5

    const/16 v0, 0x56

    if-eq p1, v0, :cond_6

    const/16 v0, 0x66

    if-eq p1, v0, :cond_5

    const/16 v0, 0x67

    if-eq p1, v0, :cond_6

    const/16 v0, 0x76

    if-eq p1, v0, :cond_5

    const/16 v0, 0x77

    if-eq p1, v0, :cond_6

    goto/16 :goto_0

    .line 267
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p1, :cond_1

    .line 268
    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 270
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    const/16 p1, 0x8

    invoke-interface {p0, p1, v6, v5}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_9

    invoke-interface {p1, v4}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    invoke-interface {p0, v2, v6, v5}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_9

    .line 216
    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    .line 217
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v4}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    invoke-interface {p0, v2, v6, v5}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_9

    .line 247
    invoke-interface {p0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    goto :goto_0

    .line 238
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_9

    const/4 p1, 0x0

    .line 239
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    goto :goto_0

    .line 259
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_7

    .line 260
    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    .line 262
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_9

    .line 263
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "voice_normal_state"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 223
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_9

    .line 224
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "voice_invalid_state"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    :goto_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 177
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    return-void
.end method

.method public onShutterLongClick(I)Z
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 193
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    .line 195
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onShutterLongClick(I)Z

    move-result p0

    return p0
.end method

.method public onShutterUp(I)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 201
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    .line 203
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onShutterUp(I)V

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_0

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mVoiceDetSettingCallBack:Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$VoiceDetSettingCallBack;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    :cond_0
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

    .line 123
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_focus_state"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 126
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_voice_state"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .locals 1

    .line 183
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V

    .line 184
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 186
    invoke-interface {p1, p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->registerShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;I)V

    :cond_0
    return-void
.end method

.method public setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    return-void
.end method

.method public setupEntryView()V
    .locals 0

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 104
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_focus_state"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_voice_state"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

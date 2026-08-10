.class public Lcom/transsion/camera/app/ui/RemoteCaptureFragment;
.super Lcom/transsion/camera/app/ui/AbstractSettingFragment;
.source "RemoteCaptureFragment.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDumpVoiceButton:Landroid/widget/Switch;

.field private mDumpVoiceLayout:Landroid/widget/RelativeLayout;

.field private mFingerCaptureLayout:Landroid/widget/RelativeLayout;

.field private mFingerSwitchButton:Landroid/widget/Switch;

.field private mGestureCaptureLayout:Landroid/widget/RelativeLayout;

.field private mGestureGuideLayout:Landroid/widget/FrameLayout;

.field private mGestureSwitchButton:Landroid/widget/Switch;

.field private mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mNeedDumpVoice:Z

.field private mSmileCaptureLayout:Landroid/widget/RelativeLayout;

.field private mSmileSwitchButton:Landroid/widget/Switch;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mTouchCaptureLayout:Landroid/widget/RelativeLayout;

.field private mTouchSwitchButton:Landroid/widget/Switch;

.field private mVoiceCaptureLayout:Landroid/widget/RelativeLayout;

.field private mVoiceSwitchButton:Landroid/widget/Switch;


# direct methods
.method public static synthetic $r8$lambda$4ASilLOfWOYwVn-Rz2lFOI-6E1A(Lcom/transsion/camera/app/ui/RemoteCaptureFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->lambda$onViewCreated$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AQFjOyzoqXd2oheZEeUwM-sMxHc(Lcom/transsion/camera/app/ui/RemoteCaptureFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->lambda$onViewCreated$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B9j_s5x0zfqI3RLbnKPnZ8lHztE(Lcom/transsion/camera/app/ui/RemoteCaptureFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->lambda$onViewCreated$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QyhCQ2jirFhWouvTa74_z00m6DQ(Lcom/transsion/camera/app/ui/RemoteCaptureFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->lambda$onViewCreated$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lgx32KaxtTqRARPrKIqJwol9XZ4(Lcom/transsion/camera/app/ui/RemoteCaptureFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->lambda$onViewCreated$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xaODa5q_y2-46Un3I3rZglzYsxg(Lcom/transsion/camera/app/ui/RemoteCaptureFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 4

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mTouchSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 89
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mTouchSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "on"

    goto :goto_0

    :cond_0
    const-string v0, "off"

    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "key_touch_capture"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_1

    const-string p1, "key_remote_capture"

    .line 91
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "remote_capture_state_touch"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Landroid/view/View;)V
    .locals 4

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mSmileSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 100
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mSmileSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "on"

    goto :goto_0

    :cond_0
    const-string v0, "off"

    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "key_smile_detection"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_1

    const-string p1, "key_remote_capture"

    .line 102
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "remote_capture_state_smile"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onViewCreated$2(Landroid/view/View;)V
    .locals 5

    .line 110
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mVoiceSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 111
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mVoiceSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const-string v1, "off"

    if-eqz v0, :cond_0

    const-string v0, "on"

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_voice_detection"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v0, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_1

    const-string v0, "key_remote_capture"

    .line 113
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v2, "remote_capture_state_voice"

    invoke-virtual {p1, v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    :cond_1
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mNeedDumpVoice:Z

    if-eqz p1, :cond_3

    .line 116
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDumpVoiceLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mVoiceSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 117
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mVoiceSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-nez p1, :cond_3

    .line 118
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDumpVoiceButton:Landroid/widget/Switch;

    invoke-virtual {p1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_dump_voice"

    invoke-virtual {p0, v0, v1, p1, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$onViewCreated$3(Landroid/view/View;)V
    .locals 4

    .line 127
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDumpVoiceButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 128
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDumpVoiceButton:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "on"

    goto :goto_0

    :cond_0
    const-string v0, "off"

    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "key_dump_voice"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_1

    const-string p1, "key_remote_capture"

    .line 131
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "remote_capture_state_dump_voice"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onViewCreated$4(Landroid/view/View;)V
    .locals 4

    .line 146
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mGestureSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 147
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mGestureSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "on"

    goto :goto_0

    :cond_0
    const-string v0, "off"

    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "key_gesture_detection"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_1

    const-string p1, "key_remote_capture"

    .line 149
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "remote_capture_state_gesture"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onViewCreated$5(Landroid/view/View;)V
    .locals 4

    .line 157
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mFingerSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 158
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mFingerSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "on"

    goto :goto_0

    :cond_0
    const-string v0, "off"

    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "key_fingerprint_capture"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_1

    const-string p1, "key_remote_capture"

    .line 160
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "remote_capture_state_fingerprint"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private setViewUI()V
    .locals 10

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "remote_capture_state_touch"

    const-string v3, "false"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 178
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "off"

    const-string v4, "on"

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mTouchCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mTouchSwitchButton:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 181
    invoke-virtual {v7}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v8

    const-string v9, "key_touch_capture"

    invoke-virtual {v7, v9, v2, v8}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    .line 180
    invoke-virtual {v0, v7}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mTouchCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v7

    const-string v8, "remote_capture_state_smile"

    invoke-virtual {v0, v8, v3, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mSmileCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mSmileSwitchButton:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 190
    invoke-virtual {v7}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v8

    const-string v9, "key_smile_detection"

    invoke-virtual {v7, v9, v2, v8}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    .line 189
    invoke-virtual {v0, v7}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mSmileCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 195
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v7

    const-string v8, "remote_capture_state_voice"

    invoke-virtual {v0, v8, v3, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mVoiceCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v7

    const-string v8, "key_voice_detection"

    invoke-virtual {v0, v8, v2, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    iget-object v7, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mVoiceSwitchButton:Landroid/widget/Switch;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 200
    iget-boolean v7, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mNeedDumpVoice:Z

    if-eqz v7, :cond_4

    .line 201
    iget-object v7, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v7}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v8

    const-string v9, "key_dump_voice"

    invoke-virtual {v7, v9, v2, v8}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 202
    iget-object v8, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDumpVoiceLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_2

    :cond_2
    move v0, v6

    :goto_2
    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDumpVoiceButton:Landroid/widget/Switch;

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_3

    .line 206
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mVoiceCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 207
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mNeedDumpVoice:Z

    if-eqz v0, :cond_4

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDumpVoiceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 212
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v7

    const-string v8, "remote_capture_state_gesture"

    invoke-virtual {v0, v8, v3, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mGestureGuideLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mGestureCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mGestureSwitchButton:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 217
    invoke-virtual {v7}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v8

    const-string v9, "key_gesture_detection"

    invoke-virtual {v7, v9, v2, v8}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    .line 216
    invoke-virtual {v0, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_4

    .line 220
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mGestureGuideLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mGestureCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 224
    :goto_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v7

    const-string v8, "remote_capture_state_fingerprint"

    invoke-virtual {v0, v8, v3, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mFingerCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mFingerSwitchButton:Landroid/widget/Switch;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 228
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v3, "key_fingerprint_capture"

    invoke-virtual {p0, v3, v2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    .line 227
    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_5

    .line 230
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mFingerCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_5
    return-void
.end method


# virtual methods
.method protected addAllPreferences()V
    .locals 0

    return-void
.end method

.method protected getPreferenceResource()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getToolbar(Landroid/view/View;)Landroid/widget/Toolbar;
    .locals 0

    const p0, 0x7f0903b9

    .line 271
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Toolbar;

    if-eqz p0, :cond_0

    .line 273
    invoke-virtual {p0}, Landroid/widget/Toolbar;->hideOverflowMenu()Z

    :cond_0
    return-object p0
.end method

.method protected initViews(Landroid/view/View;)V
    .locals 0

    .line 256
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->initViews(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 74
    new-instance p3, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 76
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0500cb

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 77
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDumpVoiceSupport()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mNeedDumpVoice:Z

    const p0, 0x7f0c0188

    .line 78
    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 248
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onDestroy()V

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object p0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 240
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object p0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 173
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 167
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 168
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->setViewUI()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 83
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0904cb

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mTouchSwitchButton:Landroid/widget/Switch;

    const p2, 0x7f0904c8

    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mTouchCaptureLayout:Landroid/widget/RelativeLayout;

    .line 87
    new-instance v0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/RemoteCaptureFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09043e

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mSmileSwitchButton:Landroid/widget/Switch;

    const p2, 0x7f09043c

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mSmileCaptureLayout:Landroid/widget/RelativeLayout;

    .line 98
    new-instance v0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/RemoteCaptureFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09050c

    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mVoiceSwitchButton:Landroid/widget/Switch;

    const p2, 0x7f09050a

    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mVoiceCaptureLayout:Landroid/widget/RelativeLayout;

    .line 109
    new-instance v0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/RemoteCaptureFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mNeedDumpVoice:Z

    if-eqz p2, :cond_0

    const p2, 0x7f090156

    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDumpVoiceButton:Landroid/widget/Switch;

    const p2, 0x7f090155

    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDumpVoiceLayout:Landroid/widget/RelativeLayout;

    .line 126
    new-instance v0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/RemoteCaptureFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const p2, 0x7f0900cf

    .line 137
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mGestureGuideLayout:Landroid/widget/FrameLayout;

    const p2, 0x7f0900ce

    .line 138
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "images"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 140
    iget-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "capture_type_pref_guide_gesture_anim_only_paper.json"

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 141
    iget-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7fffffff

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 142
    iget-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    const p2, 0x7f0901e7

    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mGestureSwitchButton:Landroid/widget/Switch;

    const p2, 0x7f0901e5

    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mGestureCaptureLayout:Landroid/widget/RelativeLayout;

    .line 145
    new-instance v0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/ui/RemoteCaptureFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0901a6

    .line 154
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mFingerSwitchButton:Landroid/widget/Switch;

    const p2, 0x7f0901a3

    .line 155
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mFingerCaptureLayout:Landroid/widget/RelativeLayout;

    .line 156
    new-instance p2, Lcom/transsion/camera/app/ui/RemoteCaptureFragment$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/ui/RemoteCaptureFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected removeAllPreferences()V
    .locals 0

    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V
    .locals 0

    .line 309
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    return-void
.end method

.method protected unInitViews()V
    .locals 0

    return-void
.end method

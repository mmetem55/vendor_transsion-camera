.class public Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "EyeDetection.java"


# static fields
.field private static final MSG_HIDE_EYE:I = 0x66

.field private static final MSG_SHOW_EYE:I = 0x65

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultAutoFocusType:I

.field private mEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;

.field private mEyeDetectionParameterConfig:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;

.field private mIsModeSupport:Z

.field private mModeKey:Ljava/lang/String;

.field mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->mIsModeSupport:Z

    .line 46
    new-instance v0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$1;-><init>(Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->mEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;

    .line 178
    new-instance v0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$2;-><init>(Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;)Z
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->isSettingSupport()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;)Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->mEyeDetectionParameterConfig:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;)Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->mEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;

    return-object p0
.end method

.method private isSettingSupport()Z
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->mModeKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->isVideoEffectOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->mModeKey:Ljava/lang/String;

    .line 220
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->isVideoMaskOn(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isVideoEffectOn(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    .line 224
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string p1, "key_video_effect"

    .line 228
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 230
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "off"

    .line 231
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "effect_default"

    .line 232
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isVideoMaskOn(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    .line 236
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string p1, "key_video_frame"

    .line 240
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 242
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "off"

    .line 243
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "frame_default"

    .line 244
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private updateDataCallback()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "off"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    const/16 v2, 0x66

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    const/16 v2, 0x65

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 153
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->mEyeDetectionParameterConfig:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;

    if-eqz v0, :cond_3

    .line 154
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->mEyeDetectionParameterConfig:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->mEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;->setEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;)V

    goto :goto_1

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->mEyeDetectionParameterConfig:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;->setEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;)V

    .line 159
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->mEyeDetectionParameterConfig:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;->sendSettingChangeRequest()V

    :cond_3
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

.method protected getDefaultAutoFocusType()I
    .locals 0

    .line 211
    iget p0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->mDefaultAutoFocusType:I

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_eye_detection"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->mEyeDetectionParameterConfig:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;-><init>(Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->mEyeDetectionParameterConfig:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;

    .line 103
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->mEyeDetectionParameterConfig:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 90
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

    .line 165
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    const-string p2, "auto_focus_default_type"

    .line 64
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->mDefaultAutoFocusType:I

    .line 65
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->mContext:Landroid/content/Context;

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

    .line 75
    sget-object v0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initializeValue], platformSupportedValues:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "default value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 80
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 81
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, p2, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 84
    :cond_0
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 85
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[initializeValue], mDataStore:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isModeSupport()Z
    .locals 0

    .line 170
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->mIsModeSupport:Z

    return p0
.end method

.method protected isPhotoType()Z
    .locals 1

    .line 215
    sget-object v0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 120
    :try_start_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->mIsModeSupport:Z

    .line 121
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->mIsModeSupport:Z

    .line 114
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    .line 115
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->mModeKey:Ljava/lang/String;

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 126
    sget-object v0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChanged value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 129
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->updateDataCallback()V

    :cond_1
    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
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

    .line 137
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 138
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->updateDataCallback()V

    .line 139
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 140
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    .line 108
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 70
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    return-void
.end method

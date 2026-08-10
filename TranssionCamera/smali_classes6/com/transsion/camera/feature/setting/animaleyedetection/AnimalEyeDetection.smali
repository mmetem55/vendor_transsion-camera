.class public Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "AnimalEyeDetection.java"


# static fields
.field private static final MSG_HIDE_EYE:I = 0x66

.field private static final MSG_SHOW_EYE:I = 0x65

.field private static final MSG_UPDATE_EYE:I = 0x64

.field private static final SETTING_KEY:Ljava/lang/String; = "key_animal_eye_detection"

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAnimalEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;

.field private mAnimalEyeDetectionParamConfig:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;

.field private mIsModeSupport:Z

.field private mModeKey:Ljava/lang/String;

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AnimalEyeDetect"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->mIsModeSupport:Z

    .line 35
    new-instance v0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection$1;-><init>(Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->mAnimalEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;

    .line 156
    new-instance v0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection$2;-><init>(Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;[I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->updateEyeCoordinate([I)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;)Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->mAnimalEyeDetectionParamConfig:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;)Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->mAnimalEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;

    return-object p0
.end method

.method private isSettingSupport()Z
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->mModeKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->isVideoEffectOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->mModeKey:Ljava/lang/String;

    .line 185
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->isVideoMaskOn(Ljava/lang/String;)Z

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

    .line 189
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string p1, "key_video_effect"

    .line 193
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 195
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "off"

    .line 196
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "effect_default"

    .line 197
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

    .line 201
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string p1, "key_video_frame"

    .line 205
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 207
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "off"

    .line 208
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "frame_default"

    .line 209
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private updateDataCallback()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    const/16 v0, 0x66

    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    const/16 v0, 0x65

    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateEyeCoordinate([I)V
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->isSettingSupport()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x64

    .line 48
    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_0
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

    const-string p0, "key_animal_eye_detection"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->mAnimalEyeDetectionParamConfig:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;-><init>(Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->mAnimalEyeDetectionParamConfig:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;

    .line 93
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->mAnimalEyeDetectionParamConfig:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 80
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

    .line 144
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

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

    .line 65
    sget-object v0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initializeValue], supportList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", default value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 69
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 71
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, p2, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 74
    :cond_0
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 75
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

    .line 148
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->mIsModeSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 110
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 111
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->mIsModeSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->mIsModeSupport:Z

    .line 104
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->mModeKey:Ljava/lang/String;

    .line 105
    sget-object p1, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onModeOpened mIsModeSupport = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->mIsModeSupport:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 116
    sget-object v0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChanged value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 118
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 120
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->updateDataCallback()V

    :cond_0
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

    .line 126
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 127
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->updateDataCallback()V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 98
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

    .line 60
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    return-void
.end method

.class public Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "AntiVideo.java"


# static fields
.field public static DEFAULT_VALUE:Ljava/lang/String; = null

.field private static final SETTING_KEY:Ljava/lang/String; = "key_anti_video"

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field static final VALUE_OFF:Ljava/lang/String; = "off"

.field static final VALUE_ON:Ljava/lang/String; = "on"


# instance fields
.field private mAntiVideoDefaultOn:Z

.field private mAntiVideoParameterConfigure:Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;

.field private mContext:Landroid/content/Context;

.field private mIsAntiVideoSupport:Z

.field private mIsItelVideoFaceBeauty:Z

.field private mIsModeSupport:Z

.field private mModeKey:Ljava/lang/String;

.field private mNeedForceOpen:Z

.field private mSupportAntvideoQuality:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "off"

    .line 58
    sput-object v0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->DEFAULT_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsModeSupport:Z

    .line 62
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsAntiVideoSupport:Z

    .line 64
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mNeedForceOpen:Z

    .line 65
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mAntiVideoDefaultOn:Z

    .line 67
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsItelVideoFaceBeauty:Z

    return-void
.end method

.method private needPostBeautyRestriction()Z
    .locals 1

    .line 305
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsItelVideoFaceBeauty:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mModeKey:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private storeValue(Ljava/lang/String;)V
    .locals 3

    .line 248
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

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

.method public getCameraId()Ljava/lang/String;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_anti_video"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mAntiVideoParameterConfigure:Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mAntiVideoParameterConfigure:Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;

    .line 120
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mAntiVideoParameterConfigure:Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 106
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

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

    .line 168
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 72
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 73
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "antivideo_default_on"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mAntiVideoDefaultOn:Z

    if-eqz p2, :cond_0

    const-string p2, "on"

    .line 76
    sput-object p2, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->DEFAULT_VALUE:Ljava/lang/String;

    :cond_0
    const-string p2, "video_quality_support_anti_video"

    .line 78
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mSupportAntvideoQuality:[Ljava/lang/String;

    const-string p2, "itel_face_beauty_type"

    .line 79
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsItelVideoFaceBeauty:Z

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
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

    .line 84
    sget-object v0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initializeValue], platformSupportedValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " default value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v1, "on"

    .line 86
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 87
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsAntiVideoSupport:Z

    .line 90
    :cond_0
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsAntiVideoSupport:Z

    if-eqz v1, :cond_1

    .line 91
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->getCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "is_widecam_force_open_anti_video"

    invoke-static {v1, v4, v3}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mNeedForceOpen:Z

    .line 94
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 97
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, p2, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 101
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[initializeValue], mDataStore: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isModeSupport()Z
    .locals 0

    .line 244
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsModeSupport:Z

    return p0
.end method

.method public isQualifiedToRecoverQuality()Z
    .locals 1

    .line 296
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object p0

    const-string v0, "key_video_quality"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/SettingBase;

    if-eqz p0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDefaultValue()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    .line 299
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->compareQuality(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 235
    :try_start_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mNeedForceOpen:Z

    .line 236
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const-string p1, "key_anti_video"

    const/4 v1, 0x0

    .line 237
    invoke-virtual {p0, p1, v1, v1}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 238
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsModeSupport:Z

    .line 239
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mModeKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 228
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsModeSupport:Z

    .line 230
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mModeKey:Ljava/lang/String;

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 6

    .line 130
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 131
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->getCameraId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoRestriction;->getAntiRestriction(Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 134
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->needPostBeautyRestriction()Z

    move-result v1

    const-string v2, "on"

    if-eqz v1, :cond_0

    .line 135
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const-string v3, "key_face_beauty"

    const-string v4, "0"

    .line 136
    invoke-virtual {v0, v3, v4, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_video_quality"

    invoke-interface {v1, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mSupportAntvideoQuality:[Ljava/lang/String;

    const-string v5, "null"

    if-eqz v4, :cond_2

    .line 141
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mSupportAntvideoQuality:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x6

    .line 143
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v5}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "value_change_on"

    .line 145
    invoke-virtual {v0, v3, v1, v5}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const-string v1, "off"

    .line 149
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "value_change_off"

    .line 150
    invoke-virtual {v0, v3, v1, v5}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 154
    sget-object v0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onAntiVideoValueChanged] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mAntiVideoParameterConfigure:Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;

    if-eqz p0, :cond_4

    .line 157
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->sendSettingChangeRequest()V

    :cond_4
    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 8
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

    .line 256
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 257
    sget-object v1, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[overrideValues] headerKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,currentValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", lastValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", supportValues: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v2, "off"

    .line 259
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "key_video_quality"

    if-nez v3, :cond_0

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    new-instance v5, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v6, "key_anti_video"

    invoke-direct {v5, v6, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "override_values_off"

    const-string v7, "null"

    .line 261
    invoke-virtual {v5, v4, v6, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v5

    .line 260
    invoke-interface {v3, v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_0
    const-string v3, "key_video_portrait"

    .line 263
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "key_video_facebeauty"

    .line 264
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 265
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "key_360_video_hdr"

    .line 266
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "key_dol_video_hdr"

    .line 267
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "key_transsion_filter"

    .line 268
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "key_video_filter"

    .line 269
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "key_video_effect"

    .line 270
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "key_video_frame"

    .line 271
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "key_video_enhance"

    .line 272
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "key_video_enhance_yuv"

    .line 273
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "key_video_makeup"

    .line 274
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "key_face_beauty"

    .line 275
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 283
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p2, :cond_4

    .line 276
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 277
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 280
    :cond_3
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->storeValue(Ljava/lang/String;)V

    .line 286
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mNeedForceOpen:Z

    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    const-string p1, "reset anti video to ON."

    .line 289
    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p1, "on"

    .line 290
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 11

    .line 173
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mIsAntiVideoSupport:Z

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "antiVideo postRestrictionAfterInitialized getCameraId(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mNeedForceOpen:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "on"

    if-eqz v1, :cond_3

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "key_video_portrait"

    .line 182
    invoke-virtual {p0, v5}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "key_video_facebeauty"

    .line 183
    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "key_video_makeup"

    .line 184
    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "key_transsion_filter"

    .line 185
    invoke-virtual {p0, v8}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 186
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "antiVideo postRestrictionAfterInitialized current: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", video portrait: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", video beauty: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", video makeup: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", video filter: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 189
    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v5, "off"

    if-nez v0, :cond_2

    const-string v0, "video_facebeauty_on"

    .line 190
    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 191
    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 192
    invoke-static {v8, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 197
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v4

    goto :goto_1

    .line 194
    :cond_2
    :goto_0
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5, v2}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoRestriction;->getAntiRestriction(Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    goto :goto_2

    .line 201
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoRestriction;->getAntiRestriction(Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    move-object v1, v3

    move-object v5, v1

    .line 204
    :goto_2
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->needPostBeautyRestriction()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 205
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "key_face_beauty"

    const-string v6, "0"

    .line 206
    invoke-virtual {v0, v2, v6, v3}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v2, "key_anti_video"

    .line 210
    invoke-virtual {p0, v2, v5, v1}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    if-eqz v0, :cond_6

    .line 213
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->mSupportAntvideoQuality:[Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 214
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "key_video_quality"

    const-string v2, "value_change_on"

    const-string v3, "null"

    .line 215
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 221
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->isQualifiedToRecoverQuality()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_7

    const-string v1, "key_quality_recover_default"

    .line 222
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V
    .locals 0

    .line 125
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    return-void
.end method

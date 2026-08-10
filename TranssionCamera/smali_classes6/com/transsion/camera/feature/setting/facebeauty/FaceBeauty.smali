.class public Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "FaceBeauty.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFaceBeautyParameterConfigure:Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;

.field private mFaceBeautySupportVideoQuality:[Ljava/lang/String;

.field private mIsItelFaceBeautyDefaultOff:Z

.field private mIsModeSupport:Z

.field private mItelFaceBeautyStyle:I

.field private mModeKey:Ljava/lang/String;

.field private mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->mIsModeSupport:Z

    .line 35
    iput v0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->mItelFaceBeautyStyle:I

    .line 36
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->mIsItelFaceBeautyDefaultOff:Z

    return-void
.end method

.method private needVideoBeautyRestriction()Z
    .locals 2

    .line 106
    iget v0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->mItelFaceBeautyStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->mModeKey:Ljava/lang/String;

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

.method private postVideoBeautyRestriction(Ljava/lang/String;)V
    .locals 7

    const-string v0, "0"

    .line 111
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 112
    sget-object v1, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[postBeautyRestriction], value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , isValueOff:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyRestriction;->getBeautyRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    if-eqz v0, :cond_0

    const-string v2, "off"

    goto :goto_0

    :cond_0
    const-string v2, "on"

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    const-string v2, "key_video_quality"

    .line 115
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onValueChanged videoQualityStr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , mFaceBeautySupportVideoQuality"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->mFaceBeautySupportVideoQuality:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v1, "null"

    if-nez v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->mFaceBeautySupportVideoQuality:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "_"

    .line 119
    invoke-static {v4, v0}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 120
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->qualityValid(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x5

    if-le v0, v4, :cond_3

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->mFaceBeautySupportVideoQuality:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p1, v2, v0, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "value_change_on"

    .line 124
    invoke-virtual {p1, v2, v0, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "value_change_off"

    .line 127
    invoke-virtual {p1, v2, v0, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_4
    return-void
.end method

.method private qualityValid(I)Z
    .locals 0

    if-ltz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private storeValue(Ljava/lang/String;)V
    .locals 3

    .line 157
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->getStoreScope()Ljava/lang/String;

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

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_face_beauty"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->mFaceBeautyParameterConfigure:Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->mFaceBeautyParameterConfigure:Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->mFaceBeautyParameterConfigure:Lcom/transsion/camera/feature/setting/facebeauty/FaceBeautyParameterConfigure;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object v0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 68
    iget p0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->mItelFaceBeautyStyle:I

    if-eqz p0, :cond_0

    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    :goto_0
    return-object p0
.end method

.method public getStoreScope()Ljava/lang/String;
    .locals 3

    .line 165
    iget v0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->mItelFaceBeautyStyle:I

    const-string v1, "_"

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->mModeKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->mModeKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    .line 174
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 41
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    const-string p2, "itel_face_beauty_type"

    .line 42
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->mItelFaceBeautyStyle:I

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "is_itel_face_beauty_default_off"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->mIsItelFaceBeautyDefaultOff:Z

    const-string p2, "facebeauty_support_video_quality"

    .line 44
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->mFaceBeautySupportVideoQuality:[Ljava/lang/String;

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

    if-eqz p1, :cond_2

    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 55
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->mIsItelFaceBeautyDefaultOff:Z

    if-eqz v0, :cond_1

    const-string p2, "0"

    .line 58
    :cond_1
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 62
    sget-object p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initValueAndSupport], defaultValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " , value:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " , supportList:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public isModeSupport()Z
    .locals 0

    .line 193
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->mIsModeSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 186
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const-string p1, ""

    .line 187
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->mModeKey:Ljava/lang/String;

    const/4 p1, 0x0

    .line 188
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->mIsModeSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 179
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 180
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->mModeKey:Ljava/lang/String;

    .line 181
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->mIsModeSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 88
    sget-object v0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->needVideoBeautyRestriction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->postVideoBeautyRestriction(Ljava/lang/String;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_1
    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
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

    .line 141
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 142
    sget-object v1, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    const-string v1, "key_anti_video"

    .line 143
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "key_video_quality"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 144
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "0"

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 148
    :cond_2
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->storeValue(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 1

    .line 102
    sget-object p0, Lcom/transsion/camera/feature/setting/facebeauty/FaceBeauty;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[postRestrictionAfterInitialized]"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

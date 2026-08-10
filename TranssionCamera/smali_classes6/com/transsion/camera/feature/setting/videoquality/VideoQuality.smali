.class public Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "VideoQuality.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;,
        Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;,
        Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static mItelFaceBeautyStyle:I


# instance fields
.field private mCreateVideoSurfaceInPhotoMode:Z

.field private mEnhanceSupportVideoQuality:[Ljava/lang/String;

.field private mFaceBeautySupportVideoQuality:[Ljava/lang/String;

.field private mIsOnValueChanging:Z

.field private mIsValueChangedManually:Z

.field private mIsValueInitiated:Z

.field private mMaxSupportVPSize:Ljava/lang/String;

.field private mPortraitSupportVideoQuality:[Ljava/lang/String;

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mStatusChangeListener:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;

.field private mSupportAntvideoQuality:[Ljava/lang/String;

.field private mVideoFilterSupportVideoQuality:[Ljava/lang/String;

.field private mVideoQualityMonitor:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 67
    sput v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mItelFaceBeautyStyle:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mIsOnValueChanging:Z

    .line 65
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mIsValueInitiated:Z

    .line 66
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mIsValueChangedManually:Z

    .line 74
    new-instance v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;-><init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$1;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoQualityMonitor:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    .line 75
    new-instance v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$1;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;

    .line 77
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mCreateVideoSurfaceInPhotoMode:Z

    .line 79
    new-instance v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$1;-><init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mIsValueInitiated:Z

    return p0
.end method

.method static synthetic access$1100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 60
    sget-object v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->storeValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mIsValueChangedManually:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mIsValueChangedManually:Z

    return p1
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoQualityMonitor:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mIsOnValueChanging:Z

    return p0
.end method

.method public static getItelFaceBeautyStyle()I
    .locals 1

    .line 94
    sget v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mItelFaceBeautyStyle:I

    return v0
.end method

.method private isValidValue(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "override_values_off"

    .line 421
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "value_change_on"

    .line 422
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "value_change_off"

    .line 423
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isVideoCameraSupportCurrentQuality(Ljava/lang/String;)Z
    .locals 3

    const-string p0, "6_60"

    .line 294
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 297
    :cond_0
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getVideoCameraId()Ljava/lang/String;

    move-result-object p0

    .line 298
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    .line 299
    invoke-interface {v1, p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedVideoSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v2, "_"

    .line 300
    invoke-static {p1, v2}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 302
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    .line 303
    new-instance p1, Landroid/util/Size;

    iget v2, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget p0, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {p1, v2, p0}, Landroid/util/Size;-><init>(II)V

    .line 304
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v0
.end method

.method private mergeAntiVideoRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSupportAntvideoQuality:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key_video_enhance"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, "key_anti_video"

    .line 223
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private mergeFaceBeautyRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mFaceBeautySupportVideoQuality:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string p0, "key_video_facebeauty"

    .line 231
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private mergePortraitRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mPortraitSupportVideoQuality:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 238
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string p0, "key_video_portrait"

    .line 240
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private mergeVideoEnhanceRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mEnhanceSupportVideoQuality:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 247
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "key_video_enhance"

    .line 249
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "key_video_super_night"

    .line 251
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private mergeVideoEnhanceYUVRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mEnhanceSupportVideoQuality:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 258
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "key_video_enhance_yuv"

    .line 260
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "key_video_super_night_yuv"

    .line 262
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private mergeVideoFilterRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoFilterSupportVideoQuality:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string p0, "key_transsion_filter"

    .line 270
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    const-string p0, "key_video_filter"

    .line 271
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private storeValue(Ljava/lang/String;)V
    .locals 3

    .line 341
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private switchVideoCamera(Ljava/lang/String;)Z
    .locals 6

    .line 277
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getVideoCameraId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 279
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_brightbess_value"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->isVideoCameraSupportCurrentQuality(Ljava/lang/String;)Z

    move-result p1

    .line 281
    iget-object v3, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    const-string v4, "key_video_camera_change"

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const-string v0, "value_light"

    .line 282
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "off"

    invoke-virtual {p0, v4, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return v3

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    const-string v5, "0"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    const-string p1, "value_dark"

    .line 286
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 287
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "on"

    invoke-virtual {p0, v4, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return v3

    :cond_3
    return v1
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
    .locals 2

    .line 179
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getVideoCameraId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 180
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "0"

    return-object p0

    .line 183
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_video_quality"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;-><init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    .line 173
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    .line 175
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mCreateVideoSurfaceInPhotoMode:Z

    if-eqz p0, :cond_0

    .line 157
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0

    .line 159
    :cond_0
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

    .line 315
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 100
    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isVideoPortraitMaxSizeSupport(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mMaxSupportVPSize:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, "0"

    .line 101
    :cond_0
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mMaxSupportVPSize:Ljava/lang/String;

    const-string p2, "video_quality_support_anti_video"

    .line 102
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSupportAntvideoQuality:[Ljava/lang/String;

    const-string p2, "facebeauty_support_video_quality"

    .line 103
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mFaceBeautySupportVideoQuality:[Ljava/lang/String;

    const-string p2, "portrait_support_video_quality"

    .line 104
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mPortraitSupportVideoQuality:[Ljava/lang/String;

    const-string p2, "enhance_support_video_quality"

    .line 105
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mEnhanceSupportVideoQuality:[Ljava/lang/String;

    const-string p2, "video_filter_support_video_quality"

    .line 106
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoFilterSupportVideoQuality:[Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "create_video_surface_in_photo_mode"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mCreateVideoSurfaceInPhotoMode:Z

    const-string p2, "itel_face_beauty_type"

    .line 108
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mItelFaceBeautyStyle:I

    .line 109
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_1

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;

    const-string p2, "key_quality_recover_default"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_1
    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
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

    .line 139
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 140
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 142
    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->updateValue(Ljava/lang/String;Ljava/util/List;)V

    .line 143
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 123
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 124
    sget-object p1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onModeClosed"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast p1, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->resetStreamId()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onStoreScopeInit(Z)V
    .locals 2

    .line 337
    sget-object p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onStoreScopeInit :] isGlobal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 193
    sget-object v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mMaxSupportVPSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mMaxSupportVPSize:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mIsOnValueChanging:Z

    .line 196
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/CameraUtil;->compareQuality(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mIsValueChangedManually:Z

    .line 199
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mMaxSupportVPSize:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityRestriction;->getRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 201
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeAntiVideoRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 202
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeFaceBeautyRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 203
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergePortraitRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 204
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeVideoEnhanceRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 205
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeVideoEnhanceYUVRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 206
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeVideoFilterRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 207
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoQualityMonitor:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->addVideoKey(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoQualityMonitor:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->print()V

    .line 209
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    .line 212
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->switchVideoCamera(Ljava/lang/String;)Z

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1

    const-string v1, "key_video_quality_state"

    .line 215
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    :cond_1
    iput-boolean v3, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mIsOnValueChanging:Z

    :cond_2
    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
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

    .line 349
    sget-object v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideValues] headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",supportValues = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 351
    new-instance v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;-><init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)V

    .line 352
    iput-object p1, v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->headerKey:Ljava/lang/String;

    .line 353
    iput-object p2, v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->currentValue:Ljava/lang/String;

    .line 354
    iput-object p3, v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->supportValues:Ljava/util/List;

    const-string v2, "mode"

    .line 356
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->headerKey:Ljava/lang/String;

    const-string v3, "key_time_lapse"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoQualityMonitor:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    iget-object v3, v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->headerKey:Ljava/lang/String;

    .line 357
    invoke-static {v2, v3}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->access$500(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 358
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoQualityMonitor:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->add(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;)V

    .line 359
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->isValidValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoQualityMonitor:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    invoke-virtual {v1, p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->addVideoKey(Ljava/lang/String;)V

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoQualityMonitor:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->print()V

    :cond_1
    if-eqz p2, :cond_7

    .line 364
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->isValidValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "key_video_portrait"

    .line 365
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "key_anti_video"

    .line 366
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "key_360_video_hdr"

    .line 367
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "key_dol_video_hdr"

    .line 368
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "key_transsion_filter"

    .line 369
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "key_video_filter"

    .line 370
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "key_video_effect"

    .line 371
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "key_video_frame"

    .line 372
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "key_video_enhance"

    .line 373
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "key_video_enhance_yuv"

    .line 374
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "key_video_super_night"

    .line 375
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "key_video_super_night_yuv"

    .line 376
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "key_video_makeup"

    .line 377
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    .line 378
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "key_video_facebeauty"

    .line 381
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mItelFaceBeautyStyle:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const-string v1, "key_face_beauty"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    .line 385
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p3, :cond_4

    .line 386
    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 387
    iget-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;

    .line 389
    :cond_4
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->storeValue(Ljava/lang/String;)V

    goto :goto_2

    .line 382
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "video_facebeauty_video_quality"

    invoke-virtual {v1, v4, p2, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 383
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->storeValue(Ljava/lang/String;)V

    .line 384
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->switchVideoCamera(Ljava/lang/String;)Z

    goto :goto_2

    .line 379
    :cond_6
    :goto_1
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->storeValue(Ljava/lang/String;)V

    .line 380
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->switchVideoCamera(Ljava/lang/String;)Z

    .line 392
    :cond_7
    :goto_2
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->isValidValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 393
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_8
    if-eqz p2, :cond_9

    if-eqz v0, :cond_9

    .line 395
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->isValidValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 396
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->postRestrictionAfterInitialized()V

    :cond_9
    return-void
.end method

.method public pause()V
    .locals 2

    .line 116
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    .line 117
    sget-object v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->resetStreamId()V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 4

    .line 402
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mMaxSupportVPSize:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityRestriction;->getRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 403
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeFaceBeautyRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 404
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergePortraitRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 405
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeAntiVideoRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 406
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeVideoEnhanceRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 407
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeVideoEnhanceYUVRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 408
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mergeVideoFilterRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    if-eqz v0, :cond_0

    .line 410
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_0
    return-void
.end method

.method public reConfigSupportList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 147
    sget-object v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[reConfigSupportList], supportedVideoQualitySize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 149
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 150
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .locals 0

    .line 416
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    .line 417
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoQualityMonitor:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->access$600(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 130
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$StatusChangeListener;

    const-string v1, "key_quality_recover_default"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 134
    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "unInit"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateValue(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "video_facebeauty_video_quality"

    invoke-virtual {v1, v3, p1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    sget v2, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mItelFaceBeautyStyle:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    const-string v2, "key_face_beauty"

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v4, "key_video_facebeauty"

    .line 322
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "video_facebeauty_on"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object p1, v1

    .line 325
    :cond_2
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 326
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 327
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoQualityMonitor:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->addVideoKey(Ljava/lang/String;)V

    goto :goto_1

    .line 329
    :cond_3
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 330
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->storeValue(Ljava/lang/String;)V

    .line 331
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mVideoQualityMonitor:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityMonitor;->addVideoKey(Ljava/lang/String;)V

    .line 333
    :goto_1
    iput-boolean v3, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->mIsValueInitiated:Z

    return-void
.end method

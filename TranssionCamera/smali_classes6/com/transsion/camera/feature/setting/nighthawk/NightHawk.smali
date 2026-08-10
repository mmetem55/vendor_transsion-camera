.class public Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "NightHawk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;
    }
.end annotation


# static fields
.field private static final CLOSE_INTERVAL_TIME:I = 0x1f4

.field private static final NIGHT_HAWK_OPEN_VALUE:I = 0x1

.field private static final SETTING_KEY:Ljava/lang/String; = "key_night_hawk"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlagTime:J

.field private mIgnoreFrame:I

.field private mIsModeFeatureSupport:Z

.field private mIsSettingSupport:Z

.field private mIsVideoType:Z

.field private mModeKey:Ljava/lang/String;

.field private mParameterConfigure:Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mStatusChangeListener:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 49
    new-instance v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;

    .line 351
    new-instance v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;-><init>(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 36
    sget-object v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsModeFeatureSupport:Z

    return p0
.end method

.method static synthetic access$302(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsSettingSupport:Z

    return p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)Z
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isSettingSupport()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mParameterConfigure:Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    return-object p0
.end method

.method static synthetic access$602(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIgnoreFrame:I

    return p1
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)Lcom/transsion/camera/app/common/storage/DataStore;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method private is360VideoHDROn(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    .line 159
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 160
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    .line 161
    :goto_1
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontMainCamera(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontWideCamera(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v0

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v1

    :goto_3
    const-string v3, "key_360_video_hdr"

    const-string v4, "on"

    if-eqz p1, :cond_5

    .line 163
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "video_mode_support_back_360hdr"

    invoke-static {p1, v5, v2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 164
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v0, v1

    :cond_4
    return v0

    :cond_5
    if-eqz v2, :cond_6

    .line 166
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "video_mode_support_front_360hdr"

    invoke-static {p1, v5, v2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 167
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    move v0, v1

    :cond_6
    return v0
.end method

.method private isAntiVideoOn(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    .line 231
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string p1, "key_anti_video"

    .line 234
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 235
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "off"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private isSettingSupport()Z
    .locals 4

    const-string v0, "key_anti_video"

    .line 144
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_video_quality"

    .line 145
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "8_60"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "11"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "6_60"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_video_enhance_yuv"

    .line 149
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mModeKey:Ljava/lang/String;

    .line 150
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->is360VideoHDROn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mModeKey:Ljava/lang/String;

    .line 151
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isTranssionFilterOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mModeKey:Ljava/lang/String;

    .line 152
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isVideoFilterOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mModeKey:Ljava/lang/String;

    .line 153
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isVideoEffectOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mModeKey:Ljava/lang/String;

    .line 154
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isVideoFrameOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mModeKey:Ljava/lang/String;

    .line 155
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isVideoMakeUpOff(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTranssionFilterOn(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    .line 174
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string p1, "key_transsion_filter"

    .line 178
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 180
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "off"

    .line 181
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "default"

    .line 182
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isVideoEffectOn(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    .line 198
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string p1, "key_video_effect"

    .line 202
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 204
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "off"

    .line 205
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "effect_default"

    .line 206
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isVideoFilterOn(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    .line 186
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string p1, "key_video_filter"

    .line 190
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 192
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "off"

    .line 193
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "filter_default"

    .line 194
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isVideoFrameOn(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    .line 210
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string p1, "key_video_frame"

    .line 214
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 216
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "off"

    .line 217
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "frame_default"

    .line 218
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isVideoMakeUpOff(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    .line 222
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string p1, "key_video_makeup"

    .line 225
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 226
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "off"

    .line 227
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

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

    const-string p0, "key_night_hawk"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mParameterConfigure:Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mParameterConfigure:Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    .line 320
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mParameterConfigure:Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 307
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

    .line 339
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 55
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mContext:Landroid/content/Context;

    .line 57
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    const-string p1, "key_video_quality"

    .line 58
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->registerKeyToMonitor(Ljava/lang/String;)V

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

    .line 122
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 125
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method protected isSupport()Z
    .locals 2

    .line 343
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsVideoType:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsModeFeatureSupport:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsSettingSupport:Z

    if-nez v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsModeFeatureSupport:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 297
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 298
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsModeFeatureSupport:Z

    .line 299
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsSettingSupport:Z

    const-string p1, "off"

    .line 300
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->onValueChanged(Ljava/lang/String;)V

    const-string p1, "key_anti_video"

    .line 301
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->removeOverride(Ljava/lang/String;)V

    const-string p1, "key_360_video_hdr"

    .line 302
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->removeOverride(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 133
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 134
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mModeKey:Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsModeFeatureSupport:Z

    .line 136
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isSettingSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsSettingSupport:Z

    .line 137
    sget-object p1, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsVideoType:Z

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mParameterConfigure:Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    if-eqz p0, :cond_1

    .line 139
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->setIsVideoType(Z)V

    :cond_1
    return-void
.end method

.method onNighthawkChanged(I)V
    .locals 5

    .line 104
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIgnoreFrame:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIgnoreFrame:I

    const/16 v2, 0xa

    if-le v0, v2, :cond_2

    const-string v0, "off"

    if-ne p1, v1, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "on"

    .line 108
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->onValueChanged(Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mFlagTime:J

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mFlagTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long p1, v1, v3

    if-lez p1, :cond_2

    .line 114
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->onValueChanged(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 325
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    sget-object v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 329
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsVideoType:Z

    if-eqz v2, :cond_0

    .line 330
    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, p1, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 333
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
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

    .line 243
    sget-object v0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "overrideValues headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " supportValues = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "key_transsion_filter"

    .line 245
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "off"

    const/4 v3, 0x0

    if-nez v0, :cond_9

    const-string v0, "key_video_enhance_yuv"

    .line 246
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "key_video_filter"

    .line 247
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "key_video_makeup"

    .line 248
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "key_anti_video"

    .line 259
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v4, "key_360_video_hdr"

    const-string v5, "key_video_portrait"

    if-nez v0, :cond_2

    const-string v0, "key_video_effect"

    .line 260
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "key_video_frame"

    .line 261
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 262
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "key_video_facebeauty"

    .line 263
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 264
    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 291
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2

    .line 265
    :cond_2
    :goto_0
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 266
    iput-boolean v3, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsSettingSupport:Z

    .line 267
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 269
    invoke-interface {p1, v2, v3}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    goto :goto_1

    .line 273
    :cond_3
    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mModeKey:Ljava/lang/String;

    .line 274
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isTranssionFilterOn(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mModeKey:Ljava/lang/String;

    .line 275
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isVideoFilterOn(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mModeKey:Ljava/lang/String;

    .line 276
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isVideoFrameOn(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_4
    return-void

    .line 280
    :cond_5
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mModeKey:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isAntiVideoOn(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 283
    :cond_6
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isSettingSupport()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 287
    :cond_7
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsSettingSupport:Z

    .line 289
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p3, p2, p0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_2
    return-void

    .line 249
    :cond_9
    :goto_3
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 250
    iput-boolean v3, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsSettingSupport:Z

    .line 251
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->onValueChanged(Ljava/lang/String;)V

    goto :goto_4

    .line 252
    :cond_a
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isSettingSupport()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 253
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mIsSettingSupport:Z

    :cond_b
    :goto_4
    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 64
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    const-string v0, "key_video_quality"

    .line 66
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

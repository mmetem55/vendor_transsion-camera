.class public Lcom/transsion/camera/feature/setting/bv/BrightnessValue;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "BrightnessValue.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;


# static fields
.field private static final CAMERA_BV_LEVEL:I = -0x1e

.field protected static final DEFAULT_VALUE:Ljava/lang/String; = "value_light"

.field private static final SETTING_KEY:Ljava/lang/String; = "key_brightbess_value"

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VIDEO_CAMERA_BV_LEVEL:I = -0xf


# instance fields
.field private mBrightnessValueParameterConfig:Lcom/transsion/camera/feature/setting/bv/BrightnessValueParameterConfig;

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mVideoCamera:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/bv/BrightnessValue;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/bv/BrightnessValue;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/bv/BrightnessValue;->mVideoCamera:Ljava/lang/String;

    .line 101
    new-instance v0, Lcom/transsion/camera/feature/setting/bv/BrightnessValue$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/bv/BrightnessValue$1;-><init>(Lcom/transsion/camera/feature/setting/bv/BrightnessValue;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/bv/BrightnessValue;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/bv/BrightnessValue;)Lcom/transsion/camera/feature/setting/bv/BrightnessValueParameterConfig;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/bv/BrightnessValue;->mBrightnessValueParameterConfig:Lcom/transsion/camera/feature/setting/bv/BrightnessValueParameterConfig;

    return-object p0
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

    const-string p0, "key_brightbess_value"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/bv/BrightnessValue;->mBrightnessValueParameterConfig:Lcom/transsion/camera/feature/setting/bv/BrightnessValueParameterConfig;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/transsion/camera/feature/setting/bv/BrightnessValueParameterConfig;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/bv/BrightnessValueParameterConfig;-><init>(Lcom/transsion/camera/feature/setting/bv/BrightnessValue;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/bv/BrightnessValue;->mBrightnessValueParameterConfig:Lcom/transsion/camera/feature/setting/bv/BrightnessValueParameterConfig;

    .line 68
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/bv/BrightnessValue;->mBrightnessValueParameterConfig:Lcom/transsion/camera/feature/setting/bv/BrightnessValueParameterConfig;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/bv/BrightnessValue;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 54
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

    .line 77
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 36
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getVideoCameraId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/bv/BrightnessValue;->mVideoCamera:Ljava/lang/String;

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

    .line 46
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 49
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    return-void
.end method

.method public onBrightnessChanged(I)V
    .locals 3

    .line 83
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/bv/BrightnessValue;->mVideoCamera:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0xf

    goto :goto_0

    :cond_0
    const/16 v0, -0x1e

    :goto_0
    if-le p1, v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "value_light"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 88
    sget-object p0, Lcom/transsion/camera/feature/setting/bv/BrightnessValue;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onBrightnessChanged current is light"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-gt p1, v0, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "value_dark"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 91
    sget-object p0, Lcom/transsion/camera/feature/setting/bv/BrightnessValue;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onBrightnessChanged current is dark"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 93
    :cond_2
    :goto_1
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setBvValue(I)V

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 41
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    return-void
.end method

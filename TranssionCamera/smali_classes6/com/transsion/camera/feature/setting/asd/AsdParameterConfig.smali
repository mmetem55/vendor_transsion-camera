.class public Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;
.super Ljava/lang/Object;
.source "AsdParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final ASD_INIT_VALUE:Ljava/lang/String; = ""

.field private static final ASD_TYPE_INIT_VALUE:I = -0x1

.field private static final OFF:I

.field private static final ON:I

.field private static final ON_LIGHT:I

.field private static final ON_LIGHT_STRING:Ljava/lang/String; = "2"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlgorithm:I

.field private mAlgorithmBackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAlgorithmFrontMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAlgorithmWideMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

.field private mAsdEnhanceValues:[I

.field private mAsdOpenState:Z

.field private mCameraAsdCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

.field private mCurrentInSensorZoomMode:I

.field private mCurrentValue:Ljava/lang/String;

.field private mDspSupport:Z

.field private mEffect:I

.field private mFakeCameraSupport:Z

.field private mFastSuperNightEnable:Z

.field private mIsSTBlueMode:Z

.field private mNightShotOpenState:Z

.field private mPreviewStopped:Z

.field private mSatSupport:Z

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mSoftMFNREnable:Z

.field private mStreamId:I

.field private mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

.field private mSuperResolutionEnable:Z

.field private mSuperResolutionOpend:Z

.field private mSupportTranssionHdr:Z

.field private mSupportedSuperResolution:Z

.field mSupportedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWarningType:I


# direct methods
.method public static synthetic $r8$lambda$nY8dzkMKF0dVtk0TBFbcV7CAv3o(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->lambda$new$0(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 81
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "0"

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    const-string v0, "1"

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->ON:I

    const-string v0, "2"

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->ON_LIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/asd/Asd;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .locals 3

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmBackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 93
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmFrontMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmWideMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, ""

    .line 97
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCurrentValue:Ljava/lang/String;

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsSTBlueMode:Z

    .line 99
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdOpenState:Z

    .line 100
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mNightShotOpenState:Z

    const/4 v1, -0x1

    .line 101
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithm:I

    .line 102
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mEffect:I

    const/4 v2, 0x7

    new-array v2, v2, [I

    .line 104
    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdEnhanceValues:[I

    .line 105
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportTranssionHdr:Z

    .line 107
    iput v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mWarningType:I

    .line 108
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mFakeCameraSupport:Z

    .line 109
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mDspSupport:Z

    .line 110
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSuperResolutionOpend:Z

    .line 112
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSuperResolutionEnable:Z

    .line 113
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mFastSuperNightEnable:Z

    .line 114
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSatSupport:Z

    .line 115
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mPreviewStopped:Z

    .line 116
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mStreamId:I

    .line 117
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSoftMFNREnable:Z

    .line 118
    iput v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCurrentInSensorZoomMode:I

    .line 159
    new-instance v1, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCameraAsdCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    .line 177
    new-instance v1, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$1;-><init>(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    .line 313
    new-instance v1, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig$2;-><init>(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    .line 194
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 195
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    .line 196
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 197
    new-instance p1, Lcom/transsion/camera/feature/setting/asd/AsdConfig;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmBackMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmFrontMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmWideMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, p2, p3, v1}, Lcom/transsion/camera/feature/setting/asd/AsdConfig;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 198
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->addAsdConfigIfNeed()V

    const-string p1, "persist.sys.oobe_country"

    const-string p2, "NG"

    .line 199
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 200
    sget-object p2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "countryCode = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 201
    sget-object p2, Lcom/transsion/camera/utils/SettingInfo;->AREA_A_DARK:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x5

    if-eqz p2, :cond_0

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdEnhanceValues:[I

    aput v0, p0, p3

    goto :goto_0

    .line 203
    :cond_0
    sget-object p2, Lcom/transsion/camera/utils/SettingInfo;->AREA_C_LIGHT:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 204
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdEnhanceValues:[I

    const/4 p1, 0x2

    aput p1, p0, p3

    goto :goto_0

    .line 206
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdEnhanceValues:[I

    const/4 p1, 0x1

    aput p1, p0, p3

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x64
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private AISuperDefinitionAlgoSupport()Z
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isAISuperDefinitionAlgoSupport()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->getDeviceZoomRatio()I

    move-result p0

    const/16 v0, 0x69

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)I
    .locals 0

    .line 79
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mStreamId:I

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;I)I
    .locals 0

    .line 79
    iput p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mStreamId:I

    return p1
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 79
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)Lcom/transsion/camera/feature/setting/asd/Asd;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;)I
    .locals 0

    .line 79
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mWarningType:I

    return p0
.end method

.method static synthetic access$302(Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;I)I
    .locals 0

    .line 79
    iput p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mWarningType:I

    return p1
.end method

.method private addAsdConfigIfNeed()V
    .locals 9

    .line 780
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asd_config_support_back"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 781
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "/"

    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    aget-object v6, v0, v3

    .line 782
    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 783
    array-length v6, v4

    if-le v6, v5, :cond_0

    .line 784
    iget-object v6, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmBackMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget-object v7, v4, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 787
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asd_config_support_front"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 788
    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v6, v0, v3

    .line 789
    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 790
    array-length v7, v6

    if-le v7, v5, :cond_2

    .line 791
    iget-object v7, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmFrontMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget-object v8, v6, v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aget-object v6, v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 794
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "asd_config_support_wide"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 795
    array-length v1, v0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_5

    aget-object v6, v0, v3

    .line 796
    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 797
    array-length v7, v6

    if-le v7, v5, :cond_4

    .line 798
    iget-object v7, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmWideMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget-object v8, v6, v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aget-object v6, v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private isAISuperResolutionScene()Z
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isAISuperResolutionSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->getDeviceZoomRatio()I

    move-result p0

    const/16 v0, 0x96

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInSensorZoomMode()Z
    .locals 1

    .line 584
    iget p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCurrentInSensorZoomMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWideCamera()Z
    .locals 2

    .line 596
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 597
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontWideCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$new$0(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 0

    .line 160
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkAsdResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p2

    if-eqz p2, :cond_0

    .line 162
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->onAsdDataCallback([I)V

    .line 164
    :cond_0
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p2

    .line 165
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->onBrightnessDataCallback([I)V

    .line 167
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkInSensorZoomMode(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_1

    .line 168
    array-length p2, p1

    if-lez p2, :cond_1

    const/4 p2, 0x0

    .line 169
    aget p1, p1, p2

    .line 170
    iget p2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCurrentInSensorZoomMode:I

    if-eq p2, p1, :cond_1

    .line 171
    iput p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCurrentInSensorZoomMode:I

    .line 172
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->sendSettingChangeRequest()V

    :cond_1
    return-void
.end method

.method private needShow()Z
    .locals 5

    .line 733
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    .line 735
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdOpenState:Z

    if-eqz v0, :cond_4

    .line 736
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 737
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "auto"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_1
    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_1

    :sswitch_2
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 752
    sget-object p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "asd value is abnormal."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_2

    .line 742
    :pswitch_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isVsdofMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterModeWithDualCam()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterModeWithSingleBlur()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isFrontCamera()Z

    move-result p0

    if-nez p0, :cond_5

    :cond_4
    :goto_2
    :pswitch_1
    move v1, v2

    .line 757
    :cond_5
    :pswitch_2
    sget-object p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needShow: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_2
        0x31 -> :sswitch_1
        0x2dddaf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private onBrightnessDataCallback([I)V
    .locals 4

    if-eqz p1, :cond_5

    .line 121
    array-length v0, p1

    if-lez v0, :cond_5

    .line 123
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedSuperResolution:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSuperResolutionOpend:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isAISuperResolutionSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    :cond_0
    aget v0, p1, v2

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/asd/Asd;->getLimitBV()I

    move-result v3

    if-le v0, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 125
    :goto_0
    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSuperResolutionEnable:Z

    if-eq v3, v0, :cond_2

    .line 126
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSuperResolutionEnable:Z

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 130
    :goto_1
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/asd/Asd;->getPlatformMfnrSupport()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/asd/Asd;->isBeautyMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 131
    aget p1, p1, v2

    const/16 v3, 0x14

    if-ge p1, v3, :cond_3

    move v2, v1

    .line 132
    :cond_3
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSoftMFNREnable:Z

    if-eq p1, v2, :cond_4

    .line 133
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSoftMFNREnable:Z

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    if-eqz v1, :cond_5

    .line 138
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->sendSettingChangeRequest()V

    :cond_5
    return-void
.end method

.method private refreshTypeValue(II)V
    .locals 0

    .line 632
    iput p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithm:I

    .line 633
    iput p2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mEffect:I

    const/4 p1, 0x0

    .line 634
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshToUI(Z)V

    return-void
.end method

.method private setASDCallback(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 2

    .line 695
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setASDCallback"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCameraAsdCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    goto :goto_0

    .line 699
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCameraAsdCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :goto_0
    return-void
.end method

.method private setCustomNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .locals 3

    .line 676
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCustomNightMode mFastSuperNightEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mFastSuperNightEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " modeSuperNightSupport = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isSuperNightSupport()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isSuperNightSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionNightMode(I)V

    return-void

    .line 681
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mFastSuperNightEnable:Z

    const-string v1, "None"

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isLightSuperNightSupport()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 682
    sget p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->ON:I

    if-ne p2, p0, :cond_1

    const-string p0, "Night_Light"

    .line 683
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperNightAlgoType(Ljava/lang/String;)V

    goto :goto_0

    .line 685
    :cond_1
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperNightAlgoType(Ljava/lang/String;)V

    .line 687
    :goto_0
    sget p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionNightMode(I)V

    goto :goto_1

    .line 689
    :cond_2
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionNightMode(I)V

    .line 690
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperNightAlgoType(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .locals 0

    .line 655
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->needSkipMiddleNightSetting()Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    .line 656
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 657
    sget-object p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "It\'s a project under 4G,force close MFNR in monkey scenarios."

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 658
    sget p2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    .line 660
    :cond_0
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setMiddleNightMode(I)V

    :cond_1
    return-void
.end method

.method private setNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .locals 3

    .line 665
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setNightMode needSkipMiddleNightSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/Asd;->needSkipMiddleNightSetting()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getPlatformMfnrSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->needSkipMiddleNightSetting()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 668
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setCustomNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    goto :goto_0

    .line 671
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setCustomNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setState(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "0"

    .line 350
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "key_asd_effect_state"

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 351
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 352
    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 353
    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 354
    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionSmartDenoise(I)V

    .line 355
    iget-object v3, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/asd/Asd;->isHighResolutionSupport()Z

    move-result v3

    if-nez v3, :cond_0

    .line 356
    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    .line 358
    :cond_0
    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 359
    iget-object v3, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdEnhanceValues:[I

    aput v2, v3, v5

    .line 360
    invoke-virtual {v1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionCusIspAsd([I)V

    .line 361
    iget-object v1, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v1

    iget-object v0, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdEnhanceValues:[I

    invoke-virtual {v1, v4, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 366
    :cond_1
    iget-boolean v3, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mDspSupport:Z

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    iget v3, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithm:I

    if-ne v3, v6, :cond_2

    iget v3, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mEffect:I

    if-ne v3, v6, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->isWideCamera()Z

    move-result v3

    if-nez v3, :cond_2

    .line 367
    iget v3, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithm:I

    goto :goto_0

    .line 369
    :cond_2
    iget v3, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithm:I

    invoke-direct {v0, v3}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->updateAlgorithm(I)I

    move-result v3

    :goto_0
    const/16 v7, 0x65

    if-ne v3, v7, :cond_3

    .line 372
    iget-boolean v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSuperResolutionOpend:Z

    if-nez v8, :cond_3

    .line 373
    iget v3, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithm:I

    .line 376
    :cond_3
    iget-object v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v9, "key_hdr"

    invoke-interface {v8, v9}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "off"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v11, 0x5

    const/4 v12, 0x7

    const/4 v13, 0x2

    if-eqz v8, :cond_6

    if-eq v3, v13, :cond_4

    .line 377
    iget v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithm:I

    if-ne v8, v12, :cond_6

    .line 379
    :cond_4
    iget-object v3, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/asd/Asd;->getPlatformMfnrSupport()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v11

    goto :goto_1

    :cond_5
    move v3, v6

    .line 387
    :cond_6
    :goto_1
    iget-boolean v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedSuperResolution:Z

    if-eqz v8, :cond_9

    iget-boolean v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSuperResolutionOpend:Z

    if-nez v8, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->isAISuperResolutionScene()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 388
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->AISuperDefinitionAlgoSupport()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-boolean v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSuperResolutionEnable:Z

    if-eqz v8, :cond_9

    iget-object v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 389
    invoke-virtual {v8}, Lcom/transsion/camera/feature/setting/asd/Asd;->isFullSizeMode()Z

    move-result v8

    if-nez v8, :cond_9

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->getDeviceZoomRatio()I

    move-result v8

    const/16 v14, 0xcd

    if-gt v8, v14, :cond_8

    if-eq v3, v13, :cond_9

    if-eq v3, v12, :cond_9

    .line 393
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->isInSensorZoomMode()Z

    move-result v8

    if-nez v8, :cond_9

    move v3, v7

    .line 398
    :cond_9
    iget-object v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v8}, Lcom/transsion/camera/feature/setting/asd/Asd;->getPlatformMfnrSupport()Z

    move-result v8

    const/4 v14, 0x6

    if-eqz v8, :cond_b

    iget-object v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v8}, Lcom/transsion/camera/feature/setting/asd/Asd;->isFullSizeMode()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v8}, Lcom/transsion/camera/feature/setting/asd/Asd;->isAsdMode()Z

    move-result v8

    if-nez v8, :cond_b

    .line 399
    iget v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithm:I

    if-eqz v8, :cond_a

    if-eq v8, v14, :cond_a

    const/16 v15, 0x8

    if-ne v8, v15, :cond_b

    :cond_a
    move v3, v8

    .line 406
    :cond_b
    iget-object v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v8}, Lcom/transsion/camera/feature/setting/asd/Asd;->isSTBlurMode()Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v8}, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterModeWithSingleBlur()Z

    move-result v8

    if-eqz v8, :cond_f

    if-eq v13, v3, :cond_f

    if-eq v12, v3, :cond_f

    .line 409
    :cond_c
    iget-object v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v8}, Lcom/transsion/camera/feature/setting/asd/Asd;->getPlatformMfnrSupport()Z

    move-result v8

    if-nez v8, :cond_e

    if-eq v3, v11, :cond_d

    if-eqz v3, :cond_d

    if-ne v3, v14, :cond_f

    :cond_d
    move v3, v6

    goto :goto_2

    :cond_e
    move v3, v11

    .line 420
    :cond_f
    :goto_2
    iget-object v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v8}, Lcom/transsion/camera/feature/setting/asd/Asd;->getPlatformMfnrSupport()Z

    move-result v8

    if-nez v8, :cond_11

    iget-object v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v8}, Lcom/transsion/camera/feature/setting/asd/Asd;->isVsdofMode()Z

    move-result v8

    if-nez v8, :cond_10

    iget-object v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v8}, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterModeWithDualCam()Z

    move-result v8

    if-eqz v8, :cond_11

    :cond_10
    if-eq v13, v3, :cond_11

    if-eq v12, v3, :cond_11

    move v3, v6

    .line 426
    :cond_11
    iget-object v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v8}, Lcom/transsion/camera/feature/setting/asd/Asd;->getPlatformMfnrSupport()Z

    move-result v8

    if-nez v8, :cond_12

    iget-object v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v8}, Lcom/transsion/camera/feature/setting/asd/Asd;->isBeautyMode()Z

    move-result v8

    if-eqz v8, :cond_12

    iget-boolean v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSoftMFNREnable:Z

    if-nez v8, :cond_12

    if-ne v3, v6, :cond_12

    move v3, v14

    .line 431
    :cond_12
    iget-boolean v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mFastSuperNightEnable:Z

    if-eqz v8, :cond_13

    iget-object v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v8}, Lcom/transsion/camera/feature/setting/asd/Asd;->isLightSuperNightSupport()Z

    move-result v8

    if-eqz v8, :cond_13

    iget-boolean v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mNightShotOpenState:Z

    if-eqz v8, :cond_13

    .line 432
    iget v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithm:I

    if-ne v8, v6, :cond_13

    move v3, v6

    .line 436
    :cond_13
    iget v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithm:I

    if-ne v6, v8, :cond_14

    iget v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mEffect:I

    if-ne v6, v8, :cond_14

    .line 437
    iget-object v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v8}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v15

    iget-object v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 438
    invoke-interface {v8}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v8

    invoke-virtual {v8}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-string v16, "key_dsp_lowlight_mode"

    const-string v17, "on"

    .line 437
    invoke-virtual/range {v15 .. v20}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_3

    .line 440
    :cond_14
    iget-object v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v8}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v15

    iget-object v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 441
    invoke-interface {v8}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v8

    invoke-virtual {v8}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-string v16, "key_dsp_lowlight_mode"

    const-string v17, "off"

    .line 440
    invoke-virtual/range {v15 .. v20}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 443
    :goto_3
    iget-object v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v8}, Lcom/transsion/camera/feature/setting/asd/Asd;->isTimelapsePhotoMode()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 444
    iget-object v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v8}, Lcom/transsion/camera/feature/setting/asd/Asd;->getPlatformMfnrSupport()Z

    move-result v8

    if-eqz v8, :cond_16

    if-eq v3, v13, :cond_16

    if-ne v3, v12, :cond_15

    goto :goto_4

    :cond_15
    if-eq v3, v6, :cond_18

    const/16 v8, 0xe

    if-ne v3, v8, :cond_17

    goto :goto_5

    :cond_16
    :goto_4
    move v11, v5

    goto :goto_5

    :cond_17
    move v11, v3

    .line 455
    :cond_18
    :goto_5
    sget-object v3, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[setState] mAlgorithm: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithm:I

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " changeAlgorithm: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", zoom: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->getDeviceZoomRatio()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", HDR: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 456
    invoke-interface {v12, v9}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 455
    invoke-static {v3, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eq v11, v7, :cond_1c

    packed-switch v11, :pswitch_data_0

    .line 542
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 543
    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 544
    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 545
    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionSmartDenoise(I)V

    .line 546
    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 547
    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    goto/16 :goto_9

    .line 517
    :pswitch_0
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 518
    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionSmartDenoise(I)V

    .line 519
    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 520
    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 521
    sget v3, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->ON:I

    invoke-direct {v0, v1, v3}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 522
    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    goto/16 :goto_9

    .line 469
    :pswitch_1
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 470
    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 471
    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 472
    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionSmartDenoise(I)V

    .line 473
    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 474
    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    goto/16 :goto_9

    .line 509
    :pswitch_2
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 510
    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionSmartDenoise(I)V

    .line 511
    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 512
    sget v3, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->ON:I

    invoke-direct {v0, v1, v3}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 513
    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 514
    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    goto/16 :goto_9

    :pswitch_3
    const-string v3, "1"

    .line 496
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/Asd;->getCustomDefaultValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "auto"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 497
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    goto :goto_6

    .line 499
    :cond_19
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->ON:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 501
    :goto_6
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionSmartDenoise(I)V

    .line 502
    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 503
    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 504
    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 505
    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    goto/16 :goto_9

    .line 477
    :pswitch_4
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 478
    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionSmartDenoise(I)V

    .line 479
    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 480
    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    .line 481
    iget-boolean v3, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mNightShotOpenState:Z

    if-eqz v3, :cond_1b

    .line 482
    iget v3, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mEffect:I

    if-ne v3, v6, :cond_1a

    iget-boolean v3, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mDspSupport:Z

    if-eqz v3, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->isWideCamera()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 483
    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 484
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->ON:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    goto/16 :goto_9

    .line 486
    :cond_1a
    sget v3, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->ON:I

    invoke-direct {v0, v1, v3}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 487
    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    goto/16 :goto_9

    .line 490
    :cond_1b
    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 491
    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    goto/16 :goto_9

    .line 461
    :pswitch_5
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 462
    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 463
    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 464
    sget v3, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->ON:I

    invoke-virtual {v1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionSmartDenoise(I)V

    .line 465
    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 466
    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    goto :goto_9

    .line 525
    :cond_1c
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 526
    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionSmartDenoise(I)V

    .line 527
    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 528
    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setMiddleNightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 529
    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V

    .line 530
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSuperResolutionOpend = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSuperResolutionOpend:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " support  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedSuperResolution:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 531
    iget-boolean v3, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedSuperResolution:Z

    if-eqz v3, :cond_20

    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->AISuperDefinitionAlgoSupport()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 532
    iget-boolean v3, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSuperResolutionOpend:Z

    const/16 v7, 0x64

    if-eqz v3, :cond_1e

    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->getDeviceZoomRatio()I

    move-result v2

    if-gt v2, v7, :cond_1d

    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->ON:I

    goto :goto_7

    :cond_1d
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->ON_LIGHT:I

    :goto_7
    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    goto :goto_9

    .line 535
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->getDeviceZoomRatio()I

    move-result v3

    if-gt v3, v7, :cond_1f

    goto :goto_8

    :cond_1f
    sget v2, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->ON_LIGHT:I

    :goto_8
    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    goto :goto_9

    .line 538
    :cond_20
    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    .line 550
    :goto_9
    iget v2, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mEffect:I

    .line 567
    iget-object v3, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdEnhanceValues:[I

    sget v7, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->ON:I

    aput v7, v3, v5

    .line 568
    aput v2, v3, v6

    .line 569
    iget v2, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithm:I

    if-ne v2, v6, :cond_21

    goto :goto_a

    :cond_21
    sget v7, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    :goto_a
    aput v7, v3, v14

    .line 570
    iget-object v2, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isASDEnhanceSupport()Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_asd_enhance"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_super_definition"

    .line 571
    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isFullSizeMode()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 572
    :cond_22
    iget-object v2, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdEnhanceValues:[I

    invoke-virtual {v2, v4, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_b

    .line 574
    :cond_23
    iget-object v2, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdEnhanceValues:[I

    sget v3, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    aput v3, v2, v5

    .line 577
    :goto_b
    iget-object v2, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v2

    const-string v3, "key_asd_algorithm_value"

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 579
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdEnhanceValues:[I

    invoke-virtual {v1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionCusIspAsd([I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 1

    .line 704
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSatSupport:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mPreviewStopped:Z

    if-nez v0, :cond_0

    .line 705
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    goto :goto_0

    .line 707
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    :goto_0
    return-void
.end method

.method private setTranssionHDR(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .locals 3

    .line 638
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportTranssionHdr:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    const-string v1, "key_hdr"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getHdrAsdBothSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 639
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "off"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 642
    :cond_1
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionHDR(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setTranssionLowLightMode(Lcom/transsion/camera/adapter/CameraParameters;I)V
    .locals 1

    .line 647
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    const-string v0, "key_hdr"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "off"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 648
    sget p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionLowLightMode(I)V

    goto :goto_0

    .line 650
    :cond_0
    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionLowLightMode(I)V

    :goto_0
    return-void
.end method

.method private updateAlgorithm(I)I
    .locals 2

    .line 601
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 602
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 607
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontMainCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmFrontMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 609
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "updateAlgorithm type front"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 610
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmFrontMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 612
    :cond_1
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 613
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmWideMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 614
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "updateAlgorithm type wide"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 615
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmWideMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 617
    :cond_2
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 618
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmWideMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 619
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "updateAlgorithm type front wide"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 620
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmWideMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 622
    :cond_3
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 623
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmWideMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 624
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "updateAlgorithm type LongFocus"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 625
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmWideMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 603
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmBackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 604
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "updateAlgorithm type Back"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 605
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithmBackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_5
    return p1
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 1

    .line 304
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setASDCallback(Lcom/transsion/camera/adapter/CameraProxy;)V

    .line 305
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy;)V

    .line 306
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mFakeCameraSupport:Z

    if-eqz v0, :cond_0

    .line 307
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    const/16 v0, 0x9

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->registerDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V

    goto :goto_0

    .line 309
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V

    :goto_0
    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 6

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 260
    sget-object v1, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configParameters,ASD newValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", currentValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mIsSTBlueMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsSTBlueMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mAsdOpenState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdOpenState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 263
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isAsdMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mFakeCameraSupport:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    .line 265
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setFakeDualLensMode(I)V

    .line 269
    :cond_0
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdOpenState:Z

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    if-gt v2, v5, :cond_1

    goto/16 :goto_5

    .line 276
    :cond_1
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSatSupport:Z

    if-eqz v2, :cond_2

    .line 277
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    .line 278
    iget v5, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mStreamId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->isSupportedFastSuperNightMode(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mFastSuperNightEnable:Z

    .line 280
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFastSuperNightEnable = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mFastSuperNightEnable:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsSTBlueMode:Z

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isSTBlurMode()Z

    move-result v2

    if-eq v1, v2, :cond_3

    goto :goto_0

    .line 295
    :cond_3
    invoke-virtual {p0, v3}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshToUI(Z)V

    goto :goto_4

    .line 282
    :cond_4
    :goto_0
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCurrentValue:Ljava/lang/String;

    .line 283
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isSTBlurMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsSTBlueMode:Z

    const-string v1, "1"

    .line 284
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 291
    :cond_5
    sget v1, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionAsdMode(I)V

    goto :goto_3

    .line 285
    :cond_6
    :goto_1
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mIsSTBlueMode:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isVsdofMode()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isPMasterMode()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    .line 288
    :cond_7
    sget v1, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->ON:I

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionAsdMode(I)V

    goto :goto_3

    .line 286
    :cond_8
    :goto_2
    sget v1, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->ON_LIGHT:I

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionAsdMode(I)V

    .line 293
    :goto_3
    invoke-direct {p0, v4, v4}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshTypeValue(II)V

    .line 298
    :goto_4
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setState(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)V

    return v3

    :cond_9
    :goto_5
    const-string v0, ""

    .line 270
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCurrentValue:Ljava/lang/String;

    .line 271
    sget v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->OFF:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionAsdMode(I)V

    const-string v0, "0"

    .line 272
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setState(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)V

    .line 273
    invoke-direct {p0, v4, v4}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshTypeValue(II)V

    return v3
.end method

.method public getDeviceZoomRatio()I
    .locals 3

    .line 770
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSatSupport:Z

    const-string v1, "key_camera_zoom"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mStreamId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 771
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 772
    :cond_1
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    .line 773
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraDeviceZoom(I)I

    move-result p0

    return p0

    .line 775
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public onAsdDataCallback([I)V
    .locals 4

    .line 144
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 148
    aget v0, p1, v0

    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithm:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    aget v1, p1, v2

    iget v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mEffect:I

    if-ne v1, v3, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 152
    aget v3, p1, v2

    if-eq v3, v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdOpenState:Z

    if-nez v1, :cond_3

    return-void

    .line 155
    :cond_3
    aget p1, p1, v2

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshTypeValue(II)V

    .line 156
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->sendSettingChangeRequest()V

    return-void
.end method

.method public refreshAsdStateImmediately(I)V
    .locals 4

    .line 327
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshAsdStateImmediately type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p1, v0, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    invoke-direct {p0, v2, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshTypeValue(II)V

    goto :goto_0

    .line 341
    :cond_1
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mNightShotOpenState:Z

    goto :goto_0

    .line 338
    :cond_2
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mNightShotOpenState:Z

    goto :goto_0

    .line 333
    :cond_3
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdOpenState:Z

    const-string p1, ""

    .line 334
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mCurrentValue:Ljava/lang/String;

    .line 335
    invoke-direct {p0, v2, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshTypeValue(II)V

    goto :goto_0

    .line 330
    :cond_4
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsdOpenState:Z

    :goto_0
    return-void
.end method

.method protected refreshToUI(Z)V
    .locals 5

    .line 712
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isSTBlurMode()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->isModeSupport()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 717
    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithm:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 719
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->updateAlgorithm(I)I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 720
    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAlgorithm:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->updateAlgorithm(I)I

    move-result v1

    .line 722
    :cond_1
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    const-string v4, "key_hdr"

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "off"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :cond_2
    const/4 v1, -0x1

    :cond_3
    new-array v2, v4, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 727
    iget v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mEffect:I

    const/4 v4, 0x1

    aput v1, v2, v4

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->needShow()Z

    move-result p0

    if-nez p0, :cond_4

    if-eqz p1, :cond_5

    :cond_4
    move v3, v4

    :cond_5
    invoke-interface {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 7

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getCustomDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedAsdModes()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    .line 219
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportedSuperResolution()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedSuperResolution:Z

    .line 220
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportedFastSuperNightMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mFastSuperNightEnable:Z

    .line 221
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSatModeSupport()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSatSupport:Z

    .line 222
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupported4Cell()Z

    move-result v1

    .line 223
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportedSuperDefinition()Z

    move-result v2

    .line 224
    sget-object v3, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "supported4Cell = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mFastSuperNightEnable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mFastSuperNightEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 225
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    .line 226
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 227
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    if-eqz v2, :cond_0

    .line 228
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/asd/Asd;->isHighDefinitionMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v6, "key_super_definition"

    .line 229
    invoke-interface {v2, v6}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "off"

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    .line 230
    :goto_0
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    mul-int/2addr v6, v3

    const v3, 0x1312d00

    if-gt v6, v3, :cond_1

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 231
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    move v1, v5

    goto :goto_1

    :cond_1
    move v1, v4

    .line 232
    :goto_1
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/asd/Asd;->isSuperResolutionSupport()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isFullSizeMode()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v1, v5

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSuperResolutionOpend:Z

    .line 234
    :cond_4
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "0"

    if-gt v1, v5, :cond_5

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    goto :goto_3

    :cond_5
    const-string v1, "auto"

    .line 238
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 239
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_6
    :goto_3
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPhotoHDRModes()Ljava/util/List;

    move-result-object v1

    .line 242
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedTranssionHDR()Ljava/util/List;

    move-result-object v3

    .line 243
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v5, :cond_7

    .line 244
    iput-boolean v5, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportTranssionHdr:Z

    .line 246
    :cond_7
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/asd/Asd;->isAIDetectionDefaultOff()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_4

    :cond_8
    move-object v2, v0

    :goto_4
    invoke-virtual {v1, v3, v2}, Lcom/transsion/camera/feature/setting/asd/Asd;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_9

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mAsd:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getFakeCameraSupport()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 248
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportFakeDualCamera()Ljava/util/List;

    move-result-object v0

    const-string v1, "raw_yuv"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 249
    iput-boolean v5, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mFakeCameraSupport:Z

    goto :goto_5

    .line 251
    :cond_9
    iput-boolean v4, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mFakeCameraSupport:Z

    .line 253
    :goto_5
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isDspSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mDspSupport:Z

    .line 254
    iput v4, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mWarningType:I

    return-void
.end method

.method public setSuperResolutionOpend(Z)V
    .locals 0

    .line 762
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mSuperResolutionOpend:Z

    return-void
.end method

.method public updatePreviewState(Z)V
    .locals 0

    .line 766
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mPreviewStopped:Z

    return-void
.end method

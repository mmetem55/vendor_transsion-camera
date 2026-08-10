.class Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;
.super Ljava/lang/Object;
.source "CameraDeviceInfo2Impl.java"

# interfaces
.implements Lcom/transsion/camera/adapter/ICameraDeviceInfo;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBackFakeDualCameraId:Ljava/lang/String;

.field private mBlackWhitePortraitCameraId:Ljava/lang/String;

.field private final mCameraCapabilitiesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/adapter/CameraCapabilities2Impl;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraCharacteristicsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraIds:[Ljava/lang/String;

.field private final mCameraInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/adapter/CameraInfo2Impl;",
            ">;"
        }
    .end annotation
.end field

.field private mDualCamCalibrationSize:Ljava/lang/String;

.field private mFoldedFrontCameraId:Ljava/lang/String;

.field private mFrontFakeDualCameraId:Ljava/lang/String;

.field private mFrontWideCameraId:Ljava/lang/String;

.field private mHighDefinitionLogicBackId:Ljava/lang/String;

.field private mHighDefinitionLogicFrontId:Ljava/lang/String;

.field private mHighFpsSupport:Z

.field private mIsSupportMicroCamera:Z

.field private mLogicalId:Ljava/lang/String;

.field private mMacroCameraId:Ljava/lang/String;

.field private mMicroPanTiltCameraLogicId:Ljava/lang/String;

.field private final mNumberOfCameras:I

.field private mPeriscopeCameraId:Ljava/lang/String;

.field private final mPlatformCameraMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;",
            ">;"
        }
    .end annotation
.end field

.field private mSatCameraLogicId:Ljava/lang/String;

.field private mSecondLogicId:Ljava/lang/String;

.field private mTeleCameraId:Ljava/lang/String;

.field private mVideoCameraId:Ljava/lang/String;

.field private mWideCameraId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraDeviceInfo2"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/hardware/camera2/CameraManager;)V
    .locals 5

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraInfoMap:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraIds:[Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mLogicalId:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mSecondLogicId:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mWideCameraId:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mFrontWideCameraId:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mMacroCameraId:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mFoldedFrontCameraId:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mTeleCameraId:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mVideoCameraId:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mFrontFakeDualCameraId:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mBackFakeDualCameraId:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mBlackWhitePortraitCameraId:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mDualCamCalibrationSize:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mSatCameraLogicId:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPeriscopeCameraId:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mMicroPanTiltCameraLogicId:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mHighDefinitionLogicBackId:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mHighDefinitionLogicFrontId:Ljava/lang/String;

    .line 94
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraIds:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraIds:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    array-length v0, v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mNumberOfCameras:I

    .line 103
    sget-object v2, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera num is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_2

    .line 99
    :cond_1
    :goto_1
    sget-object v0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "Camera num is 0, Sensor should double check"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 100
    iput v1, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mNumberOfCameras:I

    .line 105
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->loadCharacteristics(Landroid/hardware/camera2/CameraManager;Z)V

    return-void
.end method

.method private loadCharacteristics(Landroid/hardware/camera2/CameraManager;Z)V
    .locals 5

    const/4 v0, 0x0

    .line 109
    :goto_0
    iget v1, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mNumberOfCameras:I

    if-ge v0, v1, :cond_3

    .line 111
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraIds:[Ljava/lang/String;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    .line 114
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 116
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-nez p2, :cond_0

    .line 118
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 119
    invoke-static {}, Lcom/transsion/camera/adapter/platformcamera/PlatformCameraFactory;->createPlatformCamera2()Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    move-result-object v3

    .line 120
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_0
    new-instance v3, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-direct {v3, v4}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;-><init>(Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    .line 123
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v3, v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->initFirst(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 125
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v3, v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportMultichannelFlow(Ljava/lang/String;)Z

    .line 126
    new-instance v3, Lcom/transsion/camera/adapter/CameraInfo2Impl;

    invoke-direct {v3, v2}, Lcom/transsion/camera/adapter/CameraInfo2Impl;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 127
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraInfoMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 131
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v3, v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isLogicalCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1, v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getLogicId(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;

    move-result-object v1

    .line 133
    sget-object v2, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadCharacteristics logicId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 136
    :try_start_1
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "loadCharacteristics mPlatformCameraMap add"

    .line 143
    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/transsion/camera/adapter/platformcamera/PlatformCameraFactory;->createPlatformCamera2()Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    move-result-object v2

    .line 145
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_1
    new-instance v2, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-direct {v2, v4}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;-><init>(Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    .line 148
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2, v3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->initFirst(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 150
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2, v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportMultichannelFlow(Ljava/lang/String;)Z

    .line 151
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraInfoMap:Ljava/util/HashMap;

    new-instance v4, Lcom/transsion/camera/adapter/CameraInfo2Impl;

    invoke-direct {v4, v3}, Lcom/transsion/camera/adapter/CameraInfo2Impl;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_1
    move-exception v1

    .line 138
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    sget-object v1, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "loadCharacteristics getCameraCharacteristics fail"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public aeLockSupported(Ljava/lang/String;)Z
    .locals 0

    .line 505
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->isAutoExposureLockSupported()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBackFakeDualCameraId()Ljava/lang/String;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mBackFakeDualCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getBaseZoomRatio(Ljava/lang/String;F)F
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    .line 526
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getBaseZoomRatio()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-lez p1, :cond_0

    return p0

    :cond_0
    return p2
.end method

.method public getBlackWhitePortraitCameraId()Ljava/lang/String;
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mBlackWhitePortraitCameraId:Ljava/lang/String;

    return-object p0
.end method

.method getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraCharacteristics;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraInfoMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/ICameraInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDualCamCalibrationSize()Ljava/lang/String;
    .locals 0

    .line 415
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mDualCamCalibrationSize:Ljava/lang/String;

    return-object p0
.end method

.method public getFoldedFrontCameraId()Ljava/lang/String;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mFoldedFrontCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getFrontFakeDualCameraId()Ljava/lang/String;
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mFrontFakeDualCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getFrontWideCameraId()Ljava/lang/String;
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mFrontWideCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getHighDefinitionLogicBackId()Ljava/lang/String;
    .locals 0

    .line 495
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mHighDefinitionLogicBackId:Ljava/lang/String;

    return-object p0
.end method

.method public getHighDefinitionLogicFrontId()Ljava/lang/String;
    .locals 0

    .line 500
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mHighDefinitionLogicFrontId:Ljava/lang/String;

    return-object p0
.end method

.method public getLargestSupportedPictureSize(Ljava/lang/String;)Landroid/util/Size;
    .locals 0

    .line 476
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getSupportedPictureSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 477
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 478
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->sortSizeInDescending(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 479
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLensFocalLengths(Ljava/lang/String;)[F
    .locals 0

    .line 425
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraCharacteristics;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [F

    return-object p0

    .line 429
    :cond_0
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    return-object p0
.end method

.method public getLogicalCameraId()Ljava/lang/String;
    .locals 0

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mLogicalId:Ljava/lang/String;

    return-object p0
.end method

.method public getMacroCameraId()Ljava/lang/String;
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mMacroCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxZoom(Ljava/lang/String;)I
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    .line 457
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedZoomRatios()Ljava/util/List;

    move-result-object p0

    .line 458
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 459
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMicroPanTiltCameraLogicId()Ljava/lang/String;
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mMicroPanTiltCameraLogicId:Ljava/lang/String;

    return-object p0
.end method

.method public getMiniZoom(Ljava/lang/String;)I
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 444
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    .line 445
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedZoomRatios()Ljava/util/List;

    move-result-object p0

    .line 446
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 447
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public getNumberOfCameras()I
    .locals 0

    .line 297
    iget p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mNumberOfCameras:I

    return p0
.end method

.method public getOpticalZoomCameraId()Ljava/lang/String;
    .locals 0

    .line 337
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mTeleCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getPeriscopeCameraId()Ljava/lang/String;
    .locals 0

    .line 363
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPeriscopeCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getPhysicalId4In1Size(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 486
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->get4cellInOneSize()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method getPlatformCamera(Ljava/lang/String;)Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSatCameraLogicId()Ljava/lang/String;
    .locals 0

    .line 353
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mSatCameraLogicId:Ljava/lang/String;

    return-object p0
.end method

.method public getSecondLogicalCameraId()Ljava/lang/String;
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mSecondLogicId:Ljava/lang/String;

    return-object p0
.end method

.method public getSensorPhysicalSize(Ljava/lang/String;)Landroid/util/SizeF;
    .locals 0

    .line 434
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraCharacteristics;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 438
    :cond_0
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SizeF;

    return-object p0
.end method

.method public getSupportedFocusModes(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 515
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object p0

    if-nez p0, :cond_0

    .line 517
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 519
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedFocusModes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedPictureSizes(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 467
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportedPreviewSizes(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 406
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 409
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getSupportedVideoSizes(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 397
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoCameraId()Ljava/lang/String;
    .locals 0

    .line 420
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mVideoCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getWideCameraId()Ljava/lang/String;
    .locals 0

    .line 307
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mWideCameraId:Ljava/lang/String;

    return-object p0
.end method

.method initFirst()V
    .locals 10

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "37"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    .line 160
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    .line 161
    invoke-virtual {v2, v0}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedMaxPictureSize(Landroid/hardware/camera2/CameraCharacteristics;)J

    move-result-wide v2

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 163
    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    .line 164
    invoke-virtual {v4, v2, v3}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->setMaxPictureSize(J)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 168
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraCharacteristics;

    .line 169
    sget-object v4, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initDeviceInfo initFirst, key= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " and value= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraInfoMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/adapter/CameraInfo2Impl;

    .line 171
    iget-object v6, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    .line 172
    invoke-virtual {v6, v3}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildAllCapabilities(Ljava/lang/Object;)V

    .line 173
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSupportMicroCamera()Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mIsSupportMicroCamera:Z

    if-eqz v3, :cond_1

    .line 175
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mMacroCameraId:Ljava/lang/String;

    .line 177
    :cond_1
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->isWideCameraSupport()Z

    move-result v3

    const-string v7, "1"

    const-string v8, "0"

    const/4 v9, 0x1

    if-eqz v3, :cond_4

    .line 178
    invoke-virtual {v5}, Lcom/transsion/camera/adapter/CameraInfo2Impl;->getFacing()I

    move-result v3

    if-ne v3, v9, :cond_2

    .line 179
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mFrontWideCameraId:Ljava/lang/String;

    .line 180
    invoke-static {v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFrontWideCameraId(Ljava/lang/String;)V

    goto :goto_2

    .line 181
    :cond_2
    invoke-virtual {v5}, Lcom/transsion/camera/adapter/CameraInfo2Impl;->getFacing()I

    move-result v3

    if-nez v3, :cond_3

    .line 182
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mWideCameraId:Ljava/lang/String;

    .line 183
    invoke-static {v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setsWideCameraId(Ljava/lang/String;)V

    .line 185
    :cond_3
    :goto_2
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->isMicroPanTiltSupport()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 186
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mMicroPanTiltCameraLogicId:Ljava/lang/String;

    goto/16 :goto_4

    .line 188
    :cond_4
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->isTeleCameraSupport()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 189
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mTeleCameraId:Ljava/lang/String;

    goto/16 :goto_4

    .line 190
    :cond_5
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->isPeriscopeLensSupport()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 191
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPeriscopeCameraId:Ljava/lang/String;

    goto/16 :goto_4

    .line 192
    :cond_6
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSatModeSupport()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 193
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mSatCameraLogicId:Ljava/lang/String;

    goto/16 :goto_4

    .line 194
    :cond_7
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->isFakeDualLensSupport()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "initFirst isFakeDualLensSupport"

    .line 195
    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v5}, Lcom/transsion/camera/adapter/CameraInfo2Impl;->getFacing()I

    move-result v3

    if-ne v3, v9, :cond_8

    .line 197
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mFrontFakeDualCameraId:Ljava/lang/String;

    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 198
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mFrontFakeDualCameraId:Ljava/lang/String;

    goto :goto_4

    .line 200
    :cond_8
    invoke-virtual {v5}, Lcom/transsion/camera/adapter/CameraInfo2Impl;->getFacing()I

    move-result v3

    if-nez v3, :cond_e

    .line 202
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mBackFakeDualCameraId:Ljava/lang/String;

    invoke-static {v3, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 203
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mBackFakeDualCameraId:Ljava/lang/String;

    goto :goto_4

    .line 206
    :cond_9
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->isVideoCameraSupport()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 207
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mVideoCameraId:Ljava/lang/String;

    goto :goto_4

    .line 208
    :cond_a
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->isBWPortraitSupport()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 209
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mBlackWhitePortraitCameraId:Ljava/lang/String;

    goto :goto_4

    .line 210
    :cond_b
    iget v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mNumberOfCameras:I

    const/4 v5, 0x2

    if-le v3, v5, :cond_e

    const-string v3, "initFirst isLogicalCameraSupport"

    .line 211
    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->isLogicalCameraSupport()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->isBWPortraitSupport()Z

    move-result v3

    if-nez v3, :cond_e

    .line 213
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->isMultiDualCamTeleSupport()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 214
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mSecondLogicId:Ljava/lang/String;

    goto :goto_4

    .line 216
    :cond_c
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->getLogicId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    move-object v3, v2

    goto :goto_3

    :cond_d
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->getLogicId()Ljava/lang/String;

    move-result-object v3

    :goto_3
    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mLogicalId:Ljava/lang/String;

    .line 220
    :cond_e
    :goto_4
    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 221
    :cond_f
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->isHighFpsSupport()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 222
    iput-boolean v9, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mHighFpsSupport:Z

    .line 226
    :cond_10
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->isCameraFoldedFlagSupport()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 227
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mFoldedFrontCameraId:Ljava/lang/String;

    .line 230
    :cond_11
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mLogicalId:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 231
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->getDualCamCalibrationSize()Landroid/util/Size;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mDualCamCalibrationSize:Ljava/lang/String;

    .line 237
    :cond_12
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 238
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mHighDefinitionLogicBackId:Ljava/lang/String;

    goto :goto_5

    :cond_13
    const-string v3, "39"

    .line 239
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 240
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mHighDefinitionLogicFrontId:Ljava/lang/String;

    .line 242
    :cond_14
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initDeviceInfo initFirst, id= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " PhysicalCameraIds: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_15
    return-void
.end method

.method initSecond()V
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 248
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics;

    .line 249
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1, v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->initSecond(Landroid/hardware/camera2/CameraCharacteristics;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isBGServiceSupport(Ljava/lang/String;)Z
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->isBgServiceModeSupport()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isHighFPSSupport()Z
    .locals 0

    .line 292
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mHighFpsSupport:Z

    return p0
.end method

.method public isSupportMicroCamera()Z
    .locals 0

    .line 312
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mIsSupportMicroCamera:Z

    return p0
.end method

.method public isSupportedFastSuperNightMode(Ljava/lang/String;)Z
    .locals 0

    .line 535
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSupportedFastSuperNightMode()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method reloadCharacteristics(Landroid/hardware/camera2/CameraManager;)Z
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v0, :cond_1

    return v1

    .line 263
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics;->getKeysNeedingPermission()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 265
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 268
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->loadCharacteristics(Landroid/hardware/camera2/CameraManager;Z)V

    return v0

    :cond_3
    :goto_0
    return v1
.end method

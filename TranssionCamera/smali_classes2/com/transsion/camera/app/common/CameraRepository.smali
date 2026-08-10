.class public Lcom/transsion/camera/app/common/CameraRepository;
.super Ljava/lang/Object;
.source "CameraRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/transsion/camera/app/common/CameraRepository;


# instance fields
.field private final mAllCamera:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mBack2XBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mBack2XLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mBack5XLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mBackBlackWhitePortraitCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mBackBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mBackFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mBackMacroCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mBackSATCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mBackVideoCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mCameraCount:I

.field private final mFrontFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mFrontWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mHighDefinitionLogicBackId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mHighDefinitionLogicFrontId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mMainBackCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mMainFrontCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

.field private final mMicroPanTiltCameraLogicId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;


# direct methods
.method private constructor <init>()V
    .locals 20

    move-object/from16 v0, p0

    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/transsion/camera/app/common/CameraRepository;->mAllCamera:Ljava/util/Map;

    .line 109
    new-instance v2, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    const-string v3, "0"

    const-string v4, "BACK_MAIN"

    invoke-direct {v2, v3, v4}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/transsion/camera/app/common/CameraRepository;->mMainBackCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 110
    new-instance v3, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    const-string v4, "1"

    const-string v5, "FRONT_MAIN"

    invoke-direct {v3, v4, v5}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/transsion/camera/app/common/CameraRepository;->mMainFrontCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 111
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v4

    .line 112
    new-instance v5, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v4}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getVideoCameraId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BACK_VIDEO"

    invoke-direct {v5, v6, v7}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v0, Lcom/transsion/camera/app/common/CameraRepository;->mBackVideoCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 113
    invoke-interface {v4}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object v6

    const v7, 0x3f19999a    # 0.6f

    invoke-interface {v4, v6, v7}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBaseZoomRatio(Ljava/lang/String;F)F

    move-result v6

    .line 114
    new-instance v7, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v4}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    .line 115
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string v12, "BACK_%s_WIDE"

    invoke-static {v9, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v8, v6, v11}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;FLjava/lang/String;)V

    iput-object v7, v0, Lcom/transsion/camera/app/common/CameraRepository;->mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 116
    new-instance v6, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v4}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getMacroCameraId()Ljava/lang/String;

    move-result-object v8

    const-string v11, "BACK_MACRO"

    invoke-direct {v6, v8, v11}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v0, Lcom/transsion/camera/app/common/CameraRepository;->mBackMacroCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 117
    invoke-interface {v4}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getOpticalZoomCameraId()Ljava/lang/String;

    move-result-object v8

    const/high16 v11, 0x40000000    # 2.0f

    invoke-interface {v4, v8, v11}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBaseZoomRatio(Ljava/lang/String;F)F

    move-result v8

    .line 118
    new-instance v12, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v4}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getOpticalZoomCameraId()Ljava/lang/String;

    move-result-object v14

    new-array v15, v10, [Ljava/lang/Object;

    .line 119
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v15, v13

    const-string v11, "BACK_%s_LONG_FOCUS"

    invoke-static {v9, v11, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v14, v8, v15}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;FLjava/lang/String;)V

    iput-object v12, v0, Lcom/transsion/camera/app/common/CameraRepository;->mBack2XLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 120
    invoke-interface {v4}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getPeriscopeCameraId()Ljava/lang/String;

    move-result-object v14

    const/high16 v15, 0x40a00000    # 5.0f

    invoke-interface {v4, v14, v15}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBaseZoomRatio(Ljava/lang/String;F)F

    move-result v14

    .line 121
    new-instance v15, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v4}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getPeriscopeCameraId()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v18, v6

    new-array v6, v10, [Ljava/lang/Object;

    .line 122
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    const/16 v17, 0x0

    aput-object v19, v6, v17

    invoke-static {v9, v11, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v15, v13, v14, v6}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;FLjava/lang/String;)V

    iput-object v15, v0, Lcom/transsion/camera/app/common/CameraRepository;->mBack5XLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 123
    invoke-static {v12}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v12, v15

    :goto_0
    iput-object v12, v0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 124
    new-instance v6, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v4}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSatCameraLogicId()Ljava/lang/String;

    move-result-object v11

    const-string v13, "BACK_SAT"

    invoke-direct {v6, v11, v13}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v0, Lcom/transsion/camera/app/common/CameraRepository;->mBackSATCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 125
    new-instance v11, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v4}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getLogicalCameraId()Ljava/lang/String;

    move-result-object v13

    const-string v14, "BACK_BLUR"

    invoke-direct {v11, v13, v14}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v11, v0, Lcom/transsion/camera/app/common/CameraRepository;->mBackBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 126
    invoke-interface {v4}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSecondLogicalCameraId()Ljava/lang/String;

    move-result-object v13

    const/high16 v14, 0x40000000    # 2.0f

    invoke-interface {v4, v13, v14}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBaseZoomRatio(Ljava/lang/String;F)F

    move-result v13

    .line 127
    new-instance v14, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v4}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSecondLogicalCameraId()Ljava/lang/String;

    move-result-object v15

    new-array v10, v10, [Ljava/lang/Object;

    .line 128
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/16 v16, 0x0

    aput-object v8, v10, v16

    const-string v8, "BACK_%s_BLUR"

    invoke-static {v9, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v14, v15, v13, v8}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;FLjava/lang/String;)V

    iput-object v14, v0, Lcom/transsion/camera/app/common/CameraRepository;->mBack2XBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 129
    new-instance v8, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v4}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBlackWhitePortraitCameraId()Ljava/lang/String;

    move-result-object v9

    const-string v10, "BACK_BLACK_WHITE_PORTRAIT"

    invoke-direct {v8, v9, v10}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, v0, Lcom/transsion/camera/app/common/CameraRepository;->mBackBlackWhitePortraitCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 130
    new-instance v9, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v4}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBackFakeDualCameraId()Ljava/lang/String;

    move-result-object v10

    const-string v13, "BACK_FAKE_DUAL"

    invoke-direct {v9, v10, v13}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, v0, Lcom/transsion/camera/app/common/CameraRepository;->mBackFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 131
    new-instance v10, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v4}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFrontWideCameraId()Ljava/lang/String;

    move-result-object v13

    const-string v15, "FRONT_WIDE"

    invoke-direct {v10, v13, v15}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 132
    new-instance v13, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v4}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFrontFakeDualCameraId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v10

    const-string v10, "FRONT_FAKE_DUAL"

    invoke-direct {v13, v15, v10}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v13, v0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 133
    new-instance v10, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v4}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getMicroPanTiltCameraLogicId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v13

    const-string v13, "MICRO_PAN_TILT"

    invoke-direct {v10, v15, v13}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v0, Lcom/transsion/camera/app/common/CameraRepository;->mMicroPanTiltCameraLogicId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 134
    new-instance v10, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v4}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getHighDefinitionLogicBackId()Ljava/lang/String;

    move-result-object v13

    const-string v15, "BACK_HIGH_DEFINITION"

    invoke-direct {v10, v13, v15}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v0, Lcom/transsion/camera/app/common/CameraRepository;->mHighDefinitionLogicBackId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 135
    new-instance v13, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-interface {v4}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getHighDefinitionLogicFrontId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v10

    const-string v10, "FRONT_HIGH_DEFINITION"

    invoke-direct {v13, v15, v10}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v13, v0, Lcom/transsion/camera/app/common/CameraRepository;->mHighDefinitionLogicFrontId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 136
    invoke-interface {v4}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getNumberOfCameras()I

    move-result v4

    iput v4, v0, Lcom/transsion/camera/app/common/CameraRepository;->mCameraCount:I

    .line 137
    invoke-static {v2}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    invoke-static {v2}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_1
    invoke-static {v3}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 141
    invoke-static {v3}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_2
    invoke-static {v5}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 144
    invoke-static {v5}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_3
    invoke-static {v7}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 147
    invoke-static {v7}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_4
    invoke-static/range {v18 .. v18}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 150
    invoke-static/range {v18 .. v18}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v18

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_5
    invoke-static {v12}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 153
    invoke-static {v12}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_6
    invoke-static {v6}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 156
    invoke-static {v6}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_7
    invoke-static {v11}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 159
    invoke-static {v11}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_8
    invoke-static {v14}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 162
    invoke-static {v14}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_9
    invoke-static {v8}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 165
    invoke-static {v8}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_a
    invoke-static {v9}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 168
    invoke-static {v9}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_b
    invoke-static/range {v16 .. v16}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 171
    invoke-static/range {v16 .. v16}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v16

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_c
    invoke-static/range {v17 .. v17}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 174
    invoke-static/range {v17 .. v17}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v17

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_d
    invoke-static/range {v19 .. v19}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 177
    invoke-static/range {v19 .. v19}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v19

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_e
    invoke-static {v13}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 180
    invoke-static {v13}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method private equivalentZoomInLongFocusCamera(I)Z
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$800(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 411
    invoke-static {v0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$300(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 412
    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$300(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)I

    move-result p0

    if-ne p1, p0, :cond_0

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

.method public static getInstance()Lcom/transsion/camera/app/common/CameraRepository;
    .locals 1

    .line 185
    sget-object v0, Lcom/transsion/camera/app/common/CameraRepository;->sInstance:Lcom/transsion/camera/app/common/CameraRepository;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/transsion/camera/app/common/CameraRepository;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/CameraRepository;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/CameraRepository;->sInstance:Lcom/transsion/camera/app/common/CameraRepository;

    .line 188
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/common/CameraRepository;->sInstance:Lcom/transsion/camera/app/common/CameraRepository;

    return-object v0
.end method


# virtual methods
.method public aeLockSupported(Ljava/lang/String;)Z
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mAllCamera:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_0

    .line 380
    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$600(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public continuousFocusSupport(Ljava/lang/String;Z)Z
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mAllCamera:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_0

    .line 388
    invoke-static {p0, p2}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$700(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public get2XBlurCameraZoom(I)I
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack2XBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$400(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)I

    move-result p0

    return p0
.end method

.method public getBack2XBlurCamera()Ljava/lang/String;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack2XBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBack5XLongFocusCamera()Ljava/lang/String;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack5XLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBack5XLongFocusCameraMiniZoom()I
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack5XLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$200(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)I

    move-result p0

    return p0
.end method

.method public getBackBlackWhitePortraitCamera()Ljava/lang/String;
    .locals 0

    .line 267
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackBlackWhitePortraitCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackBlurCamera()Ljava/lang/String;
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackCameraWithZoom(I)Ljava/lang/String;
    .locals 1

    .line 398
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->equivalentZoomInLongFocusCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainBackCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$800(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$800(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 403
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 405
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackDefaultCamera()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackDefaultCamera(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackDefaultCamera(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackSATCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 216
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainBackCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackFakeDualCamera()Ljava/lang/String;
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackLongFocusCamera()Ljava/lang/String;
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackLongFocusCameraDeviceZoom(I)I
    .locals 0

    .line 350
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$500(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)I

    move-result p0

    return p0
.end method

.method public getBackLongFocusCameraMaxZoom()I
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$300(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)I

    move-result p0

    return p0
.end method

.method public getBackLongFocusCameraMiniZoom()I
    .locals 0

    .line 338
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$200(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)I

    move-result p0

    return p0
.end method

.method public getBackLongFocusCameraZoom(I)I
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$400(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)I

    move-result p0

    return p0
.end method

.method public getBackMacroCamera()Ljava/lang/String;
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackMacroCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackMainCameraMiniZoom()I
    .locals 0

    .line 394
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainBackCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$200(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)I

    move-result p0

    return p0
.end method

.method public getBackSATCamera()Ljava/lang/String;
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackSATCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackVideoCamera()Ljava/lang/String;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackVideoCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackWideCamera()Ljava/lang/String;
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCameraCount()I
    .locals 0

    .line 192
    iget p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mCameraCount:I

    return p0
.end method

.method public getCameraName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 422
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mAllCamera:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_0

    .line 424
    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$900(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getDeviceZoom(Ljava/lang/String;I)I
    .locals 0

    .line 370
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mAllCamera:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_0

    .line 372
    invoke-static {p0, p2}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$500(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public getEquivalentZoom(Ljava/lang/String;I)I
    .locals 0

    .line 362
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mAllCamera:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    if-eqz p0, :cond_0

    .line 364
    invoke-static {p0, p2}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$400(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public getFrontDefaultCamera()Ljava/lang/String;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainFrontCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFrontFakeDualCamera()Ljava/lang/String;
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontFakeDualCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFrontWideCamera()Ljava/lang/String;
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHighDefinitionBackCamera()Ljava/lang/String;
    .locals 0

    .line 329
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mHighDefinitionLogicBackId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHighDefinitionFrontCamera()Ljava/lang/String;
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mHighDefinitionLogicFrontId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMainBackCamera()Ljava/lang/String;
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainBackCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMainFrontCamera()Ljava/lang/String;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainFrontCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWideCamera(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 236
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 238
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public is2XBlurCamera(Ljava/lang/String;)Z
    .locals 0

    .line 319
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBack2XBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$100(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isBackLongFocusCamera(Ljava/lang/String;)Z
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$100(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isBackMainCamera(Ljava/lang/String;)Z
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainBackCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$100(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isBackSATCamera(Ljava/lang/String;)Z
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackSATCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$100(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isBackWideCamera(Ljava/lang/String;)Z
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$100(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isBlurCamera(Ljava/lang/String;)Z
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackBlurCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$100(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isFrontMainCamera(Ljava/lang/String;)Z
    .locals 0

    .line 307
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMainFrontCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$100(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isFrontWideCamera(Ljava/lang/String;)Z
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$100(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isHighDefiniteCamera(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "37"

    .line 324
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isMicroPanTiltCamera(Ljava/lang/String;)Z
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mMicroPanTiltCameraLogicId:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$100(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public nonDefaultCameraInASDMode(Ljava/lang/String;)Z
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    invoke-static {v0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mFrontWideCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 417
    invoke-static {v0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository;->mBackLongFocusCamera:Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;

    .line 418
    invoke-static {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

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

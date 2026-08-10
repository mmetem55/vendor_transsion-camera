.class public Lcom/transsion/camera/feature/mode/makeup/MakeUpMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "MakeUpMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode<",
        "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mFaceAttributeSupport:Z

.field private mIsSupportMakeup:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpMode;->mFaceAttributeSupport:Z

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpMode;->mIsSupportMakeup:Z

    .line 43
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    return-void
.end method

.method private getBeautyModeVersion(Landroid/content/Context;)I
    .locals 0

    const-string p0, "beauty_mode_version"

    .line 144
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private isHdrASDSupported(Landroid/content/Context;)Z
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/MakeUpMode;->getBeautyModeVersion(Landroid/content/Context;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .locals 3

    .line 168
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->autoWatermark()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/mode/CaptureInfo;-><init>(IZZ)V

    return-object v0
.end method

.method public createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
            "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
            ">;"
        }
    .end annotation

    .line 173
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/MakeUpMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public getDataFlowType()I
    .locals 2

    .line 61
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->algorithmMigrate()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    move p0, v0

    .line 64
    :goto_0
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;->algorithmSupport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;->algorithmSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x4

    .line 69
    :cond_2
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpMode;->mIsSupportMakeup:Z

    if-eqz v1, :cond_1

    const-string v1, "key_makeup_feature"

    .line 105
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "key_mu_slimbody"

    .line 108
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    const-string v1, "key_tran_plugin"

    .line 110
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_smile_detection"

    .line 111
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_distortion_correction"

    .line 112
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_fingerprint_capture"

    .line 113
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_mu_face_beauty"

    .line 114
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpMode;->mFaceAttributeSupport:Z

    if-eqz v1, :cond_2

    const-string v1, "key_gender_attribute_value"

    .line 116
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_2
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/MakeUpMode;->isHdrASDSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "key_asd"

    .line 119
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "key_hdr"

    .line 120
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_3
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFrontWideCameraId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_5

    const-string p0, "key_ai_group_photo"

    .line 125
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string p0, "key_edit_watermark"

    .line 127
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "key_super_flash"

    .line 128
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "key_camera_click_zoom"

    .line 129
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "key_auto_color_level"

    .line 130
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 132
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 3

    .line 89
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 90
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpMode;->mFaceAttributeSupport:Z

    if-nez p0, :cond_0

    return-object v0

    .line 93
    :cond_0
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeRestriction;->getFaceAttributeRelation()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p0

    const/4 v1, 0x1

    const-string v2, "on"

    .line 94
    invoke-virtual {p0, v2, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    .line 95
    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-object p0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 76
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getMakeUpReducePreviewSizeHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-super {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getLimitedPreviewSize(Ljava/util/List;I)Landroid/util/Size;

    move-result-object p1

    goto :goto_0

    .line 80
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getPreviewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object p1

    .line 83
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPreviewSize previewSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 0

    .line 50
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 53
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/utils/CustomConfigUtil;->getFaceAttributeSupport()Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpMode;->mFaceAttributeSupport:Z

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "is_support_makeup"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpMode;->mIsSupportMakeup:Z

    return-void
.end method

.method public isForceRecreateSession()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public needOpenPortraitCamera(Landroid/content/Context;)Z
    .locals 1

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "portrait_camera_for_beauty"

    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 1

    .line 161
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 162
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlimBodyEnable(Z)V

    .line 163
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFaceBeautyEndTime()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 154
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    .line 155
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlimBodyEnable(Z)V

    .line 156
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFaceBeautyStartTime()V

    return-void
.end method

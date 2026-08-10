.class public Lcom/transsion/camera/feature/slimbody/mode/SlimBodyMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "SlimBodyMode.java"


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

.field private mIsFaceBeautySlimbodySupport:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyMode;->mIsFaceBeautySlimbodySupport:Z

    .line 43
    iput-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyMode;->mFaceAttributeSupport:Z

    return-void
.end method

.method private getBeautyModeVersion(Landroid/content/Context;)I
    .locals 0

    const-string p0, "beauty_mode_version"

    .line 71
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private isHdrASDSupported(Landroid/content/Context;)Z
    .locals 0

    .line 173
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyMode;->getBeautyModeVersion(Landroid/content/Context;)I

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

    .line 164
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

    .line 169
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public getDataFlowType()I
    .locals 2

    .line 59
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->algorithmMigrate()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    move p0, v0

    .line 62
    :goto_0
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;->algorithmSupport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;->algorithmSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x4

    .line 67
    :cond_2
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "key_slimbody_info"

    .line 121
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_tran_plugin"

    .line 122
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_smile_detection"

    .line 123
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_distortion_correction"

    .line 124
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_multi_face_beauty"

    .line 125
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_fingerprint_capture"

    .line 126
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "key_activity_orientation"

    .line 127
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyMode;->mFaceAttributeSupport:Z

    if-eqz v1, :cond_0

    const-string v1, "key_gender_attribute_value"

    .line 129
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyMode;->isHdrASDSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "key_asd"

    .line 132
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "key_hdr"

    .line 133
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string p0, "key_edit_watermark"

    .line 135
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "key_super_flash"

    .line 136
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "key_auto_color_level"

    .line 137
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 139
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 5

    .line 92
    invoke-static {}, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentCameraId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v2, "0"

    .line 96
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 97
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getPeriscopeCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getOpticalZoomCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 99
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyMode;->getBeautyModeVersion(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2, v1}, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->getRelation(IZ)Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    const-string v2, "on"

    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 102
    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyMode;->mFaceAttributeSupport:Z

    if-eqz p0, :cond_1

    const-string p0, "key_face_detection"

    const-string v2, "gender_indentification"

    .line 103
    invoke-virtual {v1, p0, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_1
    invoke-static {v1, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-object v1

    .line 108
    :cond_2
    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyMode;->mFaceAttributeSupport:Z

    if-nez p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    .line 111
    :cond_3
    invoke-static {}, Lcom/transsion/camera/feature/slimbody/mode/SlimbodyModeRestriction;->getFaceAttributeRelation()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p0

    .line 112
    invoke-virtual {p0, v2, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    .line 113
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

    .line 78
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getSlimBodyReducePreviewSizeHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-super {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getLimitedPreviewSize(Ljava/util/List;I)Landroid/util/Size;

    move-result-object p1

    goto :goto_0

    .line 82
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getPreviewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object p1

    .line 85
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

    .line 51
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getBothSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyMode;->mIsFaceBeautySlimbodySupport:Z

    .line 52
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getFaceAttributeSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/mode/SlimBodyMode;->mFaceAttributeSupport:Z

    return-void
.end method

.method public isForceRecreateSession()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public pause()V
    .locals 1

    .line 157
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 158
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlimBodyEnable(Z)V

    .line 159
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFaceBeautyEndTime()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 150
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    .line 151
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlimBodyEnable(Z)V

    .line 152
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFaceBeautyStartTime()V

    return-void
.end method

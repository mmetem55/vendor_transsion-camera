.class public Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;
.super Lcom/transsion/camera/app/common/mode/FilterHookMode;
.source "ASDMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/FilterHookMode<",
        "Lcom/transsion/camera/feature/mode/autoscenedetection/ASDImageProcessor;",
        "Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final WIDE_CAMERA_PREVIEW_LIMIT:I = 0x1fa400


# instance fields
.field private mBackFakeCameraSupport:Z

.field protected mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

.field private mFrontFakeCameraSupport:Z

.field private mFullSizeSupport:Z

.field private mHighDefinitionMode:Z

.field private mNeedReplaceWide:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/FilterHookMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 105
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mHighDefinitionMode:Z

    .line 106
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mFullSizeSupport:Z

    .line 109
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mNeedReplaceWide:Z

    .line 113
    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 114
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    if-eqz p4, :cond_0

    .line 116
    invoke-virtual {p4}, Lcom/transsion/camera/app/common/provider/FeatureParameters;->screenFormType()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    .line 118
    :cond_0
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->readFakeNightSceneLensSupport(Landroid/content/res/Resources;)V

    return-void
.end method

.method private static convertZoom(Ljava/lang/String;)I
    .locals 0

    .line 211
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private currentModeSupportSAT(ZLandroid/content/Context;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 602
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportSat()Z

    move-result p0

    return p0
.end method

.method private getSwitchCameraId()Ljava/lang/String;
    .locals 6

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_super_definition"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSatCameraLogicId()Ljava/lang/String;

    move-result-object v2

    .line 192
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 193
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_camera_zoom"

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 194
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->convertZoom(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v5, v3}, Lcom/transsion/camera/app/common/CameraRepository;->getEquivalentZoom(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "off"

    .line 195
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 198
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackCameraWithZoom(I)Ljava/lang/String;

    move-result-object v2

    .line 200
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 203
    :goto_1
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getSwitchCameraId] mCurrentCameraId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " superDefinitionValue:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " switchCameraId:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1
.end method

.method private isFakeDualLens()Z
    .locals 2

    .line 573
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mBackFakeCameraSupport:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mFrontFakeCameraSupport:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    const-string v0, "1"

    .line 575
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFullSizeMode(Z)Z
    .locals 0

    .line 425
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mFullSizeSupport:Z

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isHDCameraIDSupport(Z)Z
    .locals 0

    if-nez p1, :cond_0

    .line 255
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionBackCamera()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    .line 256
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionFrontCamera()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMemNotEnough()Z
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "key_super_definition"

    .line 304
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "billion"

    .line 305
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mMemSize:I

    const/16 v0, 0xfa0

    if-ge p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isSuperDefinition200MEnabled()Z
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "key_super_definition"

    .line 287
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "billion"

    .line 288
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_picture_size"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 293
    :cond_0
    invoke-static {v0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    const v3, 0xbebc200

    if-lt v2, v3, :cond_1

    const/4 v1, 0x1

    .line 295
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSuperDefinition200MEnabled] size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", ret: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2
    return v1
.end method

.method private isSuperDefinitionEnabled()Z
    .locals 4

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "super definition value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_super_definition"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 282
    invoke-interface {p0, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "billion"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private needRestZoomValue(Ljava/lang/String;)Z
    .locals 4

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_camera_zoom"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v1

    .line 239
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v2

    .line 240
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result p0

    const/4 p1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 243
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    return p1
.end method

.method private needSuperDefinition(Landroid/content/Context;Z)Z
    .locals 2

    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mHighDefinitionMode:Z

    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050050

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mFullSizeSupport:Z

    .line 251
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isFullSizeMode(Z)Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mHighDefinitionMode:Z

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isHDCameraIDSupport(Z)Z

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

.method private readFakeNightSceneLensSupport(Landroid/content/res/Resources;)V
    .locals 2

    const v0, 0x7f0a001d

    .line 555
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 564
    :cond_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mFrontFakeCameraSupport:Z

    .line 565
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mBackFakeCameraSupport:Z

    goto :goto_0

    .line 561
    :cond_1
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mBackFakeCameraSupport:Z

    goto :goto_0

    .line 558
    :cond_2
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mFrontFakeCameraSupport:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->buildCaptureInfo()Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;

    move-result-object p0

    return-object p0
.end method

.method public buildCaptureInfo()Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;
    .locals 4

    .line 581
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_filter"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 582
    new-instance v1, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    .line 583
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->autoWatermark()Z

    move-result p0

    invoke-direct {v1, v2, v3, p0, v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;-><init>(IZZLjava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->createImageProcessor()Lcom/transsion/camera/feature/mode/autoscenedetection/ASDImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public createImageProcessor()Lcom/transsion/camera/feature/mode/autoscenedetection/ASDImageProcessor;
    .locals 1

    .line 588
    new-instance v0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method protected getContinuousShotNotSupportMessage()Ljava/lang/String;
    .locals 7

    .line 499
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 500
    :goto_0
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isFullSizeMode(Z)Z

    move-result v0

    const-string v3, "off"

    if-nez v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_super_definition"

    invoke-interface {v0, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mHighDefinitionMode:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 503
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isSuperDefinitionSupport()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 504
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Continuous shot is not support when superDefinition is not off: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 505
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsNeedAppend:Z

    .line 506
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const v0, 0x7f1002eb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_ai_detection"

    invoke-interface {v0, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 512
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "0"

    if-nez v4, :cond_4

    .line 513
    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 514
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Continuous shot is not support when AI is not off: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 515
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsNeedAppend:Z

    .line 516
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const v0, 0x7f100028

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a003e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne v0, v2, :cond_3

    move v1, v2

    :cond_3
    if-eqz v1, :cond_4

    .line 521
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_face_beauty"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 522
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 523
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Continuous shot is not support when faceBeautyValue is not off: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 524
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsNeedAppend:Z

    .line 525
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const v0, 0x7f10011b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 530
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 531
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v4, 0x7f100127

    const-string v6, "Continuous shot is not support when Flash is not off: "

    if-nez v1, :cond_5

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 532
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 533
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsNeedAppend:Z

    .line 534
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 537
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash_facade"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 538
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 539
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 540
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsNeedAppend:Z

    .line 541
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 544
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_filter"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "-1"

    .line 546
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 547
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Continuous shot is not support when filter is not off: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 548
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mIsNeedAppend:Z

    .line 549
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const v0, 0x7f100121

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const-string p0, ""

    return-object p0
.end method

.method public getDataFlowType()I
    .locals 2

    .line 152
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->algorithmMigrate()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    move p0, v0

    .line 155
    :goto_0
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/smiledetection/SmileAlgorithm;->algorithmSupport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 156
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/gesturedetection/GestureAlgorithm;->algorithmSupport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->algorithmSupport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/algorithm/barcodedetection/BarcodeAlgorithm;->algorithmSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x4

    .line 161
    :cond_2
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5

    .line 313
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v0

    .line 318
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "key_tran_plugin"

    .line 319
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "key_filter"

    .line 320
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "key_distortion_correction"

    .line 321
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "key_human_detection"

    .line 322
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "key_animal_eye_detection"

    .line 323
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "key_eye_detection"

    .line 324
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "key_asd"

    .line 325
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "key_hdr"

    .line 326
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "key_ai_detection"

    .line 327
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "key_ai_shutter"

    .line 328
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "key_night_3dnr"

    .line 329
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "key_activity_orientation"

    .line 330
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v0, v1, :cond_1

    const-string v4, "key_auto_macro_switch"

    .line 332
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v4, "key_super_night_light"

    .line 334
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v0, v1, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 335
    :goto_1
    invoke-direct {p0, p1, v4}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->needSuperDefinition(Landroid/content/Context;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "key_super_definition"

    .line 336
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v4, "key_super_resolution"

    .line 338
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "key_smile_detection"

    .line 339
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "key_gesture_detection"

    .line 340
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "key_voice_detection"

    .line 341
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "key_fingerprint_capture"

    .line 342
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "key_portraitmode_enhance"

    .line 343
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "key_asd_enhance"

    .line 344
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "key_night_hawk"

    .line 345
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isFakeDualLens()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "key_fake_asd_camera"

    .line 347
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string p0, "mild_beauty_type"

    .line 349
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-ne v0, v1, :cond_6

    const-string v0, "key_ai_group_photo"

    .line 351
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "key_horizon_switch_wide"

    .line 352
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    .line 353
    :cond_5
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isSouthAsia()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "key_mild_beauty"

    .line 354
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    if-nez v0, :cond_7

    const-string p0, "key_micro_pan_tilt_calibration"

    .line 357
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    const-string p0, "key_edit_watermark"

    .line 359
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "key_super_flash"

    .line 360
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0a003e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    if-ne p0, v1, :cond_8

    const-string p0, "key_face_beauty"

    .line 363
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string p0, "key_setting_mode_ultrazoom"

    .line 365
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "key_camera_click_zoom"

    .line 366
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f030015

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.transsion.camera.ui.setting.picturequality.PictureQualitySettingUIEntry"

    .line 371
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "key_picture_quality"

    .line 373
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string p0, "key_auto_color_level"

    .line 375
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "key_taint_detection"

    .line 376
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 379
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 1

    .line 261
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    if-nez v0, :cond_1

    .line 263
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isSuperDefinitionEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDModeRestriction;->getSuperDefinitionRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDModeRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    return-object v0
.end method

.method protected getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 0

    .line 618
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    .line 619
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f05008a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mNeedReplaceWide:Z

    .line 620
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p2

    .line 621
    iget-boolean p3, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mNeedReplaceWide:Z

    if-eqz p3, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 622
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 389
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getTargetRatio()D

    move-result-wide v0

    .line 390
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    .line 391
    invoke-interface {v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v3

    .line 393
    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFrontWideCameraId()Ljava/lang/String;

    move-result-object v3

    .line 395
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 396
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 399
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    .line 400
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v9

    int-to-double v9, v9

    div-double/2addr v7, v9

    sub-double/2addr v7, v0

    .line 401
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDumpToleranceSupport()Z

    move-result v9

    if-eqz v9, :cond_2

    const-wide v9, 0x3f947ae147ae147bL    # 0.02

    goto :goto_1

    :cond_2
    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    :goto_1
    cmpg-double v7, v7, v9

    if-gtz v7, :cond_1

    .line 402
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    mul-int/2addr v7, v8

    const v8, 0x1fa400

    if-gt v7, v8, :cond_1

    .line 403
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v9

    mul-int/2addr v7, v9

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-double v7, v7

    cmpg-double v9, v7, v2

    if-gtz v9, :cond_1

    move-object v4, v6

    move-wide v2, v7

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 414
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getPreviewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 415
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    if-lez p1, :cond_5

    move-object v4, p0

    goto :goto_2

    .line 419
    :cond_4
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getPreviewSize(Ljava/util/List;)Landroid/util/Size;

    move-result-object v4

    :cond_5
    :goto_2
    return-object v4
.end method

.method protected getShutterTypeSelftimerOff()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method protected initContinuousShot(Landroid/content/Context;)Lcom/transsion/camera/app/common/mode/CommonPhotoMode$IContinuousShot;
    .locals 3

    .line 171
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;

    const v1, 0x7f0a0064

    const v2, 0x7f0f0002

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Landroid/content/Context;II)V

    return-object v0
.end method

.method protected isContinuousShotSupport()Z
    .locals 7

    .line 430
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShotSupport:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContinuousShotSupport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mContinuousShotSupport:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 435
    :goto_0
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isFullSizeMode(Z)Z

    move-result v0

    const-string v3, "off"

    if-nez v0, :cond_2

    .line 436
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_super_definition"

    invoke-interface {v0, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mHighDefinitionMode:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 438
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isSuperDefinitionSupport()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 439
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Continuous shot is not support when superDefinition is not off: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 445
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_ai_detection"

    invoke-interface {v0, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "0"

    if-nez v4, :cond_5

    .line 447
    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 448
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Continuous shot is not support when AI is not off: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 452
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a003e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne v0, v2, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    .line 454
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_face_beauty"

    invoke-interface {v0, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 456
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Continuous shot is not support when FaceBeauty is not off: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 463
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_flash"

    invoke-interface {v0, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v6, "Continuous shot is not support when Flash is not off: "

    if-nez v4, :cond_6

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 465
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 469
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_flash_facade"

    invoke-interface {v0, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 471
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 475
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_filter"

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "-1"

    .line 477
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 478
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Continuous shot is not support when filter is not off: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 482
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 483
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v3

    .line 484
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v4

    .line 485
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 486
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {p0, v3, v4}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isInsensorZoomStatus(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_2

    .line 490
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getFrontWideCamera()Ljava/lang/String;

    move-result-object p0

    .line 491
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a

    return v1

    :cond_a
    return v2

    :cond_b
    :goto_2
    return v1
.end method

.method public isInsensorZoomStatus(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 610
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    .line 611
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05008a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->mNeedReplaceWide:Z

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 612
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->currentSettingSupportSAT(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, v2

    :cond_2
    :goto_1
    return v0
.end method

.method protected isShot2ShotEnable()Z
    .locals 2

    .line 270
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isSuperDefinition200MEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 273
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isMemNotEnough()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 276
    :cond_1
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isShot2ShotEnable()Z

    move-result p0

    return p0
.end method

.method protected isSuperDefinitionOn()Z
    .locals 1

    .line 629
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_super_definition"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    .line 630
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "billion"

    .line 631
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

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

.method public isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .locals 0

    .line 593
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->currentModeSupportSAT(ZLandroid/content/Context;)Z

    move-result p2

    .line 594
    invoke-virtual {p0, p1, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->currentSettingSupportSAT(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onCreatePhotoHelper()Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;
    .locals 0

    .line 166
    new-instance p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDModeHelper;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDModeHelper;-><init>()V

    return-object p0
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 219
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 221
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    const-string p2, "key_super_definition"

    .line 225
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 226
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->currentModeSupportSAT(ZLandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 227
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->getSwitchCameraId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 229
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->needRestZoomValue(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p2, p1, v0}, Lcom/transsion/camera/app/common/IAppUI;->switchSatCamera(Ljava/lang/String;Z)V

    .line 230
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public onSettingReady()V
    .locals 1

    .line 176
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 177
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 178
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    return-void
.end method

.method protected onShutterClickBefore(I)Z
    .locals 6

    .line 123
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClickBefore(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 127
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 128
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 129
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_dsp_lowlight_mode"

    const-string v5, "off"

    .line 128
    invoke-virtual {v1, v4, v5, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "on"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDMode;->isSuperDefinition200MEnabled()Z

    move-result v0

    if-nez v2, :cond_2

    if-eqz v0, :cond_3

    .line 134
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    :cond_3
    return p1
.end method

.method public pause()V
    .locals 3

    .line 142
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/FilterHookMode;->pause()V

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

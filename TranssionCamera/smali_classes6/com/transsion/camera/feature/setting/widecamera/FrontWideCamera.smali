.class public Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "FrontWideCamera.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mIsWideCamera:Z

.field private mNeedShow:Z

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mWideCameraParameterConfigure:Lcom/transsion/camera/feature/setting/widecamera/FrontWideCameraParametersConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;->mNeedShow:Z

    .line 26
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;->mIsWideCamera:Z

    .line 27
    new-instance v0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera$1;-><init>(Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 20
    sget-object v0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;->mNeedShow:Z

    return p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;->mNeedShow:Z

    return p1
.end method

.method private handleRestriction(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 117
    invoke-static {}, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCameraRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_0
    return-void
.end method

.method private restoreRestriction()V
    .locals 3

    .line 125
    invoke-static {}, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCameraRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    const-string v1, "off"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

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

    const-string p0, "front_wide_camera"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;->mWideCameraParameterConfigure:Lcom/transsion/camera/feature/setting/widecamera/FrontWideCameraParametersConfig;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCameraParametersConfig;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCameraParametersConfig;-><init>(Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;->mWideCameraParameterConfigure:Lcom/transsion/camera/feature/setting/widecamera/FrontWideCameraParametersConfig;

    .line 81
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;->mWideCameraParameterConfigure:Lcom/transsion/camera/feature/setting/widecamera/FrontWideCameraParametersConfig;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 86
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

    .line 112
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
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

    .line 49
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFrontWideCameraId()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;->mIsWideCamera:Z

    .line 51
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {p1}, Ljava/util/List;->clear()V

    const-string p2, "off"

    .line 55
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 58
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 70
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 71
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;->mIsWideCamera:Z

    if-eqz p1, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;->restoreRestriction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 101
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    sget-object v0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFrontWideCameraValueChanged] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    const-string v0, "on"

    .line 104
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;->mIsWideCamera:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;->mNeedShow:Z

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "front_wide_camera"

    invoke-virtual {v0, v3, p1, v2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 106
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;->mIsWideCamera:Z

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;->handleRestriction(Z)V

    :cond_1
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;->mIsWideCamera:Z

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;->handleRestriction(Z)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

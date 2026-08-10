.class public Lcom/transsion/camera/feature/setting/widecamera/WideCamera;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "WideCamera.java"


# static fields
.field protected static final DEFAULT_VALUE:Ljava/lang/String; = "off"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mIsMacroSupportZoom:Z

.field private mIsWideCamSupportVideoPortrait:Z

.field private mIsWideCamUISupport:Z

.field private mIsWideCamera:Z

.field private mIsWideSupportZoom:Z

.field private mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

.field private mNeedSaveZoomValue:Z

.field private mNeedShow:Z

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mVideoEnhanceYUVSupportWideCamera:Z

.field private mWideCameraParameterConfigure:Lcom/transsion/camera/feature/setting/widecamera/WideCameraParametersConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mNeedShow:Z

    .line 44
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamera:Z

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mNeedSaveZoomValue:Z

    .line 51
    new-instance v0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera$1;-><init>(Lcom/transsion/camera/feature/setting/widecamera/WideCamera;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 59
    new-instance v0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera$2;-><init>(Lcom/transsion/camera/feature/setting/widecamera/WideCamera;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/transsion/camera/feature/setting/widecamera/WideCamera;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mNeedSaveZoomValue:Z

    return p1
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 37
    sget-object v0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/widecamera/WideCamera;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mNeedShow:Z

    return p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/setting/widecamera/WideCamera;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mNeedShow:Z

    return p1
.end method

.method private addZoomRangeRelation(Lcom/transsion/camera/app/common/relation/Relation;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 233
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamUISupport:Z

    const-string v1, "value_zoom_support_wide_active"

    const-string v2, "key_camera_zoom"

    if-eqz v0, :cond_0

    .line 234
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideSupportZoom:Z

    if-nez p0, :cond_1

    const-string p0, "150,250"

    .line 235
    invoke-virtual {p1, v2, v1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "100,200"

    .line 238
    invoke-virtual {p1, v2, v1, p0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleRestriction(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideSupportZoom:Z

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamSupportVideoPortrait:Z

    invoke-static {p1, v0, v1, v2}, Lcom/transsion/camera/feature/setting/widecamera/WideCameraRestriction;->getWideCameraRelation(Ljava/lang/String;ZZZ)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 216
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsMacroSupportZoom:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->addZoomRangeRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    goto :goto_0

    .line 220
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideSupportZoom:Z

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamSupportVideoPortrait:Z

    const-string v2, "reset"

    invoke-static {v2, v0, p1, v1}, Lcom/transsion/camera/feature/setting/widecamera/WideCameraRestriction;->getWideCameraRelation(Ljava/lang/String;ZZZ)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    return-void

    .line 224
    :cond_2
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mVideoEnhanceYUVSupportWideCamera:Z

    if-eqz v0, :cond_3

    const-string v0, "key_video_enhance_yuv"

    .line 225
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    const-string v0, "key_video_super_night_yuv"

    .line 226
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 228
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method private isMacroSupportZoom(Landroid/content/Context;)Z
    .locals 1

    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "is_macro_support_zoom"

    .line 249
    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isWideCamSupportVideoPortrait(Landroid/content/Context;)Z
    .locals 1

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "is_widecam_support_video_portrait"

    .line 259
    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isWideCamUISupport(Landroid/content/Context;)Z
    .locals 1

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "is_widecam_item_ui_support_in_widecam"

    .line 244
    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isWideSupportZoom(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "zoom_style_type"

    .line 254
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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

.method public getCurrentModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "wide_camera"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mWideCameraParameterConfigure:Lcom/transsion/camera/feature/setting/widecamera/WideCameraParametersConfig;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/transsion/camera/feature/setting/widecamera/WideCameraParametersConfig;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/widecamera/WideCameraParametersConfig;-><init>(Lcom/transsion/camera/feature/setting/widecamera/WideCamera;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mWideCameraParameterConfigure:Lcom/transsion/camera/feature/setting/widecamera/WideCameraParametersConfig;

    .line 164
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mWideCameraParameterConfigure:Lcom/transsion/camera/feature/setting/widecamera/WideCameraParametersConfig;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 151
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

    .line 203
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 87
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->isMacroSupportZoom(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsMacroSupportZoom:Z

    .line 88
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->isWideSupportZoom(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideSupportZoom:Z

    .line 89
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->isWideCamUISupport(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamUISupport:Z

    .line 90
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->isWideCamSupportVideoPortrait(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamSupportVideoPortrait:Z

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0500bb

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mVideoEnhanceYUVSupportWideCamera:Z

    .line 92
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p2, "need_memory_zoom_value"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

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

    .line 116
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamera:Z

    .line 118
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {p1}, Ljava/util/List;->clear()V

    const-string p2, "off"

    .line 122
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 124
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public onCameraClosedBefore()V
    .locals 5

    .line 141
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->onCameraClosedBefore()V

    const-string v0, "off"

    .line 142
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mWideCameraParameterConfigure:Lcom/transsion/camera/feature/setting/widecamera/WideCameraParametersConfig;

    if-eqz p0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/widecamera/WideCameraParametersConfig;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method

.method public onModeClosed(Ljava/lang/String;)V
    .locals 0

    .line 136
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 7

    .line 183
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    sget-object v0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onWideCameraValueChanged] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    const-string v0, "on"

    .line 186
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamera:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mNeedShow:Z

    .line 187
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v2, "wide_camera"

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 188
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamera:Z

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->handleRestriction(Z)V

    :cond_1
    return-void
.end method

.method public onValueChangedOnly(Ljava/lang/String;)V
    .locals 7

    .line 194
    sget-object v0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChangedOnly], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValueOnly(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_0
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

    .line 170
    sget-object v0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideValues] headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 172
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const-string p1, "on"

    .line 173
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mNeedShow:Z

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v1, "wide_camera"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public pause()V
    .locals 5

    .line 103
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    .line 104
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mNeedSaveZoomValue:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "off"

    .line 105
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mWideCameraParameterConfigure:Lcom/transsion/camera/feature/setting/widecamera/WideCameraParametersConfig;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/widecamera/WideCameraParametersConfig;->sendSettingChangeRequest()V

    .line 111
    :cond_0
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mNeedSaveZoomValue:Z

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mIsWideCamera:Z

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->handleRestriction(Z)V

    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .locals 0

    .line 265
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 97
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "need_memory_zoom_value"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.class public Lcom/transsion/camera/feature/setting/picturesize/PictureSize;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "PictureSize.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/picturesize/PictureSize$PictureQualityChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBillionPixelSupport:Z

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mHighDefinitionModeSupport:Z

.field private mISRestoring:Z

.field private mIsDistortionNeedShow:Z

.field private mIsForce4_3:Z

.field private mIsPictureQualitySupport:Z

.field private mIsSupportFullSize:Z

.field private mIsSupportSuperDefinition:Z

.field private mIsSupport_1_1:Z

.field private mIsTimelapseForce16_9:Z

.field private mPictureQualityChangeListener:Lcom/transsion/camera/feature/setting/picturesize/PictureSize$PictureQualityChangeListener;

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mSettingChangeRequester:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsDistortionNeedShow:Z

    const/4 v1, 0x0

    .line 49
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mBillionPixelSupport:Z

    .line 50
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mHighDefinitionModeSupport:Z

    .line 51
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsSupportFullSize:Z

    .line 52
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsSupport_1_1:Z

    .line 53
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsForce4_3:Z

    .line 54
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsTimelapseForce16_9:Z

    .line 56
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mISRestoring:Z

    .line 57
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsPictureQualitySupport:Z

    .line 58
    new-instance v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize$PictureQualityChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize$PictureQualityChangeListener;-><init>(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;Lcom/transsion/camera/feature/setting/picturesize/PictureSize$1;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mPictureQualityChangeListener:Lcom/transsion/camera/feature/setting/picturesize/PictureSize$PictureQualityChangeListener;

    .line 379
    new-instance v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize$1;-><init>(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 415
    new-instance v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize$2;-><init>(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;)Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mISRestoring:Z

    return p0
.end method

.method static synthetic access$402(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mISRestoring:Z

    return p1
.end method

.method static synthetic access$500()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 43
    sget-object v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method private handlerRestriction(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    const-string p1, "4:3"

    .line 341
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string p1, "1:1"

    .line 342
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 345
    :cond_0
    invoke-static {}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    const-string p2, "head_value_full_screen"

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    goto :goto_1

    .line 343
    :cond_1
    :goto_0
    invoke-static {}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    const-string p2, "head_value_not_full_screen"

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_2

    .line 348
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_2
    return-void
.end method

.method private isDistortionNeedShow(Landroid/content/Context;)Z
    .locals 1

    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "is_distortion_correction_need_show"

    .line 334
    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isWideCameraOn()Z
    .locals 2

    .line 354
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wide_camera"

    .line 356
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setValueInStore(Ljava/util/List;Ljava/lang/String;)V
    .locals 11
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

    .line 137
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 138
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getDualCamCalibrationSize()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 139
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 142
    :cond_0
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsTimelapseForce16_9:Z

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    if-eqz v2, :cond_5

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 145
    invoke-static {v5}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v6

    .line 146
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-double v9, v6

    div-double/2addr v7, v9

    const-wide v9, 0x3ffc71c720000000L    # 1.7777777910232544

    sub-double/2addr v7, v9

    .line 147
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v6, v6, v3

    if-gtz v6, :cond_1

    .line 148
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 153
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v5, 0x1

    .line 154
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    const-string v6, "x"

    .line 155
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 156
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 157
    aget-object v7, v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ge v7, v6, :cond_3

    .line 158
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 162
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 165
    :cond_5
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->getMaxSensorSize()Landroid/util/Size;

    move-result-object v2

    iget-boolean v5, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsSupport_1_1:Z

    invoke-static {p1, v0, v2, v5}, Lcom/transsion/camera/utils/PictureSizeHelper;->filterValuesOnShown(Ljava/util/List;Ljava/lang/String;Landroid/util/Size;Z)Ljava/util/List;

    move-result-object v0

    .line 167
    :goto_2
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsForce4_3:Z

    if-eqz p1, :cond_8

    .line 168
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 170
    invoke-static {v2}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v5

    .line 171
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-double v8, v5

    div-double/2addr v6, v8

    const-wide v8, 0x3ff5555560000000L    # 1.3333333730697632

    sub-double/2addr v6, v8

    .line 172
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v5, v5, v3

    if-gtz v5, :cond_6

    .line 173
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    move-object v0, p1

    .line 178
    :cond_8
    sget-object p1, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setValueInStore], filterValuesOnShown:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", valueInStore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 181
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    .line 182
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 183
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 184
    invoke-static {v2}, Lcom/transsion/camera/utils/PictureSizeHelper;->getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "4:3"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object p1, v2

    .line 189
    :cond_a
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 192
    :cond_b
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsTimelapseForce16_9:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz p1, :cond_c

    .line 194
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p1

    .line 195
    array-length v0, p1

    move v2, v1

    :goto_4
    if-ge v2, v0, :cond_c

    aget-object v3, p1, v2

    .line 196
    iget-object v4, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v4, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 197
    iget-object v4, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 200
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 203
    :cond_c
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 204
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->updateThumbnailSize(Ljava/lang/String;)V

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

    const-string p0, "key_picture_size"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;-><init>(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    .line 274
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 376
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getRatioInStore()Ljava/lang/String;
    .locals 3

    .line 395
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsForce4_3:Z

    const-string v1, "4:3"

    if-eqz v0, :cond_0

    return-object v1

    .line 397
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsTimelapseForce16_9:Z

    if-eqz v0, :cond_1

    const-string p0, "16:9"

    return-object p0

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string v2, "key_picture_ratio"

    invoke-virtual {v0, v2, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 261
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getSuperDefinitionValueInDataStore()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_super_definition"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    .line 330
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->isDistortionNeedShow(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsDistortionNeedShow:Z

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "billion_pixel_support"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mBillionPixelSupport:Z

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "high_definition_mode"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mHighDefinitionModeSupport:Z

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "is_support_full_size"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsSupportFullSize:Z

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "is_support_1_1"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsSupport_1_1:Z

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "camera"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 71
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mPictureQualityChangeListener:Lcom/transsion/camera/feature/setting/picturesize/PictureSize$PictureQualityChangeListener;

    const-string p3, "key_picture_quality"

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p2, "key_restore_settings_notify_ui"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
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

    .line 83
    sget-object p2, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onValueInitialized], supportedPictureSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->getRatioInStore()Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsTimelapseForce16_9:Z

    const-string v2, "4:3"

    const-string v3, "16:9"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    :goto_0
    move-object v0, v3

    goto :goto_1

    .line 88
    :cond_0
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsSupport_1_1:Z

    if-eqz v1, :cond_3

    .line 89
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->getMaxSensorSize()Landroid/util/Size;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/PictureSizeHelper;->isMaxSensorSize16_9(Landroid/util/Size;)Z

    move-result v1

    const-string v5, "key_picture_ratio"

    if-nez v1, :cond_1

    .line 90
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v2, v1, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v2

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 93
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v3, v1, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 96
    :cond_2
    invoke-static {v0}, Lcom/transsion/camera/utils/PictureSizeHelper;->isFullScreenRatioChanged(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    invoke-static {}, Lcom/transsion/camera/utils/PictureSizeHelper;->getFullScreenRatio()Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v0, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ratio in store "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 105
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 106
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "still can\'t find target pictureSize,find from entry values. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 107
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 112
    :cond_5
    invoke-static {v1}, Lcom/transsion/camera/utils/PictureSizeHelper;->getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 113
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 114
    invoke-static {v2}, Lcom/transsion/camera/utils/PictureSizeHelper;->getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v1, v2

    .line 120
    :cond_7
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->setValueInStore(Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 109
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "can\'t find a proper preview size."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isBillionPixelSupport()Z
    .locals 0

    .line 365
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mBillionPixelSupport:Z

    return p0
.end method

.method public isCameraFacingBack()Z
    .locals 0

    .line 360
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    .line 361
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isHighDefinitionModeSupport()Z
    .locals 0

    .line 369
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mHighDefinitionModeSupport:Z

    return p0
.end method

.method public isPictureQualitySupport()Z
    .locals 0

    .line 133
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsPictureQualitySupport:Z

    return p0
.end method

.method public isRestoring()Z
    .locals 0

    .line 372
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mISRestoring:Z

    return p0
.end method

.method public isSupportFullSize()Z
    .locals 1

    .line 427
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->screenPocket()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->isCameraFacingBack()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsSupportFullSize:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportSuperDefinition()Z
    .locals 0

    .line 129
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsSupportSuperDefinition:Z

    return p0
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 316
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    const-string p2, "key_super_definition"

    .line 317
    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsSupportSuperDefinition:Z

    const-string p2, "key_picture_quality"

    .line 318
    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsPictureQualitySupport:Z

    const-string p2, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    .line 319
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsForce4_3:Z

    const-string p2, "com.transsion.camera.feature.mode.timelapsemode.TimelapsePhotoModeEntry"

    .line 320
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsTimelapseForce16_9:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 7

    .line 279
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 280
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->updateThumbnailSize(Ljava/lang/String;)V

    .line 283
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsTimelapseForce16_9:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_0

    .line 285
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    .line 286
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 287
    iget-object v5, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v5, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 288
    iget-object v5, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p1, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 291
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_1

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, p1, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 297
    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/transsion/camera/utils/PictureSizeHelper;->getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsDistortionNeedShow:Z

    if-nez v2, :cond_2

    .line 299
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->isWideCameraOn()Z

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->handlerRestriction(ZLjava/lang/String;)V

    .line 301
    :cond_2
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsTimelapseForce16_9:Z

    if-eqz v2, :cond_3

    goto :goto_2

    .line 304
    :cond_3
    iget-object v2, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_picture_ratio"

    invoke-virtual {v2, v4, v0, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 306
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->sendSettingChangeRequest()V

    .line 308
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_4

    const-string v0, "key_picture_size_state"

    .line 309
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
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

    .line 230
    sget-object v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideValues] + headerKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " currentValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v1, "key_restore_settings"

    .line 231
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, "need to override default value"

    .line 232
    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 235
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p3

    .line 237
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 238
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 239
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->updateThumbnailSize(Ljava/lang/String;)V

    .line 241
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[overrideValues] - value: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " entryValues: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 325
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 2

    .line 246
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsDistortionNeedShow:Z

    if-eqz v0, :cond_0

    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/PictureSizeHelper;->getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->isWideCameraOn()Z

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->handlerRestriction(ZLjava/lang/String;)V

    return-void
.end method

.method public queryEntryValues(Ljava/lang/String;)Ljava/util/List;
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

    .line 431
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryEntryValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public reConfigSupportList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 209
    sget-object v0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[reConfigSupportList], supportedPictureSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_picture_ratio"

    const-string v4, "4:3"

    invoke-virtual {v1, v3, v4, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsForce4_3:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mIsTimelapseForce16_9:Z

    if-eqz v2, :cond_1

    const-string v4, "16:9"

    goto :goto_0

    :cond_1
    move-object v4, v1

    .line 217
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ratio in store "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 218
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 219
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 220
    invoke-static {v2}, Lcom/transsion/camera/utils/PictureSizeHelper;->getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v2

    .line 225
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->setValueInStore(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public restoreToSupportedPlatformValue()V
    .locals 1

    .line 255
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->restoreToSupportedPlatformValue()V

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSizeParametersConfig;->updateThumbnailSize(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mPictureQualityChangeListener:Lcom/transsion/camera/feature/setting/picturesize/PictureSize$PictureQualityChangeListener;

    const-string v2, "key_picture_quality"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_restore_settings_notify_ui"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

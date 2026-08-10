.class public Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "FaceAttribute.java"


# static fields
.field static final DEFAULT_VALUE:Ljava/lang/String; = "1"

.field private static final SETTING_KEY:Ljava/lang/String; = "key_gender_attribute_value"

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field static final VALUE_MAN:Ljava/lang/String; = "1"

.field static final VALUE_WOMAN:Ljava/lang/String; = "2"


# instance fields
.field private mFaceAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

.field private mFaceAttributeParameterConfigure:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;

.field private mIsModeSupport:Z

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mIsModeSupport:Z

    .line 36
    new-instance v0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$1;-><init>(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mFaceAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

    .line 59
    new-instance v0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$2;-><init>(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;)Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mFaceAttributeParameterConfigure:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->requestFaceAttribute()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;)Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mFaceAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

    return-object p0
.end method

.method private requestFaceAttribute()V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mFaceAttributeParameterConfigure:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;

    if-eqz p0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->changeCommand()V

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

    const-string p0, "key_gender_attribute_value"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mFaceAttributeParameterConfigure:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mFaceAttributeParameterConfigure:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;

    .line 126
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->changeCommand()V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mFaceAttributeParameterConfigure:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mFaceAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->setFaceAttribute(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mFaceAttributeParameterConfigure:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 114
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

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

    .line 143
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 78
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    const-string p2, "1"

    .line 80
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p3, "2"

    .line 81
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
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

    .line 99
    sget-object v0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initializeValue], platformSupportedValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " default value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 105
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, p2, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 109
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[initializeValue], mDataStore: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isModeSupport()Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mIsModeSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 93
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mIsModeSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mIsModeSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 134
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->mFaceAttributeParameterConfigure:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;

    if-eqz p0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

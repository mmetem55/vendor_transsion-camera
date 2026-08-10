.class public Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "FaceBeautySetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting$StatusChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDefaultOption:I

.field private mFaceBeautyParameterConfigure:Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyParamConfig;

.field private mIsFaceBeautySlimbodySupport:Z

.field private mIsModeSupport:Z

.field private mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mStatusChangeListener:Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting$StatusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->mIsModeSupport:Z

    .line 25
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->mIsFaceBeautySlimbodySupport:Z

    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->mDefaultOption:I

    .line 28
    new-instance v0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting$StatusChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting$1;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->mStatusChangeListener:Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting$StatusChangeListener;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 19
    sget-object v0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object p0
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->mStatusChangeListener:Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->mStatusChangeListener:Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

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

.method public getDefaultOption()Ljava/lang/String;
    .locals 0

    .line 63
    iget p0, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->mDefaultOption:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFaceBeautySlimbodySupport()Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->mIsFaceBeautySlimbodySupport:Z

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_slimbody_face_beauty"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->mFaceBeautyParameterConfigure:Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyParamConfig;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyParamConfig;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyParamConfig;-><init>(Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->mFaceBeautyParameterConfigure:Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyParamConfig;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->mFaceBeautyParameterConfigure:Lcom/transsion/camera/feature/slimbody/setting/FaceBeautyParamConfig;

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object v0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 86
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

    .line 124
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 48
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getBothSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->mIsFaceBeautySlimbodySupport:Z

    .line 49
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getDefaultOption()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->mDefaultOption:I

    .line 50
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->registerKeyToMonitor(Ljava/lang/String;)V

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

    if-eqz p1, :cond_1

    .line 68
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 74
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isModeSupport()Z
    .locals 0

    .line 140
    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->mIsModeSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 135
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 136
    iput-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->mIsModeSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->mIsModeSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 114
    sget-object v0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method

.method public queryValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string v1, "off"

    invoke-virtual {v0, p1, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/setting/FaceBeautySetting;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method

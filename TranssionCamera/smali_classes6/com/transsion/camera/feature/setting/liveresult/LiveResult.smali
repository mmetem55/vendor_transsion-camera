.class public Lcom/transsion/camera/feature/setting/liveresult/LiveResult;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "LiveResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/liveresult/LiveResult$ParametersConfigure;
    }
.end annotation


# static fields
.field static final DEFAULT_VALUE:Ljava/lang/String; = "off"

.field public static final SETTING_KEY:Ljava/lang/String; = "key_live_result"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mLiveResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private final mParametersConfigure:Lcom/transsion/camera/feature/setting/liveresult/LiveResult$ParametersConfigure;

.field private final mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# direct methods
.method public static synthetic $r8$lambda$m-0gKf_1dOGwYFRkp3SdmtgQfiQ(Lcom/transsion/camera/feature/setting/liveresult/LiveResult;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->lambda$new$0(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 33
    new-instance v0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$ParametersConfigure;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$ParametersConfigure;-><init>(Lcom/transsion/camera/feature/setting/liveresult/LiveResult;Lcom/transsion/camera/feature/setting/liveresult/LiveResult$1;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->mParametersConfigure:Lcom/transsion/camera/feature/setting/liveresult/LiveResult$ParametersConfigure;

    .line 35
    new-instance v0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/liveresult/LiveResult;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->mLiveResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    .line 107
    new-instance v0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$1;-><init>(Lcom/transsion/camera/feature/setting/liveresult/LiveResult;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 29
    sget-object v0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/liveresult/LiveResult;)Lcom/transsion/camera/feature/setting/liveresult/LiveResult$ParametersConfigure;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->mParametersConfigure:Lcom/transsion/camera/feature/setting/liveresult/LiveResult$ParametersConfigure;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/liveresult/LiveResult;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/liveresult/LiveResult;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/setting/liveresult/LiveResult;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/setting/liveresult/LiveResult;)Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->mLiveResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 4

    .line 37
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    .line 38
    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 41
    invoke-static {p1, p2, p3}, Lcom/transsion/camera/feature/setting/liveresult/Result;->buildFrom(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Lcom/transsion/camera/feature/setting/liveresult/Result;

    move-result-object p1

    const/4 p2, 0x0

    .line 42
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

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

    const-string p0, "key_live_result"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->mParametersConfigure:Lcom/transsion/camera/feature/setting/liveresult/LiveResult$ParametersConfigure;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 68
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getStoreScope()Ljava/lang/String;
    .locals 0

    .line 78
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

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

    .line 99
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

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

    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 61
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 3

    .line 88
    sget-object v0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->mParametersConfigure:Lcom/transsion/camera/feature/setting/liveresult/LiveResult$ParametersConfigure;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$ParametersConfigure;->sendSettingChangeRequest()V

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

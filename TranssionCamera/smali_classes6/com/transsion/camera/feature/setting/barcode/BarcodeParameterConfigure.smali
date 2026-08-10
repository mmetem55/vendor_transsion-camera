.class public Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;
.super Ljava/lang/Object;
.source "BarcodeParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mBarcode:Lcom/transsion/camera/feature/setting/barcode/Barcode;

.field private mBarcodeSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BarcodePara"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/barcode/Barcode;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;->mBarcode:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    .line 29
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 3

    .line 56
    sget-object v0, Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configCommand --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;->mBarcode:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->isModeSupport()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;->mBarcode:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;->mBarcode:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;->mBarcode:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;->mBarcode:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    :goto_0
    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    .line 66
    sget-object v0, Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "sendSettingChangeRequest"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;->mBarcode:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 6

    .line 34
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;->mBarcode:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->isModeSupport()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "off"

    .line 37
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;->mBarcode:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v1

    .line 39
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;->mBarcode:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v2

    .line 40
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;->mBarcode:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->isInsensorZoomStatus()Z

    move-result v3

    .line 41
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;->mBarcode:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    :cond_0
    const-string v1, "on"

    .line 42
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;->mBarcode:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.class public Lcom/transsion/camera/feature/setting/bv/BrightnessValueParameterConfig;
.super Ljava/lang/Object;
.source "BrightnessValueParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBrightnessValue:Lcom/transsion/camera/feature/setting/bv/BrightnessValue;

.field private mCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/bv/BrightnessValueParameterConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/bv/BrightnessValueParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/bv/BrightnessValue;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/bv/BrightnessValueParameterConfig;->mBrightnessValue:Lcom/transsion/camera/feature/setting/bv/BrightnessValue;

    .line 24
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/bv/BrightnessValueParameterConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/bv/BrightnessValueParameterConfig;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->setCameraBVCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/bv/BrightnessValueParameterConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/bv/BrightnessValueParameterConfig;->mBrightnessValue:Lcom/transsion/camera/feature/setting/bv/BrightnessValue;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/bv/BrightnessValue;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraBVCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/bv/BrightnessValueParameterConfig;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 1

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "value_dark"

    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "value_light"

    .line 36
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/bv/BrightnessValueParameterConfig;->mBrightnessValue:Lcom/transsion/camera/feature/setting/bv/BrightnessValue;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/bv/BrightnessValue;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

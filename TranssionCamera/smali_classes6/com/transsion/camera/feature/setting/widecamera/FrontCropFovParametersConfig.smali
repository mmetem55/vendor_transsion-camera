.class public Lcom/transsion/camera/feature/setting/widecamera/FrontCropFovParametersConfig;
.super Ljava/lang/Object;
.source "FrontCropFovParametersConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# instance fields
.field private mFrontCropFov:Lcom/transsion/camera/feature/setting/widecamera/FrontCropFov;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/widecamera/FrontCropFov;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontCropFovParametersConfig;->mFrontCropFov:Lcom/transsion/camera/feature/setting/widecamera/FrontCropFov;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 1

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "on"

    .line 27
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "off"

    .line 28
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontCropFovParametersConfig;->mFrontCropFov:Lcom/transsion/camera/feature/setting/widecamera/FrontCropFov;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/widecamera/FrontCropFov;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

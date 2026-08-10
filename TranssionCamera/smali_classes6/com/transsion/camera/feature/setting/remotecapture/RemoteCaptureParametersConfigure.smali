.class public Lcom/transsion/camera/feature/setting/remotecapture/RemoteCaptureParametersConfigure;
.super Ljava/lang/Object;
.source "RemoteCaptureParametersConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# instance fields
.field private mRemoteCapture:Lcom/transsion/camera/feature/setting/remotecapture/RemoteCapture;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/remotecapture/RemoteCapture;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/remotecapture/RemoteCaptureParametersConfigure;->mRemoteCapture:Lcom/transsion/camera/feature/setting/remotecapture/RemoteCapture;

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

    .line 22
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/remotecapture/RemoteCaptureParametersConfigure;->mRemoteCapture:Lcom/transsion/camera/feature/setting/remotecapture/RemoteCapture;

    if-eqz p1, :cond_0

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "on"

    .line 24
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "off"

    .line 25
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/remotecapture/RemoteCaptureParametersConfigure;->mRemoteCapture:Lcom/transsion/camera/feature/setting/remotecapture/RemoteCapture;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/remotecapture/RemoteCapture;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

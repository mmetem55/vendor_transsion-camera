.class public Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCaptureParameterConfig;
.super Ljava/lang/Object;
.source "FingerprintCaptureParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field protected static final DEFAULT_VALUE:Ljava/lang/String; = "off"


# instance fields
.field private final mFingerprintCapture:Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCapture;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCapture;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCaptureParameterConfig;->mFingerprintCapture:Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCapture;

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

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "on"

    .line 38
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "off"

    .line 39
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCaptureParameterConfig;->mFingerprintCapture:Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCapture;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/fingerprintcapture/FingerprintCapture;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

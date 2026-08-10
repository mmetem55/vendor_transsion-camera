.class public Lcom/transsion/camera/feature/setting/videoduration/VideoDurationParameterConfigure;
.super Ljava/lang/Object;
.source "VideoDurationParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field protected static final DEFAULT_VALUE:Ljava/lang/String; = "15"


# instance fields
.field private final mVideoDuration:Lcom/transsion/camera/feature/setting/videoduration/VideoDuration;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/videoduration/VideoDuration;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoduration/VideoDurationParameterConfigure;->mVideoDuration:Lcom/transsion/camera/feature/setting/videoduration/VideoDuration;

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

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "15"

    .line 40
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoduration/VideoDurationParameterConfigure;->mVideoDuration:Lcom/transsion/camera/feature/setting/videoduration/VideoDuration;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/videoduration/VideoDuration;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

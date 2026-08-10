.class public Lcom/transsion/camera/feature/setting/timelapseduration/TimeLapseDurationParameterConfigure;
.super Ljava/lang/Object;
.source "TimeLapseDurationParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final DEFAULT_VALUE:Ljava/lang/String; = "0"


# instance fields
.field private final mTimeLapseDuration:Lcom/transsion/camera/feature/setting/timelapseduration/TimeLapseDuration;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/timelapseduration/TimeLapseDuration;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/timelapseduration/TimeLapseDurationParameterConfigure;->mTimeLapseDuration:Lcom/transsion/camera/feature/setting/timelapseduration/TimeLapseDuration;

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
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/timelapseduration/TimeLapseDurationParameterConfigure;->mTimeLapseDuration:Lcom/transsion/camera/feature/setting/timelapseduration/TimeLapseDuration;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/timelapseduration/TimeLapseDuration;->getSupportedList()Ljava/util/List;

    move-result-object p1

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/timelapseduration/TimeLapseDurationParameterConfigure;->mTimeLapseDuration:Lcom/transsion/camera/feature/setting/timelapseduration/TimeLapseDuration;

    const-string v0, "0"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/timelapseduration/TimeLapseDuration;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.class public Lcom/transsion/camera/feature/setting/timelapserate/TimeLapseRateParameterConfigure;
.super Ljava/lang/Object;
.source "TimeLapseRateParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mTimeLapseRate:Lcom/transsion/camera/feature/setting/timelapserate/TimeLapseRate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/timelapserate/TimeLapseRateParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/timelapserate/TimeLapseRateParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/timelapserate/TimeLapseRate;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/timelapserate/TimeLapseRateParameterConfigure;->mTimeLapseRate:Lcom/transsion/camera/feature/setting/timelapserate/TimeLapseRate;

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
    .locals 4

    .line 29
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/timelapserate/TimeLapseRateParameterConfigure;->mTimeLapseRate:Lcom/transsion/camera/feature/setting/timelapserate/TimeLapseRate;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/timelapserate/TimeLapseRate;->getSupportedList()Ljava/util/List;

    move-result-object p1

    .line 30
    sget-object v0, Lcom/transsion/camera/feature/setting/timelapserate/TimeLapseRateParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraCapabilities supportListValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", defaultValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/timelapserate/TimeLapseRateParameterConfigure;->mTimeLapseRate:Lcom/transsion/camera/feature/setting/timelapserate/TimeLapseRate;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/timelapserate/TimeLapseRate;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

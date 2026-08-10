.class public Lcom/transsion/camera/feature/setting/meteringmode/MeteringModeParameterConfigure;
.super Ljava/lang/Object;
.source "MeteringModeParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mMeteringMode:Lcom/transsion/camera/feature/setting/meteringmode/MeteringMode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MeteringModeParameterC"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/meteringmode/MeteringModeParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/meteringmode/MeteringMode;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/meteringmode/MeteringModeParameterConfigure;->mMeteringMode:Lcom/transsion/camera/feature/setting/meteringmode/MeteringMode;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/meteringmode/MeteringModeParameterConfigure;->mMeteringMode:Lcom/transsion/camera/feature/setting/meteringmode/MeteringMode;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    if-nez v0, :cond_0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/meteringmode/MeteringModeParameterConfigure;->mMeteringMode:Lcom/transsion/camera/feature/setting/meteringmode/MeteringMode;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    move-object v0, v1

    .line 51
    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/setting/meteringmode/MeteringModeParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParameters, currentValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setMeteringMode(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 2

    .line 29
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedMeteringModes()Ljava/util/List;

    move-result-object p1

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "auto"

    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 34
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/meteringmode/MeteringModeParameterConfigure;->mMeteringMode:Lcom/transsion/camera/feature/setting/meteringmode/MeteringMode;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/setting/meteringmode/MeteringMode;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 37
    sget-object p0, Lcom/transsion/camera/feature/setting/meteringmode/MeteringModeParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MeteringMode Capabilities supported: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

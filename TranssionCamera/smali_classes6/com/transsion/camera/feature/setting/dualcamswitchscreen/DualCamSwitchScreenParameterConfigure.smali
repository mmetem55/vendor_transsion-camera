.class public Lcom/transsion/camera/feature/setting/dualcamswitchscreen/DualCamSwitchScreenParameterConfigure;
.super Ljava/lang/Object;
.source "DualCamSwitchScreenParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mDualCamSwitchScreen:Lcom/transsion/camera/feature/setting/dualcamswitchscreen/DualCamSwitchScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/dualcamswitchscreen/DualCamSwitchScreenParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/dualcamswitchscreen/DualCamSwitchScreenParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/dualcamswitchscreen/DualCamSwitchScreen;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/dualcamswitchscreen/DualCamSwitchScreenParameterConfigure;->mDualCamSwitchScreen:Lcom/transsion/camera/feature/setting/dualcamswitchscreen/DualCamSwitchScreen;

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

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "down_full"

    .line 32
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "up_small"

    .line 33
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 37
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    sget-object v1, Lcom/transsion/camera/feature/setting/dualcamswitchscreen/DualCamSwitchScreenParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraCapabilities supportListValues: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", defaultValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/dualcamswitchscreen/DualCamSwitchScreenParameterConfigure;->mDualCamSwitchScreen:Lcom/transsion/camera/feature/setting/dualcamswitchscreen/DualCamSwitchScreen;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/dualcamswitchscreen/DualCamSwitchScreen;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

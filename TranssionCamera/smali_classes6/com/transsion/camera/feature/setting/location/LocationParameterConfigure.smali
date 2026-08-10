.class public Lcom/transsion/camera/feature/setting/location/LocationParameterConfigure;
.super Ljava/lang/Object;
.source "LocationParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mLocation:Lcom/transsion/camera/feature/setting/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/location/LocationParameterConfigure;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/location/LocationParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/location/Location;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/location/LocationParameterConfigure;->mLocation:Lcom/transsion/camera/feature/setting/location/Location;

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

    .line 28
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/location/LocationParameterConfigure;->mLocation:Lcom/transsion/camera/feature/setting/location/Location;

    if-eqz p1, :cond_0

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "on"

    .line 30
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "off"

    .line 31
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/location/LocationParameterConfigure;->mLocation:Lcom/transsion/camera/feature/setting/location/Location;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/location/Location;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

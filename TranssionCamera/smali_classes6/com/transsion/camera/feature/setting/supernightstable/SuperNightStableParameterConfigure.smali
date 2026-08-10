.class public Lcom/transsion/camera/feature/setting/supernightstable/SuperNightStableParameterConfigure;
.super Ljava/lang/Object;
.source "SuperNightStableParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# instance fields
.field private final mSuperNightStable:Lcom/transsion/camera/feature/setting/supernightstable/SuperNightStable;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/supernightstable/SuperNightStable;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/supernightstable/SuperNightStableParameterConfigure;->mSuperNightStable:Lcom/transsion/camera/feature/setting/supernightstable/SuperNightStable;

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
    .locals 3

    .line 29
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportedStableSuperNightMode()Z

    move-result p1

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "off"

    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 32
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/supernightstable/SuperNightStableParameterConfigure;->mSuperNightStable:Lcom/transsion/camera/feature/setting/supernightstable/SuperNightStable;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    const-string v2, "0"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "on"

    .line 33
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/supernightstable/SuperNightStableParameterConfigure;->mSuperNightStable:Lcom/transsion/camera/feature/setting/supernightstable/SuperNightStable;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/setting/supernightstable/SuperNightStable;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

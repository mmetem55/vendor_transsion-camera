.class public Lcom/transsion/camera/feature/setting/selftimer/SelfTimerParameterConfigure;
.super Ljava/lang/Object;
.source "SelfTimerParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# instance fields
.field private mSelfTimer:Lcom/transsion/camera/feature/setting/selftimer/SelfTimer;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/selftimer/SelfTimer;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/selftimer/SelfTimerParameterConfigure;->mSelfTimer:Lcom/transsion/camera/feature/setting/selftimer/SelfTimer;

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
    .locals 2

    .line 22
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/selftimer/SelfTimerParameterConfigure;->mSelfTimer:Lcom/transsion/camera/feature/setting/selftimer/SelfTimer;

    if-eqz p1, :cond_0

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "off"

    .line 24
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "3"

    .line 25
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "5"

    .line 26
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "10"

    .line 27
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/selftimer/SelfTimerParameterConfigure;->mSelfTimer:Lcom/transsion/camera/feature/setting/selftimer/SelfTimer;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/selftimer/SelfTimer;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

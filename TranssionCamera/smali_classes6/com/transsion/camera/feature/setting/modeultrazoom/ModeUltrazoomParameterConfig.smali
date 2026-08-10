.class public Lcom/transsion/camera/feature/setting/modeultrazoom/ModeUltrazoomParameterConfig;
.super Ljava/lang/Object;
.source "ModeUltrazoomParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mSetting:Lcom/transsion/camera/feature/setting/modeultrazoom/ModeUltrazoomSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/modeultrazoom/ModeUltrazoomParameterConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/modeultrazoom/ModeUltrazoomParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/modeultrazoom/ModeUltrazoomSetting;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/modeultrazoom/ModeUltrazoomParameterConfig;->mSetting:Lcom/transsion/camera/feature/setting/modeultrazoom/ModeUltrazoomSetting;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/modeultrazoom/ModeUltrazoomParameterConfig;->mSetting:Lcom/transsion/camera/feature/setting/modeultrazoom/ModeUltrazoomSetting;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/modeultrazoom/ModeUltrazoomSetting;->isModeSupport()Z

    .line 41
    sget-object p0, Lcom/transsion/camera/feature/setting/modeultrazoom/ModeUltrazoomParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "configParameters, ModeUltrazoom value:false"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 1

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "true"

    .line 30
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "false"

    .line 31
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/modeultrazoom/ModeUltrazoomParameterConfig;->mSetting:Lcom/transsion/camera/feature/setting/modeultrazoom/ModeUltrazoomSetting;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/modeultrazoom/ModeUltrazoomSetting;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

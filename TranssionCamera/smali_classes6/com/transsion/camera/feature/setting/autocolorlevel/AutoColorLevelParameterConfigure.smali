.class public Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelParameterConfigure;
.super Ljava/lang/Object;
.source "AutoColorLevelParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAutoColorLevel:Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;

.field private final mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelParameterConfigure;->mAutoColorLevel:Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;

    .line 40
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelParameterConfigure;->mAutoColorLevel:Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->filterOff()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelParameterConfigure;->mAutoColorLevel:Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;

    .line 62
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->superDefinitionOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelParameterConfigure;->mAutoColorLevel:Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 64
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setColorLevel(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "off"

    .line 68
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setColorLevel(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    .line 45
    sget-object v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "sendSettingChangeRequest"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelParameterConfigure;->mAutoColorLevel:Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 2

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "off"

    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->colorLevelSupport()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "on"

    .line 54
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevelParameterConfigure;->mAutoColorLevel:Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorLevel;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

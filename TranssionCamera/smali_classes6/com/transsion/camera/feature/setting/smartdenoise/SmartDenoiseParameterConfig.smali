.class public Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoiseParameterConfig;
.super Ljava/lang/Object;
.source "SmartDenoiseParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mSmartDenoise:Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoiseParameterConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoiseParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoiseParameterConfig;->mSmartDenoise:Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;

    return-void
.end method

.method private isAsdEnable()Z
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoiseParameterConfig;->mSmartDenoise:Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;

    const-string v1, "key_asd"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoiseParameterConfig;->mSmartDenoise:Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;

    .line 59
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoiseParameterConfig;->mSmartDenoise:Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->isFilterOn()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoiseParameterConfig;->isAsdEnable()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 42
    sget-object p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoiseParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "configParameters, isAsdEnable return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoiseParameterConfig;->mSmartDenoise:Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoiseParameterConfig;->mSmartDenoise:Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoiseParameterConfig;->mSmartDenoise:Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->getPlatformMfnrSupport()Z

    move-result p0

    const-string v1, "on"

    if-eqz p0, :cond_1

    .line 48
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setMiddleNightMode(I)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionNightMode(I)V

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 1

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "on"

    .line 33
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "off"

    .line 34
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoiseParameterConfig;->mSmartDenoise:Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

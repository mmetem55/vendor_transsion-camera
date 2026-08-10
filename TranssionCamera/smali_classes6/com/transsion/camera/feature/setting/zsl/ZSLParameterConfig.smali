.class public Lcom/transsion/camera/feature/setting/zsl/ZSLParameterConfig;
.super Ljava/lang/Object;
.source "ZSLParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mZSL:Lcom/transsion/camera/feature/setting/zsl/ZSL;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/zsl/ZSLParameterConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/zsl/ZSLParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/zsl/ZSL;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zsl/ZSLParameterConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    .line 23
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zsl/ZSLParameterConfig;->mZSL:Lcom/transsion/camera/feature/setting/zsl/ZSL;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 3

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zsl/ZSLParameterConfig;->mZSL:Lcom/transsion/camera/feature/setting/zsl/ZSL;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 47
    sget-object v0, Lcom/transsion/camera/feature/setting/zsl/ZSLParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParameters,ZSL value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "on"

    .line 48
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setZSLEnable(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 3

    .line 32
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isZSLSupport()Z

    move-result p1

    .line 33
    sget-object v0, Lcom/transsion/camera/feature/setting/zsl/ZSLParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraCapabilities, isZSLSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "off"

    .line 35
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    const-string p1, "on"

    .line 37
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zsl/ZSLParameterConfig;->mZSL:Lcom/transsion/camera/feature/setting/zsl/ZSL;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/feature/setting/zsl/ZSL;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zsl/ZSLParameterConfig;->mZSL:Lcom/transsion/camera/feature/setting/zsl/ZSL;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/setting/zsl/ZSL;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.class public Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;
.super Ljava/lang/Object;
.source "MacroTorchParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure$TorchValueThread;
    }
.end annotation


# static fields
.field private static final MACRO_TORCH_FILE:Ljava/lang/String; = "/sys/devices/virtual/wide_torch/wide_torch/wide_torch_level"

.field private static final MACRO_TORCH_OFF:Ljava/lang/String; = "0"

.field private static final MACRO_TORCH_ON:Ljava/lang/String; = "1"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentTorchValue:Ljava/lang/String;

.field private mMacroTorch:Lcom/transsion/camera/feature/setting/macrotorch/MacroTorch;

.field private mMacroTorchSupport:Z

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/macrotorch/MacroTorch;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "off"

    .line 42
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;->mCurrentTorchValue:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;->mMacroTorch:Lcom/transsion/camera/feature/setting/macrotorch/MacroTorch;

    .line 51
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method private controlMacroTorch(Ljava/lang/String;)V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;->mCurrentTorchValue:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    sget-object p0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[controlMacroTorch] value didn\'t change"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 113
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;->mCurrentTorchValue:Ljava/lang/String;

    .line 114
    sget-object v0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[controlMacroTorch] value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    const-string v0, "on"

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 118
    :cond_1
    new-instance p1, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure$TorchValueThread;

    const-string v0, "0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure$TorchValueThread;-><init>(Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;[B)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 121
    :cond_2
    new-instance p1, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure$TorchValueThread;

    const-string v0, "1"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure$TorchValueThread;-><init>(Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;[B)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method private setMacroTorchValue(Lcom/transsion/camera/adapter/CameraParameters;)V
    .locals 2

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;->mMacroTorch:Lcom/transsion/camera/feature/setting/macrotorch/MacroTorch;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "on"

    .line 96
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 104
    :goto_0
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setMacroLampValue(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 3

    .line 75
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;->mMacroTorchSupport:Z

    if-nez v0, :cond_1

    .line 76
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;->mMacroTorch:Lcom/transsion/camera/feature/setting/macrotorch/MacroTorch;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "off"

    .line 77
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;->controlMacroTorch(Ljava/lang/String;)V

    .line 79
    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "micro torch is not support!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 82
    :cond_1
    sget-object v0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configParameters] value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;->mMacroTorch:Lcom/transsion/camera/feature/setting/macrotorch/MacroTorch;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;->mMacroTorch:Lcom/transsion/camera/feature/setting/macrotorch/MacroTorch;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;->controlMacroTorch(Ljava/lang/String;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;->setMacroTorchValue(Lcom/transsion/camera/adapter/CameraParameters;)V

    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;->mMacroTorchSupport:Z

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;->mMacroTorch:Lcom/transsion/camera/feature/setting/macrotorch/MacroTorch;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorch;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 2

    .line 64
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isMacroTorchSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;->mMacroTorchSupport:Z

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "off"

    .line 66
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;->mMacroTorchSupport:Z

    if-eqz v1, :cond_0

    const-string v1, "on"

    .line 68
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;->mMacroTorch:Lcom/transsion/camera/feature/setting/macrotorch/MacroTorch;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorch;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentTorchValue(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/macrotorch/MacroTorchParameterConfigure;->mCurrentTorchValue:Ljava/lang/String;

    return-void
.end method

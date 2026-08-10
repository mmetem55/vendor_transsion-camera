.class public Lcom/transsion/camera/feature/setting/shuttersound/ShutterSoundParameterConfigure;
.super Ljava/lang/Object;
.source "ShutterSoundParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mShutterSound:Lcom/transsion/camera/feature/setting/shuttersound/ShutterSound;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/shuttersound/ShutterSoundParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/shuttersound/ShutterSoundParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/shuttersound/ShutterSound;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/shuttersound/ShutterSoundParameterConfigure;->mShutterSound:Lcom/transsion/camera/feature/setting/shuttersound/ShutterSound;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 3

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/shuttersound/ShutterSoundParameterConfigure;->mShutterSound:Lcom/transsion/camera/feature/setting/shuttersound/ShutterSound;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 53
    sget-object v0, Lcom/transsion/camera/feature/setting/shuttersound/ShutterSoundParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configCommand, enableShutterSound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "off"

    .line 54
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 55
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->enableShutterSound(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 57
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->enableShutterSound(Z)V

    :goto_0
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

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "on"

    .line 40
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "off"

    .line 41
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/shuttersound/ShutterSoundParameterConfigure;->mShutterSound:Lcom/transsion/camera/feature/setting/shuttersound/ShutterSound;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/shuttersound/ShutterSound;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

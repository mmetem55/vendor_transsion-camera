.class public Lcom/transsion/camera/feature/setting/level/LevelParameterConfigure;
.super Ljava/lang/Object;
.source "LevelParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field protected static final DEFAULT_VALUE:Ljava/lang/String; = "off"


# instance fields
.field private final mLevel:Lcom/transsion/camera/feature/setting/level/Level;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/level/Level;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/level/LevelParameterConfigure;->mLevel:Lcom/transsion/camera/feature/setting/level/Level;

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

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "on"

    .line 40
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "off"

    .line 41
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/level/LevelParameterConfigure;->mLevel:Lcom/transsion/camera/feature/setting/level/Level;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/level/Level;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

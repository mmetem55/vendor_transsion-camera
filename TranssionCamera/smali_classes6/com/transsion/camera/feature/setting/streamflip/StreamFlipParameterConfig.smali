.class public Lcom/transsion/camera/feature/setting/streamflip/StreamFlipParameterConfig;
.super Ljava/lang/Object;
.source "StreamFlipParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mSetting:Lcom/transsion/camera/feature/setting/streamflip/StreamFlipSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/streamflip/StreamFlipParameterConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/streamflip/StreamFlipParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/streamflip/StreamFlipSetting;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/streamflip/StreamFlipParameterConfig;->mSetting:Lcom/transsion/camera/feature/setting/streamflip/StreamFlipSetting;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/streamflip/StreamFlipParameterConfig;->mSetting:Lcom/transsion/camera/feature/setting/streamflip/StreamFlipSetting;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->screenPocket()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/streamflip/StreamFlipParameterConfig;->mSetting:Lcom/transsion/camera/feature/setting/streamflip/StreamFlipSetting;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->isVipMode()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 50
    :goto_1
    sget-object v0, Lcom/transsion/camera/feature/setting/streamflip/StreamFlipParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configParameters, StreamFlip value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setStreamFlip(Z)V

    return v1
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 1

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "true"

    .line 42
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "false"

    .line 43
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/streamflip/StreamFlipParameterConfig;->mSetting:Lcom/transsion/camera/feature/setting/streamflip/StreamFlipSetting;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/streamflip/StreamFlipSetting;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

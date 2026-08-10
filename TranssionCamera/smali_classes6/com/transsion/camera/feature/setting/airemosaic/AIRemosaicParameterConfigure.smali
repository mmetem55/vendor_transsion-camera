.class public Lcom/transsion/camera/feature/setting/airemosaic/AIRemosaicParameterConfigure;
.super Ljava/lang/Object;
.source "AIRemosaicParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# instance fields
.field private TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mAIRemosaic:Lcom/transsion/camera/feature/setting/airemosaic/AIRemosaic;

.field private mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/airemosaic/AIRemosaic;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/airemosaic/AIRemosaicParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/airemosaic/AIRemosaicParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 23
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/airemosaic/AIRemosaicParameterConfigure;->mAIRemosaic:Lcom/transsion/camera/feature/setting/airemosaic/AIRemosaic;

    .line 24
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/airemosaic/AIRemosaicParameterConfigure;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/airemosaic/AIRemosaicParameterConfigure;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/airemosaic/AIRemosaicParameterConfigure;->mAIRemosaic:Lcom/transsion/camera/feature/setting/airemosaic/AIRemosaic;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/airemosaic/AIRemosaic;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 3

    .line 34
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportedAIRemosaic()Z

    move-result p1

    .line 35
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/airemosaic/AIRemosaicParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraCapabilities, isAIRemosaic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "0"

    .line 37
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    const-string p1, "1"

    .line 39
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/airemosaic/AIRemosaicParameterConfigure;->mAIRemosaic:Lcom/transsion/camera/feature/setting/airemosaic/AIRemosaic;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/setting/airemosaic/AIRemosaic;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.class public Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;
.super Ljava/lang/Object;
.source "FaceAttributeParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFaceAttribute:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;

.field private mFaceAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

.field private mFaceAttributeSupport:Z

.field private mIsFaceAttributeStarted:Z

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->mFaceAttribute:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;

    .line 34
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public changeCommand()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->mFaceAttribute:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 3

    .line 71
    sget-object v0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configCommand,FaceAttributeCallback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->mFaceAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mIsFaceAttributeStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->mIsFaceAttributeStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->mFaceAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

    if-eqz v1, :cond_1

    .line 73
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->mIsFaceAttributeStarted:Z

    if-eqz v2, :cond_0

    const-string p0, "[configCommand] already loaded, return"

    .line 74
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 77
    :cond_0
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraProxy;->setGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V

    .line 78
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->startGenderAttributeDetection()V

    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->mIsFaceAttributeStarted:Z

    goto :goto_0

    .line 81
    :cond_1
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->mIsFaceAttributeStarted:Z

    if-nez v1, :cond_2

    const-string p0, "[configCommand] already unloaded, return"

    .line 82
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V

    .line 86
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->stopGenderAttributeDetection()V

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->mIsFaceAttributeStarted:Z

    :goto_0
    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->mFaceAttributeSupport:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->mFaceAttribute:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->isModeSupport()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->mFaceAttribute:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 65
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setGenderAttributeValue(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 61
    :cond_1
    :goto_0
    sget-object p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "face attribute  is not support!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method resetFaceDetectionState()V
    .locals 1

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->mIsFaceAttributeStarted:Z

    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    .line 39
    sget-object v0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "sendSettingChangeRequest"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->mFaceAttribute:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 2

    .line 49
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isGenderAttributeValueSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->mFaceAttributeSupport:Z

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "1"

    .line 51
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->mFaceAttributeSupport:Z

    if-eqz v1, :cond_0

    const-string v1, "2"

    .line 53
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->mFaceAttribute:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method setFaceAttribute(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->mFaceAttributeCallback:Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

    return-void
.end method

.class public Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;
.super Ljava/lang/Object;
.source "ExposureParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
.implements Lcom/transsion/camera/feature/setting/exposure/IExposure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAeLock:Z

.field private mAeLockSupported:Z

.field private mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private final mExposure:Lcom/transsion/camera/feature/setting/exposure/Exposure;

.field protected mExposureCompensationStep:Landroid/util/Rational;

.field protected mMaxExposureCompensation:I

.field protected mMinExposureCompensation:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/exposure/Exposure;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mMinExposureCompensation:I

    .line 20
    iput v0, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mMaxExposureCompensation:I

    .line 21
    sget-object v0, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mExposureCompensationStep:Landroid/util/Rational;

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mExposure:Lcom/transsion/camera/feature/setting/exposure/Exposure;

    .line 30
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method private buildExposureCompensation()V
    .locals 4

    .line 66
    iget v0, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mMaxExposureCompensation:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mMinExposureCompensation:I

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[buildExposureCompensation] + exposure compensation range ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mMinExposureCompensation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mMaxExposureCompensation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), with step "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mExposureCompensationStep:Landroid/util/Rational;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget v1, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mMinExposureCompensation:I

    :goto_0
    iget v2, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mMaxExposureCompensation:I

    if-gt v1, v2, :cond_1

    .line 74
    new-instance v2, Landroid/util/Rational;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mExposureCompensationStep:Landroid/util/Rational;

    invoke-virtual {v3}, Landroid/util/Rational;->getDenominator()I

    move-result v3

    invoke-direct {v2, v1, v3}, Landroid/util/Rational;-><init>(II)V

    .line 75
    invoke-virtual {v2}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mExposure:Lcom/transsion/camera/feature/setting/exposure/Exposure;

    sget-object v1, Lcom/transsion/camera/feature/setting/exposure/Exposure;->EXPOSURE_DEFAULT_VALUE:Landroid/util/Rational;

    invoke-virtual {v1}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/setting/exposure/Exposure;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 78
    sget-object p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[buildExposureCompensation] - values = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 1

    if-nez p1, :cond_0

    .line 56
    sget-object p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateCapabilities] characteristics is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 59
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isAutoExposureLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mAeLockSupported:Z

    .line 60
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getMaxExposureCompensation()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mMaxExposureCompensation:I

    .line 61
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getMinExposureCompensation()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mMinExposureCompensation:I

    .line 62
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getExposureCompensationStep()Landroid/util/Rational;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mExposureCompensationStep:Landroid/util/Rational;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mExposure:Lcom/transsion/camera/feature/setting/exposure/Exposure;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 90
    sget-object v1, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configParameters mAeLock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mAeLock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mAeLockSupported:Z

    if-eqz v2, :cond_0

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[addBaselineCaptureKeysToRequest] mAeLock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mAeLock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 93
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mAeLock:Z

    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setAeLock(Z)V

    .line 95
    :cond_0
    invoke-static {v0}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v0

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mExposureCompensationStep:Landroid/util/Rational;

    invoke-virtual {p0}, Landroid/util/Rational;->floatValue()F

    move-result p0

    const/4 v2, 0x0

    cmpl-float v2, p0, v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    div-float/2addr v0, p0

    float-to-int p0, v0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addBaselineCaptureKeysToRequest] exposureCompensationIndex "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setExposureCompensation(I)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getAeLock()Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mAeLock:Z

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz v0, :cond_0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mExposure:Lcom/transsion/camera/feature/setting/exposure/Exposure;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/exposure/Exposure;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAeLock(Z)V
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mAeLockSupported:Z

    if-nez v0, :cond_0

    .line 43
    sget-object p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[setAeLock] not fail, AE lock not supported"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 46
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->mAeLock:Z

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->updateCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V

    .line 84
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/exposure/ExposureParameterConfigure;->buildExposureCompensation()V

    return-void
.end method

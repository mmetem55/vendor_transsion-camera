.class public Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;
.super Ljava/lang/Object;
.source "FusionParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mFusion:Lcom/transsion/camera/feature/setting/fusion/Fusion;

.field private mIsFusionSupport:Z

.field private mPreviewChanged:Z

.field private mPreviewStopped:Z

.field private mSatSupport:Z

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mStreamId:I

.field private final mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/fusion/Fusion;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mIsFusionSupport:Z

    .line 31
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mPreviewStopped:Z

    .line 32
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mPreviewChanged:Z

    const/4 v1, -0x1

    .line 33
    iput v1, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mStreamId:I

    .line 34
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mSatSupport:Z

    .line 95
    new-instance v0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure$1;-><init>(Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mFusion:Lcom/transsion/camera/feature/setting/fusion/Fusion;

    .line 38
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mStreamId:I

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mStreamId:I

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mPreviewChanged:Z

    return p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mPreviewChanged:Z

    return p1
.end method

.method private setStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mSatSupport:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mPreviewStopped:Z

    if-nez v0, :cond_0

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->setStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 3

    .line 64
    sget-object v0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configParameters],mStreamId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mStreamId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIsFusionSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mIsFusionSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mFusion:Lcom/transsion/camera/feature/setting/fusion/Fusion;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mIsFusionSupport:Z

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 69
    :cond_0
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFusionMode(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mFusion:Lcom/transsion/camera/feature/setting/fusion/Fusion;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/fusion/Fusion;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 3

    .line 48
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isFusionSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mIsFusionSupport:Z

    .line 49
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSatModeSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mSatSupport:Z

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "on"

    .line 51
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "off"

    .line 52
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mIsFusionSupport:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 59
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mFusion:Lcom/transsion/camera/feature/setting/fusion/Fusion;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/fusion/Fusion;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public updatePreviewState(Z)V
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mPreviewStopped:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mPreviewChanged:Z

    .line 82
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/fusion/FusionParameterConfigure;->mPreviewStopped:Z

    :cond_0
    return-void
.end method

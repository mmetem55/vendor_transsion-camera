.class public Lcom/transsion/camera/feature/setting/videointerpolation/VideoInterpolationParameterConfig;
.super Ljava/lang/Object;
.source "VideoInterpolationParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mVideoInterpolation:Lcom/transsion/camera/feature/setting/videointerpolation/VideoInterpolation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoInterpolationParameterConfig"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/videointerpolation/VideoInterpolationParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/videointerpolation/VideoInterpolation;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videointerpolation/VideoInterpolationParameterConfig;->mVideoInterpolation:Lcom/transsion/camera/feature/setting/videointerpolation/VideoInterpolation;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videointerpolation/VideoInterpolationParameterConfig;->mVideoInterpolation:Lcom/transsion/camera/feature/setting/videointerpolation/VideoInterpolation;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/videointerpolation/VideoInterpolation;->isModeSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    sget-object p0, Lcom/transsion/camera/feature/setting/videointerpolation/VideoInterpolationParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[configParameters], return because mode not supported."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videointerpolation/VideoInterpolationParameterConfig;->mVideoInterpolation:Lcom/transsion/camera/feature/setting/videointerpolation/VideoInterpolation;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 42
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setVideoInterpolation(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 1

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "0"

    .line 29
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "1"

    .line 30
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videointerpolation/VideoInterpolationParameterConfig;->mVideoInterpolation:Lcom/transsion/camera/feature/setting/videointerpolation/VideoInterpolation;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/videointerpolation/VideoInterpolation;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

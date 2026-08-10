.class public Lcom/transsion/camera/feature/setting/videospeed/VideoSpeedParameterConfigure;
.super Ljava/lang/Object;
.source "VideoSpeedParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field protected static final DEFAULT_VALUE:Ljava/lang/String; = "1"

.field private static final MAX_FPS:I = 0x1e

.field private static final MIN_FPS:I = 0x14


# instance fields
.field private mTargetFPSRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoSpeed:Lcom/transsion/camera/feature/setting/videospeed/VideoSpeed;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/videospeed/VideoSpeed;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videospeed/VideoSpeedParameterConfigure;->mVideoSpeed:Lcom/transsion/camera/feature/setting/videospeed/VideoSpeed;

    return-void
.end method

.method private static getSuitableRange(Ljava/util/List;)Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Landroid/util/Range;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 61
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 62
    invoke-virtual {v1, v0}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videospeed/VideoSpeedParameterConfigure;->mVideoSpeed:Lcom/transsion/camera/feature/setting/videospeed/VideoSpeed;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/videospeed/VideoSpeed;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videospeed/VideoSpeedParameterConfigure;->mTargetFPSRange:Landroid/util/Range;

    if-eqz p0, :cond_0

    .line 47
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setPreviewFPSRange(Landroid/util/Range;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 3

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "0.5"

    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "1"

    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "2"

    .line 35
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/videospeed/VideoSpeedParameterConfigure;->mVideoSpeed:Lcom/transsion/camera/feature/setting/videospeed/VideoSpeed;

    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/feature/setting/videospeed/VideoSpeed;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 38
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPreviewFPSRanges()Ljava/util/List;

    move-result-object p1

    .line 39
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/videospeed/VideoSpeedParameterConfigure;->getSuitableRange(Ljava/util/List;)Landroid/util/Range;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videospeed/VideoSpeedParameterConfigure;->mTargetFPSRange:Landroid/util/Range;

    return-void
.end method

.class final Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;
.super Ljava/lang/Object;
.source "CameraRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/CameraRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceCameraInfo"
.end annotation


# instance fields
.field private final mAeLockSupported:Z

.field private final mCameraId:Ljava/lang/String;

.field private final mCameraName:Ljava/lang/String;

.field private final mFocusCsPictureSupport:Z

.field private final mFocusCsVideoSupport:Z

.field private final mMaxZoom:I

.field private final mMinZoom:I

.field private final mZoomRatio:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FLjava/lang/String;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mCameraId:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mCameraName:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getMiniZoom(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mMinZoom:I

    .line 60
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getMaxZoom(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mMaxZoom:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 61
    :goto_0
    iput p2, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mZoomRatio:F

    .line 62
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->aeLockSupported(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mAeLockSupported:Z

    .line 63
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedFocusModes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const-string p2, "continuous-picture"

    .line 64
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-lez p2, :cond_1

    move p2, p3

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mFocusCsPictureSupport:Z

    const-string p2, "continuous-video"

    .line 65
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_2

    :cond_2
    move p3, v0

    :goto_2
    iput-boolean p3, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mFocusCsVideoSupport:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 53
    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;-><init>(Ljava/lang/String;FLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Ljava/lang/String;)Z
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->equals(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)I
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->getEquivalentMinZoom()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)I
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->getEquivalentMaxZoom()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)I
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->getEquivalentZoom(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)I
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->getDeviceZoom(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Z
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->aeLockSupported()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;Z)Z
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->continuousFocusSupport(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;I)Z
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->equivalentZoomInRange(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mCameraName:Ljava/lang/String;

    return-object p0
.end method

.method private aeLockSupported()Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mAeLockSupported:Z

    return p0
.end method

.method private continuousFocusSupport(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 104
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mFocusCsPictureSupport:Z

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mFocusCsVideoSupport:Z

    :goto_0
    return p0
.end method

.method private equals(Ljava/lang/String;)Z
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mCameraId:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private equivalentZoomInRange(I)Z
    .locals 1

    .line 95
    invoke-direct {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->getEquivalentMaxZoom()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->getEquivalentMinZoom()I

    move-result p0

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getDeviceZoom(I)I
    .locals 1

    int-to-float p1, p1

    .line 86
    iget v0, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mZoomRatio:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->getNearestValidValue(I)I

    move-result p1

    .line 87
    iget v0, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mMinZoom:I

    iget p0, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mMaxZoom:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getEquivalentMaxZoom()I
    .locals 2

    .line 77
    iget v0, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mMaxZoom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mZoomRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->getNearestValidValue(I)I

    move-result p0

    return p0
.end method

.method private getEquivalentMinZoom()I
    .locals 2

    .line 73
    iget v0, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mMinZoom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mZoomRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->getNearestValidValue(I)I

    move-result p0

    return p0
.end method

.method private getEquivalentZoom(I)I
    .locals 2

    .line 81
    iget v0, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mMinZoom:I

    iget v1, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mMaxZoom:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    .line 82
    iget v0, p0, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->mZoomRatio:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository$DeviceCameraInfo;->getNearestValidValue(I)I

    move-result p0

    return p0
.end method

.method private getNearestValidValue(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x2

    .line 91
    div-int/lit8 p1, p1, 0x5

    mul-int/lit8 p1, p1, 0x5

    return p1
.end method

.class public Lcom/transsion/camera/adapter/CameraDataChannel;
.super Ljava/lang/Object;
.source "CameraDataChannel.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAuxPreviewSurface:Landroid/view/Surface;

.field private mBackgroundPreviewSurface:Landroid/view/Surface;

.field private mFastThumbSurface:Landroid/view/Surface;

.field private mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

.field private mIsPrepareSuccess:Z

.field private mPreviewSurface:Landroid/view/Surface;

.field private mThumbnailSurface:Landroid/view/Surface;

.field private mType:I

.field private mVideoFrameHeight:I

.field private mVideoFrameRate:I

.field private mVideoFrameWidth:I

.field private mVideoSurface:Landroid/view/Surface;

.field private mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/adapter/CameraDataChannel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/CameraDataChannel;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(ILandroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/transsion/camera/adapter/IBGSurface;Lcom/transsion/camera/adapter/IBGSurface;Landroid/view/Surface;Landroid/view/Surface;IIIZ)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mType:I

    .line 41
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mPreviewSurface:Landroid/view/Surface;

    .line 42
    iput-object p3, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mAuxPreviewSurface:Landroid/view/Surface;

    .line 43
    iput-object p4, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mBackgroundPreviewSurface:Landroid/view/Surface;

    .line 44
    iput-object p5, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mVideoSurface:Landroid/view/Surface;

    .line 45
    iput p10, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mVideoFrameRate:I

    .line 46
    iput p11, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mVideoFrameWidth:I

    .line 47
    iput p12, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mVideoFrameHeight:I

    .line 48
    iput-object p6, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    .line 49
    iput-object p7, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    .line 50
    iput-object p8, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mThumbnailSurface:Landroid/view/Surface;

    .line 51
    iput-object p9, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mFastThumbSurface:Landroid/view/Surface;

    .line 52
    iput-boolean p13, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mIsPrepareSuccess:Z

    return-void
.end method


# virtual methods
.method public getAuxPreviewSurface()Landroid/view/Surface;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mAuxPreviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public getBackgroundPreviewSurface()Landroid/view/Surface;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mBackgroundPreviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method getCameraDataType()I
    .locals 0

    .line 56
    iget p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mType:I

    return p0
.end method

.method getFastThumbSurface()Landroid/view/Surface;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mFastThumbSurface:Landroid/view/Surface;

    return-object p0
.end method

.method getImageSurface()Lcom/transsion/camera/adapter/IBGSurface;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    return-object p0
.end method

.method public getPreviewSurface()Landroid/view/Surface;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mPreviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method getThumbnailSurface()Landroid/view/Surface;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mThumbnailSurface:Landroid/view/Surface;

    return-object p0
.end method

.method getVideoFrameHeight()I
    .locals 0

    .line 90
    iget p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mVideoFrameHeight:I

    return p0
.end method

.method getVideoFrameRate()I
    .locals 0

    .line 86
    iget p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mVideoFrameRate:I

    return p0
.end method

.method getVideoFrameWidth()I
    .locals 0

    .line 94
    iget p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mVideoFrameWidth:I

    return p0
.end method

.method getVideoSurface()Landroid/view/Surface;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mVideoSurface:Landroid/view/Surface;

    return-object p0
.end method

.method getYuvImageSurface()Lcom/transsion/camera/adapter/IBGSurface;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mYuvImageSurface:Lcom/transsion/camera/adapter/IBGSurface;

    return-object p0
.end method

.method isPrepareSuccess()Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mIsPrepareSuccess:Z

    return p0
.end method

.method public replacePreviewSurface(Landroid/view/Surface;)V
    .locals 3

    .line 72
    sget-object v0, Lcom/transsion/camera/adapter/CameraDataChannel;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replacePreviewSurface oldSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", newSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 74
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraDataChannel;->mPreviewSurface:Landroid/view/Surface;

    return-void
.end method

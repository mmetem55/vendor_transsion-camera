.class public Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
.source "DocumentImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final MSG_DOC_PHOTO_HANDLE:I = 0x1

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBitmapFromByte:Landroid/graphics/Bitmap;

.field private mDocImageHandler:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;

.field private mJpeg:[B

.field private mShouldDisplay:Z

.field protected xnetDocDetector:Lcom/youtu/ocr/docprocess/DocDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    .line 35
    sget-object p1, Lcom/youtu/ocr/docprocess/DocDetector;->sharedInstance:Lcom/youtu/ocr/docprocess/DocDetector;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->xnetDocDetector:Lcom/youtu/ocr/docprocess/DocDetector;

    .line 44
    new-instance p1, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;

    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/DocumentThread;->getInstance()Lcom/transsion/camera/feature/mode/doc/DocumentThread;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;-><init>(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mDocImageHandler:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Landroid/graphics/Bitmap;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mBitmapFromByte:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mBitmapFromByte:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)[B
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mJpeg:[B

    return-object p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;[B)[B
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mJpeg:[B

    return-object p1
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;[BLandroid/graphics/Bitmap;Z)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg([BLandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;[BLandroid/graphics/Bitmap;Z)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg([BLandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mShouldDisplay:Z

    return p0
.end method

.method static synthetic access$502(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mShouldDisplay:Z

    return p1
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;[BLandroid/graphics/Bitmap;Z)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg([BLandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Lcom/transsion/camera/app/common/location/LocationManager;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;[BLandroid/graphics/Bitmap;Z)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg([BLandroid/graphics/Bitmap;Z)V

    return-void
.end method


# virtual methods
.method protected onJpeg([BZI)V
    .locals 0

    const/4 p3, 0x0

    .line 49
    invoke-virtual {p0, p1, p3, p2}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->saveJpegToFile([BLandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public saveJpegToFile([BLandroid/graphics/Bitmap;Z)V
    .locals 2

    .line 54
    sget-boolean v0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->sCheckDetectorLicense:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    invoke-interface {v0, p1, p3, v1}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->notifyPictureTaken([BZI)I

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg([BLandroid/graphics/Bitmap;Z)V

    return-void

    .line 59
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mDocImageHandler:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->isAlive()Z

    move-result p2

    if-nez p2, :cond_1

    .line 60
    new-instance p2, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;

    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/DocumentThread;->getInstance()Lcom/transsion/camera/feature/mode/doc/DocumentThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;-><init>(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mDocImageHandler:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;

    .line 62
    :cond_1
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mDocImageHandler:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 63
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 64
    iput v0, p2, Landroid/os/Message;->what:I

    .line 65
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mJpeg:[B

    if-eqz p3, :cond_2

    .line 67
    iput v0, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 69
    :cond_2
    iput v1, p2, Landroid/os/Message;->arg1:I

    .line 71
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mDocImageHandler:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public shouldDiaplay()Z
    .locals 0

    .line 171
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mShouldDisplay:Z

    return p0
.end method

.method public supportProcessingMedia()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateThumbnail(Landroid/net/Uri;)V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mJpeg:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->notifyPictureTaken([BZI)I

    .line 176
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->mShouldDisplay:Z

    .line 177
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->doOnFileSaved(Landroid/net/Uri;)V

    return-void
.end method

.class public Lcom/transsion/camera/app/common/mode/CaptureSurface;
.super Ljava/lang/Object;
.source "CaptureSurface.java"

# interfaces
.implements Lcom/transsion/camera/adapter/IBGSurface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;,
        Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private volatile mBGEnable:Z

.field private mBgEventQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/bgservice/BgEvent;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mCanReleaseCaptureSurface:Z

.field mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mFormat:I

.field private final mHeight:I

.field private mImageCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

.field private mImageQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/ImageReader;",
            ">;"
        }
    .end annotation
.end field

.field private mImageReader:Landroid/media/ImageReader;

.field private volatile mIsBGSurface:Z

.field private mIsReleased:Z

.field private mListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final mName:Ljava/lang/String;

.field mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPreReleaseTime:J

.field private mReleaseLock:Ljava/lang/Object;

.field private mSurfaceStateListener:Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CaptureSurface"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIZ)V
    .locals 6

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v2, 0x0

    .line 45
    iput-wide v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mPreReleaseTime:J

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBgEventQueue:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageQueue:Ljava/util/List;

    .line 51
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mCanReleaseCaptureSurface:Z

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mReleaseLock:Ljava/lang/Object;

    .line 54
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mIsReleased:Z

    .line 240
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureSurface$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$1;-><init>(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 76
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mName:Ljava/lang/String;

    .line 77
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mWidth:I

    .line 78
    iput p3, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHeight:I

    .line 79
    iput p4, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mFormat:I

    const/16 p1, 0x23

    if-ne p1, p4, :cond_0

    .line 80
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->shouldForceConvertNV21()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/32 v4, 0x2000003

    move v0, p2

    move v1, p3

    move v2, p4

    move v3, p5

    .line 81
    invoke-static/range {v0 .. v5}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageReader:Landroid/media/ImageReader;

    goto :goto_0

    .line 84
    :cond_0
    invoke-static {p2, p3, p4, p5}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageReader:Landroid/media/ImageReader;

    .line 86
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageReader:Landroid/media/ImageReader;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getHandler()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 87
    iput-boolean p6, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mIsBGSurface:Z

    .line 88
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mIsBGSurface:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBGEnable:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 7

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    .line 72
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/common/mode/CaptureSurface;-><init>(Ljava/lang/String;IIIIZ)V

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 23
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/common/mode/CaptureSurface;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBGEnable:Z

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/common/mode/CaptureSurface;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBgEventQueue:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/common/mode/CaptureSurface;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/common/mode/CaptureSurface;)Lcom/transsion/camera/app/common/bgservice/BgEvent;
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getSuccessBgEvent()Lcom/transsion/camera/app/common/bgservice/BgEvent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/common/mode/CaptureSurface;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageQueue:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/common/mode/CaptureSurface;Landroid/media/ImageReader;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->acquireImage(Landroid/media/ImageReader;)V

    return-void
.end method

.method private acquireImage(Landroid/media/ImageReader;)V
    .locals 9

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mReleaseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mIsReleased:Z

    if-eqz v1, :cond_0

    .line 281
    sget-object p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "ImageReader is release, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 282
    monitor-exit v0

    return-void

    .line 284
    :cond_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_1

    .line 286
    sget-object p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "acquireImage image is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 287
    monitor-exit v0

    return-void

    .line 289
    :cond_1
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_2

    const/16 v1, 0x11

    goto :goto_0

    .line 290
    :cond_2
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v1

    :goto_0
    move v4, v1

    .line 291
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getBufferFromImage(Landroid/media/Image;)[B

    move-result-object v3

    .line 292
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v5

    .line 293
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v6

    .line 294
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 295
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 298
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBGEnable:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_4

    .line 299
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :cond_4
    move v8, p1

    .line 301
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    iget-boolean v7, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mCanReleaseCaptureSurface:Z

    invoke-interface/range {v2 .. v8}, Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;->onPictureTaken([BIIIZI)V

    .line 302
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->decreasePicCount()V

    .line 303
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->decreaseCaptureCount()V

    .line 305
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->checkNotifyBgErr()V

    return-void

    :catchall_0
    move-exception p0

    .line 295
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private checkNotifyBgErr()V
    .locals 3

    .line 327
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBGEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBgEventQueue:Ljava/util/List;

    .line 328
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBgEventQueue:Ljava/util/List;

    const/4 v1, 0x0

    .line 329
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/bgservice/BgEvent;

    iget v0, v0, Lcom/transsion/camera/app/common/bgservice/BgEvent;->mStatus:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 330
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "notify Bg err! "

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBgEventQueue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;->onPictureTakenFail()V

    .line 333
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->decreasePicCount()V

    .line 334
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->decreaseCaptureCount()V

    :cond_0
    return-void
.end method

.method private getBufferFromImage(Landroid/media/Image;)[B
    .locals 4

    .line 339
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result p0

    const/16 v0, 0x100

    if-ne p0, v0, :cond_0

    .line 342
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    .line 343
    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 344
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    new-array p1, p1, [B

    .line 345
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 346
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    :cond_0
    const/16 v0, 0x23

    if-ne p0, v0, :cond_1

    .line 348
    sget-object p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[AlgorithmPerformance] YUV_420_888 to NV21 start"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 349
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 351
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->getNV21Buffer(Landroid/media/Image;)[B

    move-result-object p1

    .line 353
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[AlgorithmPerformance] YUV_420_888 to NV21 end | process time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getSuccessBgEvent()Lcom/transsion/camera/app/common/bgservice/BgEvent;
    .locals 4

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBgEventQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 265
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBgEventQueue:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/bgservice/BgEvent;

    .line 266
    iget v2, v0, Lcom/transsion/camera/app/common/bgservice/BgEvent;->mStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    return-object v0

    :cond_2
    return-object v1
.end method

.method private realReleaseSurface()V
    .locals 3

    .line 200
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mIsReleased:Z

    if-eqz v0, :cond_0

    return-void

    .line 203
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "realReleaseSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    .line 205
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 206
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mIsBGSurface:Z

    if-eqz v1, :cond_1

    .line 207
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->removeCaptureSurface(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V

    :cond_1
    const/4 v1, 0x1

    .line 209
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mIsReleased:Z

    .line 210
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mSurfaceStateListener:Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;

    if-eqz v1, :cond_2

    .line 211
    invoke-interface {v1, p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;->onSurfaceReleased(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V

    .line 212
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mSurfaceStateListener:Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;

    :cond_2
    return-void
.end method

.method private releaseAfterCheckNum()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mReleaseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mIsBGSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBGEnable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mCanReleaseCaptureSurface:Z

    if-eqz v1, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->realReleaseSurface()V

    .line 237
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private shouldReleaseSurface()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mIsBGSurface:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBGEnable:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public decreaseCaptureCount()V
    .locals 4

    .line 153
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBGEnable:Z

    const-string v1, ", "

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_0

    .line 154
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBGEnable is false, don\'t decreaseCaptureCount. mCaptureCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 159
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<decreaseCaptureCount> mCaptureCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public decreasePicCount()V
    .locals 3

    .line 173
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBGEnable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_0

    .line 174
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBGEnable is false, don\'t decreasePicCount. mPictureCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 179
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<decreasePicCount> captureSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPictureCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 180
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 181
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->releaseAfterCheckNum()V

    return-void
.end method

.method public disableBGService()V
    .locals 1

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBGEnable:Z

    return-void
.end method

.method public getCaptureCount()I
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getFormat()I
    .locals 0

    .line 128
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mFormat:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 124
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mHeight:I

    return p0
.end method

.method public getId()I
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public getPreReleaseTime()J
    .locals 2

    .line 196
    iget-wide v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mPreReleaseTime:J

    return-wide v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 120
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mWidth:I

    return p0
.end method

.method public increaseCaptureCount()V
    .locals 3

    .line 140
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBGEnable:Z

    if-nez v0, :cond_0

    .line 141
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBGEnable is false, don\'t increaseCaptureCount. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 145
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<increaseCaptureCount> mCaptureCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public increasePicCount()V
    .locals 3

    .line 163
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBGEnable:Z

    if-nez v0, :cond_0

    .line 164
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBGEnable is false, don\'t increasePicCount. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 168
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<increasePicCount> captureSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPictureCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mPictureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 169
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 168
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isBGEnable()Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mIsBGSurface:Z

    return p0
.end method

.method public notifyBgEventCallback(Lcom/transsion/camera/app/common/bgservice/BgEvent;)V
    .locals 3

    .line 309
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] notifyBgEventCallback mBGEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBGEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/transsion/camera/app/common/bgservice/BgEvent;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ImageQueue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageQueue:Ljava/util/List;

    .line 310
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 311
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBGEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 314
    :cond_0
    iget v0, p1, Lcom/transsion/camera/app/common/bgservice/BgEvent;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBgEventQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->checkNotifyBgErr()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 319
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageQueue:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/ImageReader;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->acquireImage(Landroid/media/ImageReader;)V

    goto :goto_0

    .line 321
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBgEventQueue:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onBGServiceDied()V
    .locals 2

    .line 185
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onBGServiceDied"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mIsBGSurface:Z

    .line 187
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mIsBGSurface:Z

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBGEnable:Z

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mReleaseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mCanReleaseCaptureSurface:Z

    if-eqz v1, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->realReleaseSurface()V

    .line 192
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public releaseSurface()V
    .locals 3

    .line 221
    sget-object v0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "releaseSurface"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mReleaseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->shouldReleaseSurface()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->realReleaseSurface()V

    goto :goto_0

    .line 226
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mPreReleaseTime:J

    const/4 v1, 0x1

    .line 227
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mCanReleaseCaptureSurface:Z

    .line 229
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resetBGEnable()V
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mIsBGSurface:Z

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mBGEnable:Z

    return-void
.end method

.method public setImageCallback(Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mImageCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    return-void
.end method

.method public setSurfaceStateListener(Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mSurfaceStateListener:Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CaptureSurface{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

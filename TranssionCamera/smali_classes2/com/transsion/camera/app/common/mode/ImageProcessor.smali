.class public abstract Lcom/transsion/camera/app/common/mode/ImageProcessor;
.super Ljava/lang/Object;
.source "ImageProcessor.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IImageProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/mode/IImageProcessor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected mCaptureOrientation:I

.field private mCurrentCameraId:Ljava/lang/String;

.field protected mDataCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

.field private mIsSavingJepg:Z

.field private volatile mIsUnInit:Z

.field private final mListenersLock:Ljava/lang/Object;

.field protected mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

.field protected mMirror:Z

.field private mNeedReleaseCallback:Z

.field protected mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

.field protected volatile mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

.field protected mPostViewCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

.field protected mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

.field protected volatile mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field private final mSurfaceLock:Ljava/lang/Object;

.field private mSurfaceStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field protected mTempLocation:Landroid/location/Location;

.field protected mWatermark:Z

.field protected mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTempLocation:Landroid/location/Location;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsUnInit:Z

    .line 47
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsSavingJepg:Z

    .line 48
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mNeedReleaseCallback:Z

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mCaptureOrientation:I

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mListenersLock:Ljava/lang/Object;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceStateListeners:Ljava/util/List;

    .line 226
    new-instance v0, Lcom/transsion/camera/app/common/mode/ImageProcessor$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor$3;-><init>(Lcom/transsion/camera/app/common/mode/ImageProcessor;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mDataCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    .line 242
    new-instance v0, Lcom/transsion/camera/app/common/mode/ImageProcessor$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor$4;-><init>(Lcom/transsion/camera/app/common/mode/ImageProcessor;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPostViewCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    .line 59
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 60
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/transsion/camera/app/common/mode/ImageProcessor;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsSavingJepg:Z

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/common/mode/ImageProcessor;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mNeedReleaseCallback:Z

    return p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/app/common/mode/ImageProcessor;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mNeedReleaseCallback:Z

    return p1
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/common/mode/ImageProcessor;Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->removeSurfaceStateListenerLocked(Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/common/mode/ImageProcessor;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->checkAllSurfaceReleased()V

    return-void
.end method

.method private addSurfaceStateListenerLocked(Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;)V
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceStateListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSurfaceStateListenerLocked size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceStateListeners:Ljava/util/List;

    .line 344
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 343
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 345
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private checkAllSurfaceReleased()V
    .locals 1

    .line 331
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsUnInit:Z

    if-nez v0, :cond_0

    .line 332
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "ignore it when ImageProcessor don\'t unInit"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 335
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isSurfaceStateListenersEmptyLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->releaseImageProcessor()V

    :cond_1
    return-void
.end method

.method private createSurfaceStateListener()Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;
    .locals 1

    .line 318
    new-instance v0, Lcom/transsion/camera/app/common/mode/ImageProcessor$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor$5;-><init>(Lcom/transsion/camera/app/common/mode/ImageProcessor;)V

    .line 326
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->addSurfaceStateListenerLocked(Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;)V

    return-object v0
.end method

.method private isSurfaceStateListenersEmptyLocked()Z
    .locals 4

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 359
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSurfaceStateListenersEmptyLocked size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 360
    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 361
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private removeSurfaceStateListenerLocked(Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;)V
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceStateListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 351
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSurfaceStateListenerLocked size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceStateListeners:Ljava/util/List;

    .line 352
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 351
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 353
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public addCaptureThumbInfo(Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;)V
    .locals 0

    .line 516
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    if-eqz p0, :cond_0

    .line 517
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->addCaptureThumbInfo(Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;)V

    :cond_0
    return-void
.end method

.method public algorithmMigrate(Z)V
    .locals 0

    return-void
.end method

.method public createProcessingMedia(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected doOnFileSaved(Landroid/net/Uri;)V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->doOnFileSaved(Landroid/net/Uri;ZZ)V

    .line 199
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsSavingJepg:Z

    return-void
.end method

.method protected doSaveJpeg([BLandroid/graphics/Bitmap;Z)V
    .locals 8

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsSavingJepg:Z

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] saveJpegToFile image"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-nez v2, :cond_0

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "saveJpegToFile: storageOperator is null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 128
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    const-string v1, "key_location"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mLocationManager is null, use temp location"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTempLocation:Landroid/location/Location;

    .line 134
    :goto_0
    invoke-static {p1}, Lcom/transsion/camera/utils/ExifUtils;->updateExifForAnalytics([B)V

    .line 135
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TranMemoryFlow] available memory when save file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailMemory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->supportProcessingMedia()Z

    move-result v1

    .line 137
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveJpegToFile image supportProcessingMedia: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    .line 140
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getFirstAndPreRemove()Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    move-result-object v1

    move-object v4, v1

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->removeCaptureThumbInfo()V

    .line 143
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[doSaveJpeg] processMediaItem:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v4, :cond_3

    .line 145
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->getProcessedContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v3

    .line 147
    new-instance v6, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;

    invoke-direct {v6, p0, v4, p3, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;-><init>(Lcom/transsion/camera/app/common/mode/ImageProcessor;Lcom/transsion/camera/app/common/provider/ProcessMediaItem;Z[B)V

    .line 172
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getUri()Landroid/net/Uri;

    move-result-object v7

    move-object v4, p1

    move-object v5, p2

    .line 147
    invoke-interface/range {v2 .. v7}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    goto :goto_1

    .line 174
    :cond_3
    invoke-interface {v2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->getContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 175
    new-instance v1, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;

    invoke-direct {v1, p0, p3, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;-><init>(Lcom/transsion/camera/app/common/mode/ImageProcessor;Z[B)V

    invoke-interface {v2, v0, p1, p2, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    :goto_1
    return-void
.end method

.method public getCameraId()Ljava/lang/String;
    .locals 0

    .line 455
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mCurrentCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getCaptureCount()I
    .locals 0

    .line 460
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz p0, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getCaptureCount()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFirstCaptureInfoType()I
    .locals 2

    .line 528
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 529
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getFirstCaptureThumbInfo(Z)Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 530
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->thumbnilType:I

    :cond_0
    return v0
.end method

.method protected getProcessedContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRemainingMediaSize()I
    .locals 0

    .line 536
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    if-eqz p0, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getRemainingMediaSize()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public init(Lcom/transsion/camera/app/common/location/LocationManager;Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;Landroid/content/Context;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    .line 66
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->supportProcessingMedia()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    new-instance p1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    invoke-direct {p1, p3}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    :cond_0
    return-void
.end method

.method protected isBGEnable()Z
    .locals 1

    .line 497
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "It\'s a project under 4G,close bg service in monkey scenarios."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 501
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->isBGSupport()Z

    move-result p0

    return p0
.end method

.method protected isNull()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCameraClosed()V
    .locals 0

    return-void
.end method

.method public onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;)V
    .locals 0

    return-void
.end method

.method public onCaptureFailed()V
    .locals 0

    return-void
.end method

.method public onCaptureStarted()V
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isBGEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 421
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz p0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->increasePicCount()V

    .line 424
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public onContinuousShotStart()V
    .locals 0

    return-void
.end method

.method public onContinuousShotStop()V
    .locals 0

    return-void
.end method

.method protected onPictureData([BIIIIZI)V
    .locals 0

    return-void
.end method

.method protected onPictureDataFail()V
    .locals 0

    return-void
.end method

.method protected onPostViewData([BIIII)V
    .locals 0

    return-void
.end method

.method public onProcessedMediaUriSaved(Lcom/transsion/camera/app/common/provider/ProcessMediaItem;)V
    .locals 0

    return-void
.end method

.method public onTakePicture(Lcom/transsion/camera/app/common/mode/CaptureInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 399
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onTakePicture CaptureInfo is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 402
    :cond_0
    iget-boolean v0, p1, Lcom/transsion/camera/app/common/mode/CaptureInfo;->mMirror:Z

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mMirror:Z

    .line 403
    iget-boolean v0, p1, Lcom/transsion/camera/app/common/mode/CaptureInfo;->mWatermark:Z

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mWatermark:Z

    .line 404
    iget p1, p1, Lcom/transsion/camera/app/common/mode/CaptureInfo;->mOrientation:I

    iput p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mCaptureOrientation:I

    return-void
.end method

.method protected abstract onUpdateFastThumbSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
.end method

.method protected abstract onUpdateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
.end method

.method public pause()V
    .locals 1

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "pause"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected releaseAlgorithm()V
    .locals 0

    return-void
.end method

.method protected releaseImageProcessor()V
    .locals 0

    return-void
.end method

.method protected releaseSurface()V
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->releaseSurface()V

    .line 470
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->releaseSurface()V

    .line 474
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    :cond_1
    return-void
.end method

.method public removeBgCaptureThumb()V
    .locals 0

    return-void
.end method

.method public removeCaptureThumbInfo()V
    .locals 0

    .line 522
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    if-eqz p0, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->removeCaptureThumbInfo()V

    :cond_0
    return-void
.end method

.method public resetBgEnable()V
    .locals 0

    .line 510
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz p0, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->resetBGEnable()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public saveJpegToFile([BLandroid/graphics/Bitmap;Z)V
    .locals 0

    .line 114
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg([BLandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public supportProcessingMedia()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public unInit()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    const-string v1, "key_location"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTempLocation:Landroid/location/Location;

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unInit mIsSavingJepg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsSavingJepg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 76
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsSavingJepg:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/transsion/camera/app/common/mode/NullPictureCallback;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/NullPictureCallback;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    goto :goto_0

    .line 79
    :cond_0
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mNeedReleaseCallback:Z

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->releaseSurface()V

    .line 83
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsUnInit:Z

    .line 84
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isSurfaceStateListenersEmptyLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->releaseImageProcessor()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 84
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public updateCameraId(Ljava/lang/String;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mCurrentCameraId:Ljava/lang/String;

    return-void
.end method

.method public final updateFastThumbSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 378
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsUnInit:Z

    if-eqz v1, :cond_0

    .line 379
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "updateThumbnailSurface: ImageProcessor is unInit"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 380
    monitor-exit v0

    return-object p0

    .line 382
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onUpdateFastThumbSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 383
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected updateParameters(Lcom/transsion/camera/app/common/mode/ProcesserParameters;)V
    .locals 0

    return-void
.end method

.method public updatePicSurface(Landroid/util/Size;IZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 8

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsUnInit:Z

    if-eqz v1, :cond_0

    .line 258
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "updatePicSurface: ImageProcessor is unInit"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 259
    monitor-exit v0

    return-object p0

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v1, :cond_1

    .line 262
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 263
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v1, :cond_2

    .line 265
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->releaseSurface()V

    .line 267
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "updatePicSurface"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    .line 268
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isBGEnable()Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p3, 0x1

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    .line 269
    :goto_0
    new-instance v7, Lcom/transsion/camera/app/common/mode/CaptureSurface;

    const-string v2, "JpegPic"

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    move-object v1, v7

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/app/common/mode/CaptureSurface;-><init>(Ljava/lang/String;IIIZ)V

    iput-object v7, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz p3, :cond_4

    .line 272
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->addCaptureSurface(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V

    .line 274
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mDataCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->setImageCallback(Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;)V

    .line 275
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->createSurfaceStateListener()Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->setSurfaceStateListener(Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;)V

    .line 277
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 278
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-void
.end method

.method public final updateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 367
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsUnInit:Z

    if-eqz v1, :cond_0

    .line 368
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "updateThumbnailSurface: ImageProcessor is unInit"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 369
    monitor-exit v0

    return-object p0

    .line 371
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onUpdateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 372
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateYuvPicSurface(Landroid/util/Size;IZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 8

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsUnInit:Z

    if-eqz v1, :cond_0

    .line 294
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "updateYuvPicSurface: ImageProcessor is unInit"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 295
    monitor-exit v0

    return-object p0

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v1, :cond_1

    .line 298
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 299
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 300
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v1, :cond_2

    .line 301
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->releaseSurface()V

    .line 303
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "updateYuvPicSurface"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    .line 304
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isBGEnable()Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p3, 0x1

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    .line 305
    :goto_0
    new-instance v7, Lcom/transsion/camera/app/common/mode/CaptureSurface;

    const-string v2, "YuvPic"

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    move-object v1, v7

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/app/common/mode/CaptureSurface;-><init>(Ljava/lang/String;IIIZ)V

    iput-object v7, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz p3, :cond_4

    .line 308
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->addCaptureSurface(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V

    .line 310
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mDataCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->setImageCallback(Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;)V

    .line 311
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->createSurfaceStateListener()Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->setSurfaceStateListener(Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;)V

    .line 313
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 314
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

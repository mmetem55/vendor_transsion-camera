.class public Lcom/transsion/camera/manager/MediaManager;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field private final mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

.field private final mContext:Landroid/content/Context;

.field private final mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mPictureHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

.field private final mThumbnailLoader:Lcom/transsion/camera/manager/ThumbnailLoader;


# direct methods
.method public static synthetic $r8$lambda$WgSrf6n-l1GW87yXrMnSSwZ_MNI(Lcom/transsion/camera/manager/MediaManager;Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/manager/MediaManager;->lambda$loadLatestThumbnail$1(Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tBLhqYKjPyKIaei2GhztOpNDgxA(Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/camera/manager/MediaManager;->lambda$new$0(Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/manager/MediaManager;->mPictureHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/manager/MediaManager;->mMainHandler:Landroid/os/Handler;

    .line 42
    iput-object p1, p0, Lcom/transsion/camera/manager/MediaManager;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Lcom/transsion/camera/manager/ThumbnailLoader;

    invoke-direct {v0}, Lcom/transsion/camera/manager/ThumbnailLoader;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/manager/MediaManager;->mThumbnailLoader:Lcom/transsion/camera/manager/ThumbnailLoader;

    .line 44
    new-instance v0, Lcom/transsion/camera/app/common/location/LocationManager;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/location/LocationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/transsion/camera/manager/MediaManager;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    .line 45
    new-instance v0, Lcom/transsion/camera/app/common/storage/AppStorageManager;

    new-instance v1, Lcom/transsion/camera/manager/MediaManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/transsion/camera/manager/MediaManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IApp$IIntentProxy;)V

    iput-object v0, p0, Lcom/transsion/camera/manager/MediaManager;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    .line 48
    new-instance v1, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/transsion/camera/app/common/setting/SettingManager;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/setting/SettingManager;-><init>()V

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->init(Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/setting/ISettingManager;)V

    .line 49
    new-instance p1, Lcom/transsion/camera/manager/MediaManager$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/manager/MediaManager$1;-><init>(Lcom/transsion/camera/manager/MediaManager;)V

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->setStorageVolumeListener(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;)V

    return-void
.end method

.method private static convertJpegOrientation(I)I
    .locals 1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x6

    return p0
.end method

.method private synthetic lambda$loadLatestThumbnail$1(Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/manager/MediaManager;->mThumbnailLoader:Lcom/transsion/camera/manager/ThumbnailLoader;

    iget-object v1, p0, Lcom/transsion/camera/manager/MediaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/manager/MediaManager;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getAllBucketIds()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, v1, p0, p1}, Lcom/transsion/camera/manager/ThumbnailLoader;->loadLatestThumbnail(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public isExternalStorage()Z
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/manager/MediaManager;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->isExternalStorage()Z

    move-result p0

    return p0
.end method

.method public loadLatestThumbnail(Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/manager/MediaManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/manager/MediaManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/manager/MediaManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/manager/MediaManager;Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/manager/MediaManager;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->unInit()V

    return-void
.end method

.method public onPause()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/manager/MediaManager;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->pause()V

    return-void
.end method

.method public onResume()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/manager/MediaManager;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->resume()V

    return-void
.end method

.method public savePhoto([BILcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V
    .locals 4

    const v0, 0x14000

    .line 101
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromByte([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 102
    new-instance v1, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;

    invoke-direct {v1}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;-><init>()V

    .line 103
    iget-object v2, p0, Lcom/transsion/camera/manager/MediaManager;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    const-string v3, "arcore"

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 104
    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateLocation(Landroid/location/Location;)V

    .line 105
    invoke-static {p2}, Lcom/transsion/camera/manager/MediaManager;->convertJpegOrientation(I)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateOrientation(I)V

    .line 106
    invoke-virtual {v1, v0}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateThumbnailSize(Landroid/graphics/Bitmap;)V

    .line 107
    invoke-static {p1, v0, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->writeExif([BLandroid/graphics/Bitmap;Lcom/transsion/camera/adapter/CameraResults;)[B

    move-result-object p1

    .line 108
    iget-object p2, p0, Lcom/transsion/camera/manager/MediaManager;->mPictureHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    iget-object v0, p0, Lcom/transsion/camera/manager/MediaManager;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getStorageOperator()Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v2, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->createContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p2

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/manager/MediaManager;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getStorageOperator()Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object p0

    invoke-interface {p0, p2, p1, v1, p3}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    return-void
.end method

.method public savePhoto([BLcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/camera/manager/MediaManager;->savePhoto([BILcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    return-void
.end method

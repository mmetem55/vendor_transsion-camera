.class public abstract Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;
.super Ljava/lang/Object;
.source "AbstractStorageOperator.java"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;


# instance fields
.field private final mClearLock:Ljava/lang/Object;

.field private mConcurrentMediaSaver:Lcom/transsion/camera/app/common/storage/MediaSaver;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mContext:Landroid/content/Context;

.field protected mIsInit:Z

.field private mSerialMediaSaver:Lcom/transsion/camera/app/common/storage/MediaSaver;

.field private mStorageAvailable:Z

.field protected mStorageVolume:Landroid/os/storage/StorageVolume;

.field protected final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private volatile mTempCleared:Z


# direct methods
.method public static synthetic $r8$lambda$HNbQEZR-qrdceq3cNv0xK5o21h8(Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->lambda$clearTempFiles$0()V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mIsInit:Z

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mSerialMediaSaver:Lcom/transsion/camera/app/common/storage/MediaSaver;

    .line 60
    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mConcurrentMediaSaver:Lcom/transsion/camera/app/common/storage/MediaSaver;

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mStorageAvailable:Z

    .line 62
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTempCleared:Z

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mClearLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private getAvailableSpace(Ljava/lang/String;)J
    .locals 1

    const-string v0, "removed"

    .line 235
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ejecting"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "checking"

    .line 237
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 p0, -0x2

    return-wide p0

    :cond_1
    const-string v0, "mounted"

    .line 239
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 240
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->getAvailableSpaceInDirectory()J

    move-result-wide p0

    return-wide p0

    :cond_2
    const-wide/16 p0, -0x1

    return-wide p0

    :cond_3
    :goto_0
    const-wide/16 p0, -0x5

    return-wide p0
.end method

.method private synthetic lambda$clearTempFiles$0()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "clearTempFiles execute start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mClearLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, ".videorecorder"

    .line 91
    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->deleteTempVideoFile(Ljava/lang/String;)Z

    const/4 v1, 0x1

    .line 92
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTempCleared:Z

    .line 93
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mClearLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 94
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "clearTempFiles execute end"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 94
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private waitForTempClearedIfNeeded()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitForTempClearedIfNeeded,mTempCleared"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTempCleared:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mClearLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTempCleared:Z

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mClearLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 107
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 109
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 138
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Z)V

    return-void
.end method

.method public addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V
    .locals 0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[addPhotoSaveRequest] there is no data to save"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[addPhotoSaveRequest] there is no valid data need to save."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 175
    :cond_1
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->buildPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)Lcom/transsion/camera/app/common/storage/SaveRequest;

    move-result-object p1

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mConcurrentMediaSaver:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/MediaSaver;->addRequest(Lcom/transsion/camera/app/common/storage/SaveRequest;)V

    return-void
.end method

.method public addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Z)V
    .locals 0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[addPhotoSaveRequest] there is no data to save"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[addPhotoSaveRequest] there is no valid data need to save."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p5, :cond_2

    .line 157
    iget-object p5, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mSerialMediaSaver:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->buildPhotoSaveRequestForFuse(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;

    move-result-object p0

    invoke-virtual {p5, p0}, Lcom/transsion/camera/app/common/storage/MediaSaver;->addRequest(Lcom/transsion/camera/app/common/storage/SaveRequest;)V

    goto :goto_0

    .line 160
    :cond_2
    iget-object p5, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mConcurrentMediaSaver:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->buildPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;

    move-result-object p0

    invoke-virtual {p5, p0}, Lcom/transsion/camera/app/common/storage/MediaSaver;->addRequest(Lcom/transsion/camera/app/common/storage/SaveRequest;)V

    :goto_0
    return-void
.end method

.method public addVideoSaveRequest(Landroid/content/ContentValues;Landroid/net/Uri;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V
    .locals 0

    if-nez p1, :cond_0

    .line 193
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[addVideoSaveRequest] there is no valid data need to save."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 196
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->buildVideoSaveRequest(Landroid/content/ContentValues;Landroid/net/Uri;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;

    move-result-object p1

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mConcurrentMediaSaver:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/MediaSaver;->addRequest(Lcom/transsion/camera/app/common/storage/SaveRequest;)V

    return-void
.end method

.method public addVideoSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V
    .locals 0

    if-nez p1, :cond_0

    .line 183
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[addVideoSaveRequest] there is no valid data need to save."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 186
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->buildVideoSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;

    move-result-object p1

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mConcurrentMediaSaver:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/MediaSaver;->addRequest(Lcom/transsion/camera/app/common/storage/SaveRequest;)V

    return-void
.end method

.method protected abstract buildPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;
.end method

.method protected abstract buildPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)Lcom/transsion/camera/app/common/storage/SaveRequest;
.end method

.method protected abstract buildPhotoSaveRequestForFuse(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;
.end method

.method protected abstract buildVideoSaveRequest(Landroid/content/ContentValues;Landroid/net/Uri;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;
.end method

.method protected abstract buildVideoSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;
.end method

.method public clearTempFiles()V
    .locals 2

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTempCleared:Z

    .line 88
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final createTempVideoFile(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)Z
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->waitForTempClearedIfNeeded()V

    .line 122
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->createTempVideoFileImpl(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)Z

    move-result p0

    return p0
.end method

.method public final createTempVideoFile(Lcom/transsion/camera/app/common/mode/VideoFileSpec;)Z
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->waitForTempClearedIfNeeded()V

    .line 128
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->createTempVideoFileImpl(Lcom/transsion/camera/app/common/mode/VideoFileSpec;)Z

    move-result p0

    return p0
.end method

.method protected abstract createTempVideoFileImpl(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)Z
.end method

.method protected abstract createTempVideoFileImpl(Lcom/transsion/camera/app/common/mode/VideoFileSpec;)Z
.end method

.method protected abstract getAvailableSpaceInDirectory()J
.end method

.method public getLeftSpace(Landroid/content/Context;)J
    .locals 5

    .line 213
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mStorageVolume:Landroid/os/storage/StorageVolume;

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStorageVolume is null, please check."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-wide v0

    .line 217
    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->getAvailableSpace(Ljava/lang/String;)J

    move-result-wide v2

    .line 218
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mStorageAvailable:Z

    if-eqz p0, :cond_4

    const-wide/32 p0, 0x3200000

    cmp-long v4, v2, p0

    if-lez v4, :cond_1

    sub-long v0, v2, p0

    goto :goto_0

    :cond_1
    const-wide/16 p0, -0x5

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 p0, -0x4

    cmp-long p0, v2, p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    :cond_4
    :goto_0
    return-wide v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mIsInit:Z

    .line 71
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    .line 73
    new-instance p1, Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/storage/MediaSaver;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mSerialMediaSaver:Lcom/transsion/camera/app/common/storage/MediaSaver;

    .line 74
    new-instance p1, Lcom/transsion/camera/app/common/storage/MediaSaver;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/storage/MediaSaver;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mConcurrentMediaSaver:Lcom/transsion/camera/app/common/storage/MediaSaver;

    return-void
.end method

.method public removeProcessMedia(Landroid/net/Uri;)V
    .locals 1

    .line 252
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public setStorageAvailable(Z)V
    .locals 0

    .line 248
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mStorageAvailable:Z

    return-void
.end method

.method public unInit()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mIsInit:Z

    return-void
.end method

.method public updateStorageVolume(Landroid/os/storage/StorageVolume;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-void
.end method

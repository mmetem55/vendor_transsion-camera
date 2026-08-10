.class public Lcom/transsion/camera/app/common/storage/InternalStorageOperator;
.super Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;
.source "InternalStorageOperator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/storage/InternalStorageOperator$VideoSaveRequest;,
        Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveFuseRequest;,
        Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;,
        Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;
    }
.end annotation


# static fields
.field private static final DEFAULT_THRESHOLD_MAX_BYTES:J


# instance fields
.field private mTempVideoFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1f4

    .line 47
    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->toMebibytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->DEFAULT_THRESHOLD_MAX_BYTES:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;-><init>()V

    return-void
.end method

.method private static getMemoryLowThreshold(Landroid/content/Context;)J
    .locals 2

    .line 482
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->getStorageLowBytes(Ljava/io/File;Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getStorageLowBytes(Ljava/io/File;Landroid/content/Context;)J
    .locals 4

    .line 490
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sys_storage_threshold_percentage"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 492
    invoke-virtual {p0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    mul-long/2addr v2, v0

    const-wide/16 v0, 0x64

    div-long/2addr v2, v0

    .line 494
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-wide v0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->DEFAULT_THRESHOLD_MAX_BYTES:J

    const-string p1, "sys_storage_threshold_max_bytes"

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p0

    .line 497
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private static isMemoryLow(Landroid/content/Context;)Z
    .locals 4

    .line 478
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->getMemoryLowThreshold(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static toMebibytes(J)J
    .locals 2

    const-wide/32 v0, 0x100000

    mul-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method protected buildPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;
    .locals 8

    .line 52
    new-instance v7, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;-><init>(Lcom/transsion/camera/app/common/storage/InternalStorageOperator;Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-object v7
.end method

.method protected buildPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)Lcom/transsion/camera/app/common/storage/SaveRequest;
    .locals 8

    .line 63
    new-instance v7, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;-><init>(Lcom/transsion/camera/app/common/storage/InternalStorageOperator;Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-object v7
.end method

.method protected buildPhotoSaveRequestForFuse(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;
    .locals 8

    .line 58
    new-instance v7, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveFuseRequest;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveFuseRequest;-><init>(Lcom/transsion/camera/app/common/storage/InternalStorageOperator;Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-object v7
.end method

.method protected buildVideoSaveRequest(Landroid/content/ContentValues;Landroid/net/Uri;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;
    .locals 7

    .line 75
    new-instance v6, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$VideoSaveRequest;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$VideoSaveRequest;-><init>(Lcom/transsion/camera/app/common/storage/InternalStorageOperator;Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-object v6
.end method

.method protected buildVideoSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;
    .locals 7

    .line 69
    new-instance v6, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$VideoSaveRequest;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$VideoSaveRequest;-><init>(Lcom/transsion/camera/app/common/storage/InternalStorageOperator;Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-object v6
.end method

.method public createTempVideoFile(Lcom/transsion/camera/app/common/mode/VideoFileSpec;I[Landroidx/documentfile/provider/DocumentFile;)Z
    .locals 1

    .line 126
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 127
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".videorecorder"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".tmp"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->mTempVideoFilePath:Ljava/lang/String;

    .line 128
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->setFileTempPath(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected createTempVideoFileImpl(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)Z
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".videorecorder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->mTempVideoFilePath:Ljava/lang/String;

    .line 135
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setFileTempPath(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    const/4 p0, 0x1

    return p0
.end method

.method protected createTempVideoFileImpl(Lcom/transsion/camera/app/common/mode/VideoFileSpec;)Z
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".videorecorder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->mTempVideoFilePath:Ljava/lang/String;

    .line 121
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->setFileTempPath(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public deleteTempVideoFile()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->mTempVideoFilePath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 191
    iput-object v1, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->mTempVideoFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 193
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public deleteTempVideoFile(Ljava/lang/String;)Z
    .locals 3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file is not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 185
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method protected getAvailableSpaceInDirectory()J
    .locals 5

    .line 80
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 83
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    mul-long/2addr v2, v0

    const-wide/32 v0, 0x7800000

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    move-wide v2, v0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "storage getAvailableSpaceInDirectory : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :catch_0
    move-exception v0

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Fail to access internal storage"

    invoke-static {p0, v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, -0x3

    return-wide v0

    :cond_2
    :goto_0
    const-wide/16 v0, -0x4

    return-wide v0
.end method

.method public getBucketId()Ljava/lang/String;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCameraDirectory()Ljava/lang/String;
    .locals 1

    .line 101
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getExternalStoragePublicDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Camera"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLeftSpace(Landroid/content/Context;)J
    .locals 1

    .line 470
    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->isMemoryLow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "isMemoryLow"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    return-wide p0

    .line 474
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getVideoTempFd(Ljava/lang/String;)Ljava/io/FileDescriptor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoTempFileSize()J
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->mTempVideoFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->mTempVideoFilePath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 171
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public insertProcessMedia(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .line 509
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 511
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public makeCameraDirectory()Z
    .locals 1

    .line 111
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public renameTempVideoFile(Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public renameTempVideoFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 142
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 146
    :cond_0
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

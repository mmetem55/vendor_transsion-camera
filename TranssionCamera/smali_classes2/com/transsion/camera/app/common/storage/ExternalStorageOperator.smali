.class public Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;
.super Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;
.source "ExternalStorageOperator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;,
        Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;
    }
.end annotation


# instance fields
.field private mCameraDirectoryPath:Ljava/lang/String;

.field private mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

.field private mDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mExternalCacheDir:Ljava/io/File;

.field private mRootFolder:Landroidx/documentfile/provider/DocumentFile;

.field private mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

.field private mUuid:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$NQ8CiJiVAw24V2BL74EkIp73Y74(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroidx/documentfile/provider/DocumentFile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->lambda$makeCameraDirectory$0(Landroidx/documentfile/provider/DocumentFile;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->getExternalVolumeNames(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;)Landroidx/documentfile/provider/DocumentFile;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->writeVideoFile(Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->getFileExtFromMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;)Landroidx/documentfile/provider/DocumentFile;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    return-object p0
.end method

.method static synthetic access$402(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroidx/documentfile/provider/DocumentFile;)Landroidx/documentfile/provider/DocumentFile;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    return-object p1
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->closeDescriptor()V

    return-void
.end method

.method private closeDescriptor()V
    .locals 1

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    const/4 v0, 0x0

    .line 293
    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 294
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "CloseDescriptor"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 297
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private getExternalVolumeNames(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 642
    :try_start_0
    const-class v1, Landroid/provider/MediaStore;

    const-string v2, "getExternalVolumeNames"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    .line 643
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_2

    .line 644
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 645
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mUuid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 646
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 647
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 648
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExternalVolumeNames,uuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 652
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "external_primary"

    .line 653
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 654
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExternalVolumeNames,volume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 660
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getExternalVolumeNames error"

    invoke-static {p0, v1, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-object v0
.end method

.method private getFileExtFromMime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "video/mp4"

    .line 630
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ".mp4"

    return-object p0

    :cond_0
    const-string v0, "video/3gp"

    .line 632
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, ".3gp"

    return-object p0

    .line 635
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimeType is wrong when save video, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method private getVideoTempFd()Ljava/io/FileDescriptor;
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "rw"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 283
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$makeCameraDirectory$0(Landroidx/documentfile/provider/DocumentFile;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "Camera"

    .line 167
    invoke-virtual {p1, v0}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 169
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/documentfile/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    :cond_1
    return-void
.end method

.method private writeVideoFile(Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 686
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    if-nez v1, :cond_0

    .line 687
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->makeCameraDirectory()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_0
    if-nez p1, :cond_1

    .line 706
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 707
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return-void

    .line 693
    :cond_1
    :try_start_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 694
    :try_start_2
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 p2, 0x400

    :try_start_3
    new-array p2, p2, [B

    :goto_0
    const/4 v1, -0x1

    .line 698
    invoke-virtual {p1, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-eq v1, v2, :cond_2

    const/4 v1, 0x0

    .line 699
    invoke-virtual {p0, p2, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 701
    :cond_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 706
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 707
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p2

    move-object v0, p0

    move-object p0, p2

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v3, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v3

    goto :goto_1

    :catch_0
    move-object p1, v0

    :catch_1
    move-object v0, p0

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object p1, v0

    .line 706
    :goto_1
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 707
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 708
    throw p0

    :catch_2
    move-object p1, v0

    .line 706
    :goto_2
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 707
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return-void
.end method


# virtual methods
.method protected buildPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;
    .locals 8

    .line 93
    new-instance v7, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;-><init>(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-object v7
.end method

.method protected buildPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)Lcom/transsion/camera/app/common/storage/SaveRequest;
    .locals 8

    .line 98
    new-instance v7, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;-><init>(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-object v7
.end method

.method protected buildPhotoSaveRequestForFuse(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;
    .locals 8

    .line 104
    new-instance v7, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;-><init>(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-object v7
.end method

.method protected buildVideoSaveRequest(Landroid/content/ContentValues;Landroid/net/Uri;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;
    .locals 7

    .line 116
    new-instance v6, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;-><init>(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-object v6
.end method

.method protected buildVideoSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;
    .locals 7

    .line 110
    new-instance v6, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;-><init>(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-object v6
.end method

.method public createTempVideoFile(Lcom/transsion/camera/app/common/mode/VideoFileSpec;I[Landroidx/documentfile/provider/DocumentFile;)Z
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "makeCameraDirectory again in createTempVideoFile."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->makeCameraDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "makeCameraDirectory failed in createTempVideoFile."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".videorecorder_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraDirectoryPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->setFileTempPath(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v2, p2}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    aput-object v0, p3, v1

    if-nez v0, :cond_1

    .line 346
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->deleteTempVideoFile(Ljava/lang/String;)Z

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0, v2, p2}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p2

    aput-object p2, p3, v1

    .line 348
    iget-object p2, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createTempVideoFile] mTempVideoFile is null,and create it again:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    const/4 p2, 0x0

    .line 351
    aget-object p3, p3, v1

    if-eqz p3, :cond_2

    .line 352
    invoke-virtual {p3}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p3

    .line 354
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "rw"

    invoke-virtual {p0, p3, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 356
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 359
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 362
    invoke-virtual {p2}, Ljava/io/FileDescriptor;->valid()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 363
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->setFileDescriptor(Ljava/io/FileDescriptor;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method protected createTempVideoFileImpl(Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;)Z
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "makeCameraDirectory again in createTempVideoFile."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->makeCameraDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "makeCameraDirectory failed in createTempVideoFile."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->deleteTempVideoFile()V

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    const-string v1, "application/octet-stream"

    const-string v2, ".videorecorder"

    invoke-virtual {v0, v1, v2}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_1

    .line 196
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->deleteTempVideoFile(Ljava/lang/String;)Z

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0, v1, v2}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[createTempVideoFile] mTempVideoFile is null,and create it again:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 200
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraDirectoryPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setFileTempPath(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    .line 201
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->getVideoTempFd()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;->setFileDescriptor(Ljava/io/FileDescriptor;)Lcom/transsion/camera/app/common/mode/VideoFileInfo$Builder;

    const/4 p0, 0x1

    return p0
.end method

.method protected createTempVideoFileImpl(Lcom/transsion/camera/app/common/mode/VideoFileSpec;)Z
    .locals 4

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "makeCameraDirectory again in createTempVideoFile."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->makeCameraDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "makeCameraDirectory failed in createTempVideoFile."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->deleteTempVideoFile()V

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraDirectoryPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".videorecorder"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->setFileTempPath(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    const-string v3, "application/octet-stream"

    invoke-virtual {v0, v3, v2}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_1

    .line 317
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->deleteTempVideoFile(Ljava/lang/String;)Z

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0, v3, v2}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[createTempVideoFile] mTempVideoFile is null,and create it again:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 321
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->getVideoTempFd()Ljava/io/FileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 323
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->setFileDescriptor(Ljava/io/FileDescriptor;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public deleteTempVideoFile()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    const/4 v1, 0x0

    .line 382
    iput-object v1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    :cond_0
    return-void
.end method

.method public deleteTempVideoFile(Ljava/lang/String;)Z
    .locals 6

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_0

    .line 251
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "deleteTempVideoFile mCameraFolder is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mUuid:Ljava/lang/String;

    const-string v1, "com.android.externalstorage.documents"

    invoke-static {v1, v0}, Landroid/provider/DocumentsContract;->buildTreeDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%3A"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 256
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 258
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file is not exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 261
    :cond_1
    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    move-result v1

    .line 262
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "document file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " deleted success : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v1, :cond_3

    .line 264
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraDirectoryPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "temp video file is not exist."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 269
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    :cond_3
    return v1
.end method

.method protected getAvailableSpaceInDirectory()J
    .locals 7

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mExternalCacheDir:Ljava/io/File;

    const-wide/16 v1, -0x3

    if-nez v0, :cond_0

    return-wide v1

    .line 129
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mExternalCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 134
    :cond_1
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mExternalCacheDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v5

    mul-long/2addr v3, v5

    const-wide/32 v5, 0x2000000

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    move-wide v3, v5

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storage getAvailableSpaceInDirectory : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    :catch_0
    move-exception v0

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "Fail to access external storage"

    invoke-static {p0, v3, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v1

    .line 130
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "storage path can not write"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v0, -0x4

    return-wide v0
.end method

.method public getBucketId()Ljava/lang/String;
    .locals 1

    .line 390
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->getCameraDirectory()Ljava/lang/String;

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
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraDirectoryPath:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoTempFd(Ljava/lang/String;)Ljava/io/FileDescriptor;
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0, p1}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoTempFd exist already: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    const/4 v1, 0x0

    const-string v2, "."

    .line 223
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video/mp4"

    .line 222
    invoke-virtual {v0, v2, v1}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 225
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoTempFd create failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 228
    :cond_1
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    .line 230
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "rw"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 232
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 235
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_2
    return-object v1
.end method

.method public getVideoTempFileSize()J
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p0}, Landroidx/documentfile/provider/DocumentFile;->length()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public insertProcessMedia(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .line 672
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->getExternalVolumeNames(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 673
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 676
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isReady()Z
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mExternalCacheDir:Ljava/io/File;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public makeCameraDirectory()Z
    .locals 5

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeCameraDirectory mRootFolder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mRootFolder:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mRootFolder:Landroidx/documentfile/provider/DocumentFile;

    .line 165
    new-instance v1, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroidx/documentfile/provider/DocumentFile;)V

    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x0

    .line 174
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v4}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    if-eqz p0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    :catch_0
    move-exception p0

    .line 176
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v3
.end method

.method public renameTempVideoFile(Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;)Z
    .locals 0

    .line 372
    invoke-virtual {p1, p2}, Landroidx/documentfile/provider/DocumentFile;->renameTo(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 373
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mTempVideoFile:Landroidx/documentfile/provider/DocumentFile;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public renameTempVideoFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraFolder:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0, p1}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rename failed, src file is not exist: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 212
    :cond_0
    invoke-virtual {v0, p2}, Landroidx/documentfile/provider/DocumentFile;->renameTo(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method updateDocumentFolder(Landroidx/documentfile/provider/DocumentFile;)V
    .locals 2

    .line 86
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mRootFolder:Landroidx/documentfile/provider/DocumentFile;

    .line 87
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDocumentFolder mRootFolder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mRootFolder:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateStorageVolume(Landroid/os/storage/StorageVolume;)V
    .locals 7

    .line 69
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->updateStorageVolume(Landroid/os/storage/StorageVolume;)V

    .line 70
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mUuid:Ljava/lang/String;

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/storage/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mCameraDirectoryPath:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 76
    iget-object v4, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getExternalCacheDirs   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    .line 77
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    iput-object v3, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->mExternalCacheDir:Ljava/io/File;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

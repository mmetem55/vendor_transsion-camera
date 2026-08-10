.class Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;
.super Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;
.source "InternalStorageOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/InternalStorageOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoSaveRequest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/storage/InternalStorageOperator;Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V
    .locals 8

    .line 234
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    .line 235
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;-><init>(Lcom/transsion/camera/app/common/storage/InternalStorageOperator;Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-void
.end method

.method private saveFileWithCheck()Z
    .locals 3

    .line 281
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;->isDataValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mFilePath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    const-string v2, "_data"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mFilePath:Ljava/lang/String;

    .line 289
    :cond_1
    iput v1, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mRetryCount:I

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mData:[B

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;->writeJpegFile(Ljava/lang/String;[BLandroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method private writeJpegFile(Ljava/lang/String;[BLandroid/graphics/Bitmap;)Z
    .locals 6

    const-string v0, "[CapturePerformance] save data in file finish"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 308
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "filePath is null, invalid"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 311
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 312
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "[CapturePerformance] save data in file"

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 313
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p3, :cond_1

    .line 315
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p3, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 317
    :cond_1
    invoke-virtual {v3, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 319
    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 330
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    :catchall_0
    move-exception v2

    .line 313
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v2

    .line 321
    :try_start_5
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "Failed to save image,Exception:"

    invoke-static {v3, v4, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 322
    iget v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mRetryCount:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 323
    iput v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mRetryCount:I

    mul-int/lit8 v2, v2, 0x32

    int-to-long v1, v2

    .line 324
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 325
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to save image,the:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "th retry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 326
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;->writeJpegFile(Ljava/lang/String;[BLandroid/graphics/Bitmap;)Z

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 330
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p1

    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 331
    throw p1
.end method

.method private writeJpegFileFromUri()Z
    .locals 5

    .line 336
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    .line 340
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "./"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    .line 341
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "~/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 345
    :try_start_0
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    iget-object v2, v2, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 347
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 348
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 350
    :cond_2
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mData:[B

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    :goto_0
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    .line 353
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "openOutputStream fail"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 357
    :try_start_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "write data fail"

    invoke-static {p0, v3, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 360
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return v1

    :goto_1
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 361
    throw p0

    :cond_4
    :goto_2
    return v1
.end method


# virtual methods
.method getBaseUri()Landroid/net/Uri;
    .locals 0

    .line 295
    sget-object p0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object p0
.end method

.method isDataValid()Z
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mData:[B

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    if-nez v0, :cond_2

    .line 300
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "data is null or ContentValues is null , invalid"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public process()I
    .locals 4

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 241
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;->saveFileWithCheck()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[CapturePerformance] insertDatabase start"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->insertDatabase()V

    .line 246
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[CapturePerformance] insertDatabase finish"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 248
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;->writeJpegFileFromUri()Z

    move-result v0

    if-nez v0, :cond_3

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeJpegFileFromUri failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 255
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    if-eqz p0, :cond_2

    instance-of v0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;

    if-eqz v0, :cond_2

    .line 256
    check-cast p0, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;->removeProcessingMedia()V

    :cond_2
    const/4 p0, -0x1

    return p0

    .line 261
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[CapturePerformance] updateDatabase start"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->updateDatabase()V

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[CapturePerformance] updateDatabase finish"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    iget-object v2, v2, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->getImageInfoFormUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->getFastGoPhotoDebugTime(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_4

    int-to-long v2, v0

    .line 269
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 273
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    if-eqz p0, :cond_5

    instance-of v0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;

    if-eqz v0, :cond_5

    .line 274
    check-cast p0, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;->removeProcessingMedia()V

    :cond_5
    :goto_1
    return v1
.end method

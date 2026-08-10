.class Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveFuseRequest;
.super Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;
.source "InternalStorageOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/InternalStorageOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoSaveFuseRequest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/storage/InternalStorageOperator;Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveFuseRequest;->this$0:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    .line 368
    invoke-direct/range {p0 .. p6}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;-><init>(Lcom/transsion/camera/app/common/storage/InternalStorageOperator;Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    .line 369
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getCameraRelativePath()Ljava/lang/String;

    move-result-object p0

    const-string p1, "relative_path"

    invoke-virtual {p2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private saveFileWithCheck()Z
    .locals 4

    .line 391
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;->isDataValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 395
    :cond_0
    iput v1, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mRetryCount:I

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveFuseRequest;->this$0:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mData:[B

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveFuseRequest;->writeJpegFile(Landroid/content/ContentResolver;Landroid/net/Uri;[BLandroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method private writeJpegFile(Landroid/content/ContentResolver;Landroid/net/Uri;[BLandroid/graphics/Bitmap;)Z
    .locals 5

    .line 400
    invoke-static {p2}, Lcom/transsion/camera/utils/CameraUtil;->isUriValid(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 401
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "uri is invalid: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[CapturePerformance] save data in file"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 406
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    if-eqz p4, :cond_1

    .line 409
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p4, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 411
    :cond_1
    invoke-virtual {v2, p3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 414
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "save data in file, open uri failed."

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_3

    .line 417
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return v1

    :catchall_0
    move-exception v1

    if-eqz v2, :cond_4

    .line 406
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v1

    .line 418
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "Failed to save image,Exception:"

    invoke-static {v2, v3, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 419
    iget v1, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mRetryCount:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_5

    add-int/2addr v1, v0

    .line 420
    iput v1, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mRetryCount:I

    mul-int/lit8 v1, v1, 0x32

    int-to-long v0, v1

    .line 421
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 422
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save image,the:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "th retry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 423
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveFuseRequest;->writeJpegFile(Landroid/content/ContentResolver;Landroid/net/Uri;[BLandroid/graphics/Bitmap;)Z

    move-result p0

    return p0

    .line 426
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[CapturePerformance] save data in file finish"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public process()I
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] insertDatabase start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->insertDatabase()V

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] insertDatabase finish"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] updateDatabase start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->updateDatabase()V

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] updateDatabase finish"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 383
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveFuseRequest;->saveFileWithCheck()Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "saveFile failed, deleteDatabase."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->deleteDatabase()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

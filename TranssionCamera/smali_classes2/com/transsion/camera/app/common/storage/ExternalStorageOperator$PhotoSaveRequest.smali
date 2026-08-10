.class Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;
.super Lcom/transsion/camera/app/common/storage/SaveRequest;
.source "ExternalStorageOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoSaveRequest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V
    .locals 7

    .line 397
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    move-object v6, p6

    .line 398
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/common/storage/SaveRequest;-><init>(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-void
.end method

.method private isDataValid()Z
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mData:[B

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    if-nez v0, :cond_2

    .line 482
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "data is null or ContentValues is null, invalid"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private writeJpegFileFromUri()Z
    .locals 5

    .line 541
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

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    .line 545
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

    .line 546
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "~/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 550
    :try_start_0
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v2, v2, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 552
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 553
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 555
    :cond_2
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mData:[B

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    :goto_0
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    .line 558
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v2, v2, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "openOutputStream fail"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 562
    :try_start_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "write data fail"

    invoke-static {p0, v3, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 565
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return v1

    :goto_1
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 566
    throw p0

    :cond_4
    :goto_2
    return v1
.end method


# virtual methods
.method public process()I
    .locals 7

    .line 403
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->isDataValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    const-string v2, "_display_name"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 408
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    const-string v2, "mime_type"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 409
    iput v1, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mRetryCount:I

    .line 419
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    const/4 v2, -0x1

    const-string v3, "writeJpegFileFromUri failed: "

    const/4 v4, 0x0

    if-nez v0, :cond_2

    .line 420
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v5, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->access$000(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 422
    :try_start_0
    iget-object v5, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v5, v5, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v6, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 424
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 425
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v5, "insert db exception"

    invoke-static {v0, v5}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 426
    iput-object v4, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    .line 428
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 429
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->writeJpegFileFromUri()Z

    move-result v0

    if-nez v0, :cond_4

    .line 431
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 433
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 435
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 436
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "delete db exception1"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_1
    return v2

    .line 441
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "insert db fail"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_3

    .line 444
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->writeJpegFileFromUri()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 446
    :try_start_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 448
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 449
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "update db exception"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 451
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v2, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/CameraUtil;->getImageInfoFormUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->getFastGoPhotoDebugTime(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_3

    int-to-long v2, v0

    .line 455
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 458
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    if-eqz p0, :cond_4

    instance-of v0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;

    if-eqz v0, :cond_4

    .line 459
    check-cast p0, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;->removeProcessingMedia()V

    :cond_4
    :goto_3
    return v1

    .line 463
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 465
    :try_start_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 467
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 468
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$PhotoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v0, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "delete db exception2"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 470
    :goto_4
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    if-eqz p0, :cond_6

    instance-of v0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;

    if-eqz v0, :cond_6

    .line 471
    check-cast p0, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/MediaSaver$ProcessingMediaSaverListener;->removeProcessingMedia()V

    :cond_6
    return v2
.end method

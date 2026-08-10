.class Lcom/transsion/camera/feature/common/BaseCapture$3;
.super Ljava/lang/Object;
.source "BaseCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/common/BaseCapture;->savePicture([BIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/common/BaseCapture;

.field final synthetic val$data:[B

.field final synthetic val$format:I

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/common/BaseCapture;[BIII)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    iput-object p2, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$data:[B

    iput p3, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$width:I

    iput p4, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$height:I

    iput p5, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$format:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private encodeJpeg([BIII)[B
    .locals 8

    const/4 p0, 0x0

    const/16 v0, 0x11

    if-eq v0, p4, :cond_0

    .line 230
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid format: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0

    .line 233
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :try_start_1
    new-instance v7, Landroid/graphics/YuvImage;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move v3, p4

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 236
    new-instance p1, Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p2, 0x64

    invoke-virtual {v7, p1, p2, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 238
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 233
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 240
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 261
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    const-string v3, "savePicture start"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 264
    iget-object v2, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$data:[B

    iget v3, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$width:I

    iget v4, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$height:I

    iget v5, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$format:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/transsion/camera/feature/common/BaseCapture$3;->encodeJpeg([BIII)[B

    move-result-object v2

    if-nez v2, :cond_0

    .line 266
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "encode failed!!!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 267
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->triggerCaptureFailed()V

    return-void

    .line 279
    :cond_0
    iget-object v3, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    iget-object v3, v3, Lcom/transsion/camera/feature/common/BaseCapture;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 280
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v3

    const-string v4, "key_location"

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v8

    const v3, 0x14000

    .line 282
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromByte([BI)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 283
    new-instance v4, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;

    invoke-direct {v4}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;-><init>()V

    .line 284
    invoke-virtual {v4, v8}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateLocation(Landroid/location/Location;)V

    .line 285
    invoke-virtual {v4, v3}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateThumbnailSize(Landroid/graphics/Bitmap;)V

    .line 288
    iget-object v5, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    iget-object v5, v5, Lcom/transsion/camera/feature/common/BaseCapture;->mCameraId:Ljava/lang/String;

    invoke-static {v5}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "1"

    goto :goto_0

    :cond_1
    const-string v5, "0"

    .line 294
    :goto_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 295
    sget v7, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_USER_COMMENT:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "facing:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-virtual {v4, v6}, Lcom/transsion/camera/adapter/CameraResults;->setOtherValues(Ljava/util/Map;)V

    .line 298
    invoke-static {v2, v3, v4}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->writeExif([BLandroid/graphics/Bitmap;Lcom/transsion/camera/adapter/CameraResults;)[B

    move-result-object v2

    .line 299
    iget-object v3, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v3}, Lcom/transsion/camera/feature/common/BaseCapture;->access$300(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 300
    iget-object v3, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v3}, Lcom/transsion/camera/feature/common/BaseCapture;->access$300(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;->updateView([B)V

    .line 304
    :cond_2
    iget-object v3, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v3}, Lcom/transsion/camera/feature/common/BaseCapture;->access$400(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v3

    if-nez v3, :cond_3

    .line 305
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "mStorageOperator is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 306
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->triggerCaptureFailed()V

    return-void

    .line 309
    :cond_3
    iget-object v3, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    iget-object v5, v3, Lcom/transsion/camera/feature/common/BaseCapture;->mModeHelper:Lcom/transsion/camera/feature/common/CommonModeHelper;

    .line 311
    invoke-static {v3}, Lcom/transsion/camera/feature/common/BaseCapture;->access$400(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v7

    iget v9, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$width:I

    iget v10, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->val$height:I

    move-object v6, v2

    .line 310
    invoke-virtual/range {v5 .. v10}, Lcom/transsion/camera/feature/common/CommonModeHelper;->createContentValues([BLjava/lang/String;Landroid/location/Location;II)Landroid/content/ContentValues;

    move-result-object v3

    .line 313
    iget-object v4, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v4}, Lcom/transsion/camera/feature/common/BaseCapture;->access$400(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v4

    const/4 v5, 0x0

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$3;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    .line 314
    invoke-static {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$500(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    move-result-object p0

    .line 313
    invoke-interface {v4, v3, v2, v5, p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 317
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "savePicture end "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.class Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;
.super Landroid/os/Handler;
.source "DocumentImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DocImageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Landroid/os/Looper;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    .line 82
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 87
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 90
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x0

    if-ne p1, v1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 91
    :goto_0
    sget-object v2, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "DOC_PHOTO_HANDLE start "

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 92
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$100(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)[B

    move-result-object v4

    invoke-static {v4, v0}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromByte([BI)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$002(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 93
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$000(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    sget-boolean v3, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->sCheckDetectorLicense:Z

    if-nez v3, :cond_2

    goto/16 :goto_4

    .line 99
    :cond_2
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDocModeDebugSupport()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 100
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$100(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)[B

    move-result-object v5

    invoke-static {v3, v5, v4, p1}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$400(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;[BLandroid/graphics/Bitmap;Z)V

    :cond_3
    const-string v3, "scan start "

    .line 102
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 103
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$000(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/doc/utils/SmartCropper;->scan(Landroid/graphics/Bitmap;)[Landroid/graphics/Point;

    move-result-object v3

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scan done scan = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v5, 0x64

    const/4 v6, 0x4

    if-eqz v3, :cond_4

    .line 106
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v7, v1}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$502(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Z)Z

    const/16 v7, 0x8

    new-array v7, v7, [I

    .line 108
    aget-object v8, v3, v0

    iget v9, v8, Landroid/graphics/Point;->x:I

    aput v9, v7, v0

    .line 109
    iget v8, v8, Landroid/graphics/Point;->y:I

    aput v8, v7, v1

    .line 110
    aget-object v1, v3, v1

    iget v8, v1, Landroid/graphics/Point;->x:I

    const/4 v9, 0x2

    aput v8, v7, v9

    .line 111
    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v8, 0x3

    aput v1, v7, v8

    .line 112
    aget-object v1, v3, v9

    iget v9, v1, Landroid/graphics/Point;->x:I

    aput v9, v7, v6

    const/4 v9, 0x5

    .line 113
    iget v1, v1, Landroid/graphics/Point;->y:I

    aput v1, v7, v9

    const/4 v1, 0x6

    .line 114
    aget-object v3, v3, v8

    iget v8, v3, Landroid/graphics/Point;->x:I

    aput v8, v7, v1

    const/4 v1, 0x7

    .line 115
    iget v3, v3, Landroid/graphics/Point;->y:I

    aput v3, v7, v1

    const-string v1, "rectifyByBitmap start"

    .line 116
    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    iget-object v3, v1, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->xnetDocDetector:Lcom/youtu/ocr/docprocess/DocDetector;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$000(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v3, v8, v7}, Lcom/youtu/ocr/docprocess/DocDetector;->rectifyByBitmap(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$002(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    const-string v1, "rectifyByBitmap done"

    .line 118
    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDocModeDebugSupport()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 120
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 121
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$000(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3, v7, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 122
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 123
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v3, v1, v4, p1}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$600(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;[BLandroid/graphics/Bitmap;Z)V

    goto :goto_1

    .line 126
    :cond_4
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v1, v0}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$502(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Z)Z

    :cond_5
    :goto_1
    const-string v1, "xnetEnhance start"

    .line 128
    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    iget-object v3, v1, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->xnetDocDetector:Lcom/youtu/ocr/docprocess/DocDetector;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$000(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v3, v7, v6}, Lcom/youtu/ocr/docprocess/DocDetector;->xnnEnhance(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$002(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    const-string v1, "xnetEnhance end  "

    .line 130
    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 131
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 132
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$000(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3, v6, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 133
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v3, "DOC_PHOTO_HANDLE end "

    .line 134
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 136
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$100(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/exif/Exif;->getExif([B)Lcom/transsion/camera/utils/exif/ExifInterface;

    move-result-object v2

    .line 137
    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FLASH:I

    invoke-virtual {v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTag(I)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v3

    .line 140
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->getCameraId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "1"

    goto :goto_2

    :cond_6
    const-string v5, "0"

    .line 145
    :goto_2
    sget v6, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_USER_COMMENT:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "facing:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lcom/transsion/camera/utils/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v2

    const v5, 0x14000

    .line 147
    invoke-static {v1, v5}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromByte([BI)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 149
    new-instance v6, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;

    invoke-direct {v6}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;-><init>()V

    .line 150
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v7}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$700(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v7

    const-string v8, "key_location"

    invoke-virtual {v7, v8}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    .line 151
    invoke-virtual {v6, v7}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateLocation(Landroid/location/Location;)V

    const/4 v7, -0x1

    .line 152
    invoke-virtual {v6, v7}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateOrientation(I)V

    .line 153
    invoke-virtual {v6, v5}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateThumbnailSize(Landroid/graphics/Bitmap;)V

    .line 154
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {v6, v7}, Lcom/transsion/camera/adapter/CameraResults;->setOtherTags(Ljava/util/List;)V

    .line 158
    invoke-static {v1, v5, v6}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->writeExif([BLandroid/graphics/Bitmap;Lcom/transsion/camera/adapter/CameraResults;)[B

    move-result-object v1

    .line 159
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v2, v1}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$102(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;[B)[B

    .line 160
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$500(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 161
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$800(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    move-result-object v2

    invoke-interface {v2, v1, p1, v0}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->notifyPictureTaken([BZI)I

    .line 163
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v0, v1, v4, p1}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$900(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;[BLandroid/graphics/Bitmap;Z)V

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {p0, v4}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$002(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :goto_3
    return-void

    .line 94
    :cond_8
    :goto_4
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$100(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)[B

    move-result-object v3

    invoke-static {v1, v3, v4, p1}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$200(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;[BLandroid/graphics/Bitmap;Z)V

    .line 95
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$300(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor$DocImageHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->access$100(Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;)[B

    move-result-object p0

    invoke-interface {v1, p0, p1, v0}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->notifyPictureTaken([BZI)I

    const-string p0, "DOC_PHOTO_HANDLE error "

    .line 96
    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

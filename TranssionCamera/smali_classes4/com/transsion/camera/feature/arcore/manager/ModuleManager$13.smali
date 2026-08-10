.class Lcom/transsion/camera/feature/arcore/manager/ModuleManager$13;
.super Ljava/lang/Object;
.source "ModuleManager.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->takePicture(Lcom/transsion/camera/feature/arcore/common/capture/CaptureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

.field final synthetic val$pictureCallback:Lcom/transsion/camera/feature/arcore/common/capture/CaptureCallback;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;Lcom/transsion/camera/feature/arcore/common/capture/CaptureCallback;)V
    .locals 0

    .line 924
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$13;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$13;->val$pictureCallback:Lcom/transsion/camera/feature/arcore/common/capture/CaptureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPixelReadFail()V
    .locals 2

    .line 962
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$13;->val$pictureCallback:Lcom/transsion/camera/feature/arcore/common/capture/CaptureCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 963
    invoke-interface {p0, v0, v1, v1}, Lcom/transsion/camera/feature/arcore/common/capture/CaptureCallback;->onPixelDone([III)V

    :cond_0
    return-void
.end method

.method public onPixelReadFinished([III)V
    .locals 8

    .line 927
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$13;->val$pictureCallback:Lcom/transsion/camera/feature/arcore/common/capture/CaptureCallback;

    if-eqz v0, :cond_0

    .line 928
    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/camera/feature/arcore/common/capture/CaptureCallback;->onPixelDone([III)V

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$13;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {v0, p1, p2, p3}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$2000(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;[III)V

    .line 931
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 932
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 933
    new-instance v7, Landroid/graphics/YuvImage;

    invoke-static {p1, p2, p3}, Lcom/transsion/camera/utils/CameraUtil;->rgb2NV21NoAlpha([III)[B

    move-result-object v2

    const/16 v3, 0x11

    const/4 v6, 0x0

    move-object v1, v7

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 936
    new-instance p1, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p2, 0x64

    invoke-virtual {v7, p1, p2, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 938
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const p2, 0x14000

    .line 940
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromByte([BI)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 941
    new-instance p3, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;

    invoke-direct {p3}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;-><init>()V

    .line 942
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$13;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$2100(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v0

    const-string v1, "arcore"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 943
    invoke-virtual {p3, v0}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateLocation(Landroid/location/Location;)V

    .line 944
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$13;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$1700(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$2200(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;I)I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateOrientation(I)V

    .line 945
    invoke-virtual {p3, p2}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateThumbnailSize(Landroid/graphics/Bitmap;)V

    .line 946
    invoke-static {p1, p2, p3}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->writeExif([BLandroid/graphics/Bitmap;Lcom/transsion/camera/adapter/CameraResults;)[B

    move-result-object p1

    .line 947
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$13;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {p2}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$2400(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$13;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    .line 948
    invoke-static {p3}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$2300(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object p3

    invoke-interface {p3}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    .line 947
    invoke-virtual {p2, p1, v1, v0, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->createContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p2

    .line 949
    iget-object p3, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$13;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {p3}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$2300(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object p3

    new-instance v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$13$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$13$1;-><init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager$13;)V

    invoke-interface {p3, p2, p1, v1, v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    return-void
.end method

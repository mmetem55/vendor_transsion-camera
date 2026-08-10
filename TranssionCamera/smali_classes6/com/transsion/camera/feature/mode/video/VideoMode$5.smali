.class Lcom/transsion/camera/feature/mode/video/VideoMode$5;
.super Ljava/lang/Object;
.source "VideoMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/VideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/video/VideoMode;)V
    .locals 0

    .line 1012
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$5;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapture([B[BZI)V
    .locals 6

    const/4 v0, 0x0

    const-string v1, "key_location"

    const v2, 0x14000

    if-eqz p1, :cond_0

    .line 1022
    array-length v3, p1

    if-lez v3, :cond_0

    .line 1023
    invoke-static {p1, v2}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromByte([BI)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1024
    new-instance v4, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;

    invoke-direct {v4}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;-><init>()V

    .line 1025
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$5;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$3200(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v5

    invoke-interface {v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    .line 1026
    invoke-virtual {v4, v5}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateLocation(Landroid/location/Location;)V

    .line 1027
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$5;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {v5, p4}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$3300(Lcom/transsion/camera/feature/mode/video/VideoMode;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateOrientation(I)V

    .line 1028
    invoke-virtual {v4, p3}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateFlashState(Z)V

    .line 1029
    invoke-virtual {v4, v3}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateThumbnailSize(Landroid/graphics/Bitmap;)V

    .line 1030
    invoke-static {p1, v3, v4}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->writeExif([BLandroid/graphics/Bitmap;Lcom/transsion/camera/adapter/CameraResults;)[B

    move-result-object p1

    .line 1031
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$5;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {v3, p1, v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$3400(Lcom/transsion/camera/feature/mode/video/VideoMode;[BLandroid/graphics/Bitmap;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 1034
    array-length p1, p2

    if-lez p1, :cond_1

    .line 1035
    invoke-static {p2, v2}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromByte([BI)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1036
    new-instance v2, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;

    invoke-direct {v2}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;-><init>()V

    .line 1037
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$5;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$3500(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 1038
    invoke-virtual {v2, v1}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateLocation(Landroid/location/Location;)V

    .line 1039
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$5;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {v1, p4}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$3300(Lcom/transsion/camera/feature/mode/video/VideoMode;I)I

    move-result p4

    invoke-virtual {v2, p4}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateOrientation(I)V

    .line 1040
    invoke-virtual {v2, p3}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateFlashState(Z)V

    .line 1041
    invoke-virtual {v2, p1}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateThumbnailSize(Landroid/graphics/Bitmap;)V

    .line 1042
    invoke-static {p2, p1, v2}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->writeExif([BLandroid/graphics/Bitmap;Lcom/transsion/camera/adapter/CameraResults;)[B

    move-result-object p1

    .line 1043
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$5;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-static {p0, p1, v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$3400(Lcom/transsion/camera/feature/mode/video/VideoMode;[BLandroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public onRecording(I[F)V
    .locals 1

    .line 1015
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$5;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    if-eqz v0, :cond_0

    .line 1016
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode;->mGLRecorder:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->frameAvailable([FII)V

    :cond_0
    return-void
.end method

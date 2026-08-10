.class public Lcom/transsion/camera/app/common/mode/NullImageProcessor;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
.source "NullImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "NullCaptureData"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-void
.end method


# virtual methods
.method public algorithmMigrate(Z)V
    .locals 0

    .line 45
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "NullCaptureData algorithmMigrate"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public createProcessingMedia(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Lcom/transsion/camera/app/common/location/LocationManager;Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;Landroid/content/Context;)V
    .locals 0

    .line 25
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "NullCaptureData init"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected isNull()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onCameraClosed()V
    .locals 1

    .line 99
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "NullCaptureData onCameraClosed"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;)V
    .locals 0

    .line 94
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "NullCaptureData onCaptureCompleted"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureFailed()V
    .locals 1

    .line 84
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "NullCaptureData onCaptureFailed"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureStarted()V
    .locals 1

    .line 79
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "NullCaptureData onCaptureStarted"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onContinuousShotStart()V
    .locals 1

    .line 109
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onContinuousShotStart"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onContinuousShotStop()V
    .locals 1

    .line 114
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onContinuousShotStop"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onProcessedMediaUriSaved(Lcom/transsion/camera/app/common/provider/ProcessMediaItem;)V
    .locals 0

    return-void
.end method

.method public onTakePicture(Lcom/transsion/camera/app/common/mode/CaptureInfo;)V
    .locals 0

    .line 104
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onTakePicture"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onUpdateFastThumbSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 0

    .line 68
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "NullCaptureData onUpdateFastThumbSurface"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onUpdateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 0

    .line 62
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "NullCaptureData onUpdateThumbnailSurface"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public pause()V
    .locals 1

    .line 40
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "NullCaptureData pause"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public removeBgCaptureThumb()V
    .locals 1

    .line 89
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "NullCaptureData removeBgCaptureThumb"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 35
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "NullCaptureData resume"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public supportProcessingMedia()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public unInit()V
    .locals 1

    .line 30
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "NullCaptureData unInit"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updatePicSurface(Landroid/util/Size;IZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 0

    .line 50
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "NullCaptureData updatePicSurface"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .locals 0

    .line 74
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "NullCaptureData updateStorageOperator"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateYuvPicSurface(Landroid/util/Size;IZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 0

    .line 56
    sget-object p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "NullCaptureData updateYuvPicSurface"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

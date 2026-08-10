.class public Lcom/transsion/camera/app/common/mode/ProfessionImageProcessor;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
.source "ProfessionImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsoDoubled:Z


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ProfessionImageProcessor;->mIsoDoubled:Z

    return-void
.end method

.method private updateExif([B)[B
    .locals 2

    .line 35
    invoke-static {p1}, Lcom/transsion/camera/utils/exif/Exif;->getExif([B)Lcom/transsion/camera/utils/exif/ExifInterface;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 37
    sget v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTag(I)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    const/4 v1, -0x1

    if-eqz p0, :cond_1

    .line 40
    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/exif/ExifTag;->getValueAsInt(I)I

    move-result v1

    .line 42
    :cond_1
    new-instance p0, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;-><init>()V

    mul-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    .line 43
    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateIsoSpeedRatings(S)V

    .line 44
    invoke-static {p1, v0, p0}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->writeExif([B[BLcom/transsion/camera/adapter/CameraResults;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected doSaveJpeg([BLandroid/graphics/Bitmap;Z)V
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ProfessionImageProcessor;->mIsoDoubled:Z

    if-eqz v0, :cond_0

    .line 24
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ProfessionImageProcessor;->updateExif([B)[B

    move-result-object p1

    .line 28
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg([BLandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method protected updateParameters(Lcom/transsion/camera/app/common/mode/ProcesserParameters;)V
    .locals 0

    .line 49
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/ProcesserParameters;->isIsoDoubled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ProfessionImageProcessor;->mIsoDoubled:Z

    return-void
.end method

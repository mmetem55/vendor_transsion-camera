.class public Lcom/transsion/camera/app/common/provider/QuickCaptureItem;
.super Ljava/lang/Object;
.source "QuickCaptureItem.java"


# instance fields
.field private mCurBitmap:Landroid/graphics/Bitmap;

.field private mCurJpeg:[B

.field private mCurMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

.field private mIsBGImage:Z

.field private mWhichThumbnail:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->mCurBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getCurCameraMode()Lcom/transsion/camera/app/common/mode/ICameraMode;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->mCurMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method

.method public getCurJpeg()[B
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->mCurJpeg:[B

    return-object p0
.end method

.method public getWhichThumbnail()I
    .locals 0

    .line 41
    iget p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->mWhichThumbnail:I

    return p0
.end method

.method public isCurBGImage()Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->mIsBGImage:Z

    return p0
.end method

.method public setCurCameraMode(Lcom/transsion/camera/app/common/mode/ICameraMode;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->mCurMode:Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-void
.end method

.method public setJpegItem([BZ)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->mCurJpeg:[B

    .line 29
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->mIsBGImage:Z

    return-void
.end method

.method public setThumbnailItem(ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->mWhichThumbnail:I

    .line 24
    iput-object p2, p0, Lcom/transsion/camera/app/common/provider/QuickCaptureItem;->mCurBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

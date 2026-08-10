.class Lcom/transsion/camera/feature/wideselfie/ThumbnailInfo;
.super Ljava/lang/Object;
.source "ThumbnailInfo.java"


# instance fields
.field mFormat:I

.field mHeight:I

.field mOffset:Landroid/graphics/Point;

.field mThumbLocation:Landroid/graphics/Rect;

.field mThumbnail:[B

.field mWidth:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iget-object v0, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mData:[B

    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/ThumbnailInfo;->mThumbnail:[B

    .line 34
    iget v0, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mImageWidth:I

    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/ThumbnailInfo;->mWidth:I

    .line 35
    iget v0, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mImageHeight:I

    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/ThumbnailInfo;->mHeight:I

    .line 36
    iget v0, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mImageFormat:I

    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/ThumbnailInfo;->mFormat:I

    .line 38
    iget-object v0, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mThumbOffset:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/ThumbnailInfo;->mOffset:Landroid/graphics/Point;

    .line 40
    iget-object p1, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mThumbLocation:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/ThumbnailInfo;->mThumbLocation:Landroid/graphics/Rect;

    return-void
.end method

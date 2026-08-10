.class final Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;
.super Ljava/lang/Object;
.source "CommonPhotoImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JpegInfo"
.end annotation


# instance fields
.field private mBGImage:Z

.field private mHeight:I

.field private mJpeg:[B

.field private mResults:Lcom/transsion/camera/adapter/CameraResults;

.field private mWidth:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/adapter/CameraResults;[BIIZ)V
    .locals 0

    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 855
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;->mResults:Lcom/transsion/camera/adapter/CameraResults;

    .line 856
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;->mJpeg:[B

    .line 857
    iput p3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;->mWidth:I

    .line 858
    iput p4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;->mHeight:I

    .line 859
    iput-boolean p5, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;->mBGImage:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;)Lcom/transsion/camera/adapter/CameraResults;
    .locals 0

    .line 846
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;->mResults:Lcom/transsion/camera/adapter/CameraResults;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;)I
    .locals 0

    .line 846
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;->mWidth:I

    return p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;)I
    .locals 0

    .line 846
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;->mHeight:I

    return p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;)[B
    .locals 0

    .line 846
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;->mJpeg:[B

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;)Z
    .locals 0

    .line 846
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;->mBGImage:Z

    return p0
.end method

.class final Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;
.super Ljava/lang/Object;
.source "CommonVideoImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;
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

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->mResults:Lcom/transsion/camera/adapter/CameraResults;

    .line 406
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->mJpeg:[B

    .line 407
    iput p3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->mWidth:I

    .line 408
    iput p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->mHeight:I

    .line 409
    iput-boolean p5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->mBGImage:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)I
    .locals 0

    .line 396
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->mHeight:I

    return p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)[B
    .locals 0

    .line 396
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->mJpeg:[B

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)Z
    .locals 0

    .line 396
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->mBGImage:Z

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)Lcom/transsion/camera/adapter/CameraResults;
    .locals 0

    .line 396
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->mResults:Lcom/transsion/camera/adapter/CameraResults;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)I
    .locals 0

    .line 396
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->mWidth:I

    return p0
.end method

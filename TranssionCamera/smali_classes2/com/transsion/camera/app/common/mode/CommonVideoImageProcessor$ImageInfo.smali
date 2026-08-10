.class final Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;
.super Ljava/lang/Object;
.source "CommonVideoImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImageInfo"
.end annotation


# instance fields
.field private mBGImage:Z

.field private mData:[B

.field private mFormat:I

.field private mHeight:I

.field private mOrientation:I

.field private mWidth:I


# direct methods
.method constructor <init>([BIIIIZ)V
    .locals 0

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->mData:[B

    .line 388
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->mFormat:I

    .line 389
    iput p3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->mWidth:I

    .line 390
    iput p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->mHeight:I

    .line 391
    iput p5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->mOrientation:I

    .line 392
    iput-boolean p6, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->mBGImage:Z

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;)[B
    .locals 0

    .line 376
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->mData:[B

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;)I
    .locals 0

    .line 376
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->mWidth:I

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;)I
    .locals 0

    .line 376
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->mHeight:I

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;)I
    .locals 0

    .line 376
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->mFormat:I

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;)I
    .locals 0

    .line 376
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->mOrientation:I

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;)Z
    .locals 0

    .line 376
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;->mBGImage:Z

    return p0
.end method

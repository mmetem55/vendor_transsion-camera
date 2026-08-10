.class final Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;
.super Ljava/lang/Object;
.source "CommonPhotoImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
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

    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 836
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->mData:[B

    .line 837
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->mFormat:I

    .line 838
    iput p3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->mWidth:I

    .line 839
    iput p4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->mHeight:I

    .line 840
    iput p5, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->mOrientation:I

    .line 841
    iput-boolean p6, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->mBGImage:Z

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;)[B
    .locals 0

    .line 825
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->mData:[B

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;)I
    .locals 0

    .line 825
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->mWidth:I

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;)I
    .locals 0

    .line 825
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->mHeight:I

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;)I
    .locals 0

    .line 825
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->mFormat:I

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;)I
    .locals 0

    .line 825
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->mOrientation:I

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;)Z
    .locals 0

    .line 825
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;->mBGImage:Z

    return p0
.end method

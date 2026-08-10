.class final Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;
.super Ljava/lang/Object;
.source "CommonPhotoImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThumbnailInfo"
.end annotation


# instance fields
.field private mHeight:I

.field private mThumbnail:[B

.field private mWidth:I


# direct methods
.method constructor <init>([BII)V
    .locals 0

    .line 870
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 871
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;->mThumbnail:[B

    .line 872
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;->mWidth:I

    .line 873
    iput p3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;->mHeight:I

    return-void
.end method

.method static synthetic access$1300(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;)I
    .locals 0

    .line 864
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;->mWidth:I

    return p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;)I
    .locals 0

    .line 864
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;->mHeight:I

    return p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;)[B
    .locals 0

    .line 864
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;->mThumbnail:[B

    return-object p0
.end method

.class public abstract Lcom/transsion/camera/app/common/storage/SaveRequest;
.super Ljava/lang/Object;
.source "SaveRequest.java"


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mData:[B

.field protected mFilePath:Ljava/lang/String;

.field protected mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

.field protected mRetryCount:I

.field protected mUri:Landroid/net/Uri;

.field protected mValues:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mRetryCount:I

    .line 31
    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mData:[B

    .line 32
    iput-object p3, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mBitmap:Landroid/graphics/Bitmap;

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    .line 34
    iput-object p4, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mFilePath:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    .line 36
    iput-object p6, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public abstract process()I
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUri = "

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    if-eqz v1, :cond_0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", _data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    const-string v2, "_data"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

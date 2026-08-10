.class public Lcom/transsion/camera/app/common/provider/ProcessMediaItem;
.super Ljava/lang/Object;
.source "ProcessMediaItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;,
        Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCaptureThumbInfo:Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

.field private final mContentValues:Landroid/content/ContentValues;

.field public mIsPreProcessed:Z

.field private final mMediaStoreId:J

.field private mProcessMode:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

.field private final mProcessStatus:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

.field private mProgressPercentage:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/content/ContentValues;Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mProgressPercentage:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mIsPreProcessed:Z

    .line 24
    invoke-static {p4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mMediaStoreId:J

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mProcessStatus:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    .line 26
    iput-object p3, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 27
    iput-object p4, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mUri:Landroid/net/Uri;

    .line 28
    iput-object p5, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mContentValues:Landroid/content/ContentValues;

    .line 29
    iput-object p2, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mProcessMode:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    .line 30
    iput-object p6, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mCaptureThumbInfo:Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getCaptureThumbInfo()Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mCaptureThumbInfo:Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

    return-object p0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mContentValues:Landroid/content/ContentValues;

    return-object p0
.end method

.method public getMediaStoreId()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mMediaStoreId:J

    return-wide v0
.end method

.method public getPercentage()I
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mProgressPercentage:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getProcessMode()Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mProcessMode:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    return-object p0
.end method

.method public getProcessStatus()Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mProcessStatus:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProcessMediaItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMediaStoreId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mMediaStoreId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCaptureThumbInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mCaptureThumbInfo:Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

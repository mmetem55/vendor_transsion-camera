.class Lcom/transsion/camera/app/common/storage/InternalStorageOperator$VideoSaveRequest;
.super Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;
.source "InternalStorageOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/InternalStorageOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoSaveRequest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/storage/InternalStorageOperator;Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V
    .locals 8

    .line 432
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 433
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;-><init>(Lcom/transsion/camera/app/common/storage/InternalStorageOperator;Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-void
.end method

.method private renameVideoFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 458
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 459
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method getBaseUri()Landroid/net/Uri;
    .locals 0

    .line 454
    sget-object p0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public process()I
    .locals 3

    .line 439
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "insertDatabase start"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    const-string v2, "_data"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$VideoSaveRequest;->renameVideoFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->deleteTempVideoFile()V

    .line 446
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->insertDatabase()V

    .line 447
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "insertDatabase finish"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    return v1
.end method

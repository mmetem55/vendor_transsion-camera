.class Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;
.super Lcom/transsion/camera/app/common/storage/SaveRequest;
.source "ExternalStorageOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoSaveRequest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V
    .locals 7

    .line 573
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 574
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/common/storage/SaveRequest;-><init>(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-void
.end method

.method private insertOrUpdateDatabase(Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;)V
    .locals 5

    const-string v0, " finish"

    const/4 v1, 0x0

    .line 580
    :try_start_0
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    const-string v1, "insertDatabase"

    .line 585
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v3, v2, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->access$000(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 586
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v3, v3, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    .line 588
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mFilePath:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mFilePath:Ljava/lang/String;

    .line 589
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 590
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mFilePath:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->access$200(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;)V

    .line 592
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/documentfile/provider/DocumentFile;->renameTo(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 599
    :try_start_1
    iget-object p2, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object p2, p2, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 601
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 602
    throw p1
.end method


# virtual methods
.method public process()I
    .locals 5

    .line 607
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 608
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "ContentValues is null, invalid"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v2, "title"

    .line 611
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mValues:Landroid/content/ContentValues;

    const-string v3, "mime_type"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 613
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-static {v3, v2}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->access$300(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 614
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-static {v3}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->access$400(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 615
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-static {v3}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->access$400(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->insertOrUpdateDatabase(Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->access$500(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;)V

    .line 617
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->access$402(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroidx/documentfile/provider/DocumentFile;)Landroidx/documentfile/provider/DocumentFile;

    goto :goto_0

    .line 619
    :cond_1
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-static {v3}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->access$100(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v3

    const-string v4, ".videorecorder"

    invoke-virtual {v3, v4}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 621
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->insertOrUpdateDatabase(Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;)V

    .line 622
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$VideoSaveRequest;->this$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->deleteTempVideoFile()V

    :cond_2
    :goto_0
    return v1
.end method

.class public Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;
.super Lcom/transsion/camera/feature/mode/video/node/BaseNode;
.source "MediaDumpNode.java"


# static fields
.field private static final OUTPUT_DIR:Ljava/lang/String; = "/sdcard/DCIM/"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDumpRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/node/BaseNode;-><init>()V

    return-void
.end method

.method static dump(Lcom/transsion/camera/feature/mode/video/node/NodeData;)V
    .locals 5

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mData:[B

    if-nez v0, :cond_0

    .line 91
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "dump data is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/DCIM/Frames/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    .line 97
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "frame_%05d_I420_%dx%d.i420"

    .line 95
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :try_start_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mData:[B

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 99
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 102
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpFile write exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private dumpFile(Lcom/transsion/camera/feature/mode/video/node/NodeData;)V
    .locals 2

    .line 75
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mData:[B

    if-nez v0, :cond_0

    .line 76
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "dumpFile data is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 80
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;->getDumpFileName(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Ljava/lang/String;

    move-result-object p0

    .line 82
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :try_start_1
    iget-object p0, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mData:[B

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 82
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 85
    sget-object p1, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpFile write exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private getDumpFileName(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Ljava/lang/String;
    .locals 6

    .line 62
    iget p0, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFormat:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v4, "/sdcard/DCIM/"

    const/16 v5, 0x2008

    if-ne p0, v5, :cond_0

    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    .line 65
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    iget v2, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    iget p1, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mHeight:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "frame_%05d_I420_%dx%d.i420"

    .line 63
    invoke-static {v4, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 67
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    .line 69
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    iget v2, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    iget p1, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mHeight:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "frame_%05d_NV21_%dx%d.nv21"

    .line 67
    invoke-static {v4, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public process(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Z
    .locals 4

    if-nez p1, :cond_0

    .line 40
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "process data is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;->mDumpRange:Landroid/util/Range;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 48
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;->mDumpRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_1
    move v0, v1

    move v2, v0

    .line 51
    :goto_0
    iget v3, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    if-lt v3, v0, :cond_4

    if-ne v2, v1, :cond_2

    if-ne v3, v1, :cond_3

    :cond_2
    if-eq v2, v1, :cond_4

    if-gt v3, v2, :cond_4

    .line 54
    :cond_3
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;->dumpFile(Lcom/transsion/camera/feature/mode/video/node/NodeData;)V

    .line 57
    :cond_4
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/BaseNode;->process(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Z

    move-result p0

    return p0
.end method

.method public setDumpRange(Landroid/util/Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;->mDumpRange:Landroid/util/Range;

    return-void
.end method

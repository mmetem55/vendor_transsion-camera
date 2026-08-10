.class public Lathena/p;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Ljava/nio/ByteBuffer;


# instance fields
.field private b:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lathena/p;->b:Ljava/io/File;

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    :try_start_0
    iget-object p1, p0, Lathena/p;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 15
    :cond_0
    :goto_0
    sget-object p1, Lathena/p;->a:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_1

    const p1, 0x8028

    .line 16
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sput-object p1, Lathena/p;->a:Ljava/nio/ByteBuffer;

    :cond_1
    const/4 p1, 0x0

    .line 21
    :try_start_1
    iget-object v0, p0, Lathena/p;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x2000

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 22
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object p0, p0, Lathena/p;->b:Ljava/io/File;

    const-string v1, "rw"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    :try_start_3
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object p1

    .line 26
    sget-object v1, Lathena/p;->a:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 29
    invoke-static {}, Lathena/b;->a()Lathena/a;

    move-result-object v1

    invoke-virtual {v1}, Lathena/a;->g()Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 30
    sget-object v3, Lathena/p;->a:Ljava/nio/ByteBuffer;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    :goto_1
    const/16 v1, 0x2000

    if-ge v2, v1, :cond_2

    .line 33
    sget-object v1, Lathena/p;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v2, 0xa

    mul-int/2addr v3, v4

    invoke-virtual {v1, v3, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x0

    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 36
    sget-object v1, Lathena/p;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object p0, p1

    goto/16 :goto_d

    :catch_2
    move-exception v1

    move-object p0, p1

    :goto_2
    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    goto :goto_7

    :cond_3
    move-object p0, p1

    move-object v0, p0

    :goto_3
    if-eqz p1, :cond_4

    .line 43
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V

    goto :goto_4

    :catch_3
    move-exception p0

    goto :goto_5

    :cond_4
    :goto_4
    if-eqz p0, :cond_5

    .line 46
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    .line 50
    :goto_5
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :cond_5
    :goto_6
    if-eqz v0, :cond_8

    .line 55
    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_c

    :catch_4
    move-exception p0

    goto :goto_b

    :catchall_1
    move-exception p0

    move-object v0, p1

    move-object v1, v0

    goto :goto_e

    :catch_5
    move-exception p0

    move-object v1, p0

    move-object p0, p1

    move-object v0, p0

    .line 58
    :goto_7
    :try_start_6
    sget-object v2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz p1, :cond_6

    .line 62
    :try_start_7
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V

    goto :goto_8

    :catch_6
    move-exception p0

    goto :goto_9

    :cond_6
    :goto_8
    if-eqz p0, :cond_7

    .line 65
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_a

    .line 69
    :goto_9
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :cond_7
    :goto_a
    if-eqz v0, :cond_8

    .line 74
    :try_start_8
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_c

    .line 57
    :goto_b
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :cond_8
    :goto_c
    return-void

    :catchall_2
    move-exception v1

    :goto_d
    move-object v5, v0

    move-object v0, p0

    move-object p0, v1

    move-object v1, v5

    :goto_e
    if-eqz p1, :cond_9

    .line 75
    :try_start_9
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V

    goto :goto_f

    :catch_7
    move-exception p1

    goto :goto_10

    :cond_9
    :goto_f
    if-eqz v0, :cond_a

    .line 78
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_11

    .line 82
    :goto_10
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :cond_a
    :goto_11
    if-eqz v1, :cond_b

    .line 87
    :try_start_a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_12

    :catch_8
    move-exception p1

    .line 89
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 92
    :cond_b
    :goto_12
    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 14

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Lathena/b;->a()Lathena/a;

    move-result-object v1

    invoke-virtual {v1}, Lathena/a;->c()Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/transsion/athena/config/data/model/c;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    sget-object p0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "readBuffer passwords is empty"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v2, 0x0

    .line 13
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lathena/p;->b:Ljava/io/File;

    const-string v5, "rw"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 14
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 15
    :try_start_2
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v2

    const-wide/16 v5, 0x0

    .line 17
    invoke-virtual {v3, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 18
    sget-object v5, Lathena/p;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const v6, 0x8028

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 21
    sget-object v5, Lathena/p;->a:Ljava/nio/ByteBuffer;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    .line 22
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_6

    .line 25
    new-instance v5, Lathena/o;

    invoke-direct {v5, v1}, Lathena/o;-><init>([B)V

    const/4 v1, 0x1

    move v9, v1

    move v8, v7

    .line 28
    :goto_0
    sget-object v10, Lathena/p;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v10, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    if-ge v8, v10, :cond_6

    if-nez v8, :cond_1

    .line 31
    sget-object v10, Lathena/p;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v11, v8, 0xa

    mul-int/2addr v11, v6

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    .line 32
    new-array v11, v10, [B

    .line 33
    invoke-virtual {v3, v11, v7, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    goto :goto_1

    .line 35
    :cond_1
    sget-object v10, Lathena/p;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v11, v8, 0xa

    mul-int/2addr v11, v6

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    sget-object v11, Lathena/p;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v12, v8, -0x1

    add-int/lit8 v12, v12, 0xa

    mul-int/2addr v12, v6

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11

    sub-int/2addr v10, v11

    .line 36
    new-array v11, v10, [B

    .line 37
    invoke-virtual {v3, v11, v7, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 40
    :goto_1
    invoke-virtual {v5, v11}, Lathena/o;->a([B)[B

    move-result-object v10

    .line 42
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    :try_start_3
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v12, "tid"

    .line 44
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v12, "event"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v10, :cond_2

    goto :goto_2

    :cond_2
    move v10, v1

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_e

    :catch_0
    move-exception v10

    .line 48
    :try_start_4
    sget-object v12, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :goto_2
    move v10, v7

    :goto_3
    if-eqz v10, :cond_5

    if-nez v9, :cond_4

    :try_start_5
    const-string v9, "\n"

    .line 49
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :cond_4
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v9, v7

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_7

    :cond_6
    if-eqz v2, :cond_7

    .line 62
    :try_start_6
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V

    .line 65
    :cond_7
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception p0

    .line 69
    sget-object v1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 73
    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_b

    :catchall_1
    move-exception p0

    move-object v0, v2

    move-object v2, v4

    goto :goto_5

    :catch_3
    move-exception v1

    move-object v13, v4

    move-object v4, v2

    move-object v2, v13

    goto :goto_6

    :catchall_2
    move-exception p0

    move-object v0, v2

    :goto_5
    move-object v4, v2

    goto :goto_d

    :catch_4
    move-exception v1

    move-object v4, v2

    :goto_6
    move-object v13, v4

    move-object v4, v2

    move-object v2, v13

    goto :goto_7

    :catchall_3
    move-exception p0

    move-object v0, v2

    move-object v4, v0

    goto :goto_c

    :catch_5
    move-exception v1

    move-object v3, v2

    move-object v4, v3

    .line 74
    :goto_7
    :try_start_8
    sget-object v5, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 75
    iget-object p0, p0, Lathena/p;->b:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v2, :cond_8

    .line 79
    :try_start_9
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V

    goto :goto_8

    :catch_6
    move-exception p0

    goto :goto_9

    :cond_8
    :goto_8
    if-eqz v4, :cond_9

    .line 82
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_a

    .line 86
    :goto_9
    sget-object v1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :cond_9
    :goto_a
    if-eqz v3, :cond_a

    .line 90
    :try_start_a
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_b

    :catch_7
    move-exception p0

    .line 92
    sget-object v1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 97
    :cond_a
    :goto_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_4
    move-exception p0

    move-object v0, v2

    move-object v2, v3

    :goto_c
    move-object v3, v2

    :goto_d
    move-object v2, v0

    :goto_e
    if-eqz v2, :cond_b

    .line 98
    :try_start_b
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V

    goto :goto_f

    :catch_8
    move-exception v0

    goto :goto_10

    :cond_b
    :goto_f
    if-eqz v4, :cond_c

    .line 101
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_11

    .line 105
    :goto_10
    sget-object v1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :cond_c
    :goto_11
    if-eqz v3, :cond_d

    .line 109
    :try_start_c
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_12

    :catch_9
    move-exception v0

    .line 111
    sget-object v1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 114
    :cond_d
    :goto_12
    throw p0
.end method

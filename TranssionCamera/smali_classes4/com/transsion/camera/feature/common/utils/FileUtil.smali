.class public Lcom/transsion/camera/feature/common/utils/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static saveByteArrayToFile(Ljava/lang/String;[B)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 21
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, p0

    move v3, v1

    .line 22
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/2addr v3, v0

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 25
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    const/4 p0, 0x0

    .line 29
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    invoke-static {v2}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_6

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    .line 35
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    .line 33
    :goto_2
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 37
    :goto_3
    invoke-static {v2}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_1
    move-exception p0

    :goto_4
    invoke-static {v2}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 38
    throw p0

    :cond_1
    :goto_5
    move v0, v1

    :goto_6
    return v0
.end method

.class public final Lcom/faceunity/pta_art/utils/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public static copyFileTo(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 98
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 101
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 102
    invoke-virtual {v0, p1, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 105
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V

    .line 106
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 107
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    const/4 p0, 0x1

    return p0
.end method

.method public static createFile(Ljava/lang/String;)V
    .locals 1

    .line 52
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method public static deleteDirAndFile(Ljava/io/File;)V
    .locals 5

    if-eqz p0, :cond_4

    .line 118
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 120
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 121
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 123
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    invoke-static {v3}, Lcom/faceunity/pta_art/utils/FileUtil;->deleteDirAndFile(Ljava/io/File;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_4
    :goto_2
    return-void
.end method

.method public static deleteDirAndFile(Ljava/lang/String;)V
    .locals 1

    .line 112
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-static {v0}, Lcom/faceunity/pta_art/utils/FileUtil;->deleteDirAndFile(Ljava/io/File;)V

    return-void
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .locals 1

    .line 88
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 91
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static readFile(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 6

    const-string v0, "FileUtil"

    const/4 v1, 0x0

    .line 27
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v2, "readFile: e1"

    .line 29
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    :try_start_1
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v2, "readFile: e2"

    .line 34
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_0

    .line 39
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    .line 40
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readFile. path:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", length:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v2

    :catch_2
    move-exception p0

    const-string p1, "readFile: e3"

    .line 45
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v1
.end method

.method public static saveBitmapToFile(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 71
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 77
    :cond_0
    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 78
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 80
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 81
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 83
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static saveDataToFile(Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 59
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 64
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 65
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 66
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V

    .line 67
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    :goto_0
    return-void
.end method

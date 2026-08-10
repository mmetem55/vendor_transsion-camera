.class public Lcom/bytedance/labcv/core/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearDir(Ljava/io/File;)Z
    .locals 5

    .line 197
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 200
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 201
    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    .line 202
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 203
    invoke-static {v3}, Lcom/bytedance/labcv/core/util/FileUtils;->clearDir(Ljava/io/File;)Z

    .line 204
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 206
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 207
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static copyAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    .line 57
    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 58
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 59
    invoke-static {p0, v3, p1}, Lcom/bytedance/labcv/core/util/FileUtils;->copyAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static copyAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lcom/bytedance/labcv/core/util/FileUtils;->isAssetsDir(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "mkdir failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/bytedance/labcv/core/util/FileUtils;->copyAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 51
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {p0, v0}, Lcom/bytedance/labcv/core/util/FileUtils;->copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V

    :cond_3
    return-void
.end method

.method public static copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 82
    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x1000

    :try_start_0
    new-array p1, p1, [B

    .line 86
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_2

    const/4 v2, 0x0

    .line 87
    invoke-virtual {v0, p1, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 92
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 98
    :goto_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 100
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 102
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 104
    :goto_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_3

    .line 92
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 98
    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 100
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    .line 102
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 104
    :goto_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 105
    throw p1
.end method

.method public static declared-synchronized createtFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/bytedance/labcv/core/util/FileUtils;

    monitor-enter v0

    .line 226
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 227
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmssSSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static generateCacheFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 221
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateVideoFile()Ljava/lang/String;
    .locals 3

    .line 215
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mp4"

    .line 216
    invoke-static {v1}, Lcom/bytedance/labcv/core/util/FileUtils;->createtFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAssetsDir(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 65
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 66
    array-length p0, p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method public static removeFileNameExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 234
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x2e

    .line 235
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 236
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    .line 237
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static unzipAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z
    .locals 1

    .line 124
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 125
    invoke-static {v0, p2}, Lcom/bytedance/labcv/core/util/FileUtils;->unzipFile(Ljava/util/zip/ZipInputStream;Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 127
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static unzipFile(Ljava/lang/String;Ljava/io/File;)Z
    .locals 3

    .line 134
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 135
    invoke-static {v0, p1}, Lcom/bytedance/labcv/core/util/FileUtils;->unzipFile(Ljava/util/zip/ZipInputStream;Ljava/io/File;)Z

    move-result p0

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unzipFile ret ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/labcv/core/util/LogUtils;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 139
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "unzipFile ret =false"

    .line 141
    invoke-static {p0}, Lcom/bytedance/labcv/core/util/LogUtils;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static unzipFile(Ljava/util/zip/ZipInputStream;Ljava/io/File;)Z
    .locals 7

    const/4 v0, 0x0

    .line 147
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 150
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_2

    if-eqz p0, :cond_1

    .line 187
    :try_start_1
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 189
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return v0

    .line 157
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 159
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 161
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 162
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    goto :goto_2

    .line 166
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 168
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 169
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 172
    :goto_1
    invoke-virtual {p0, v4}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 173
    invoke-virtual {v3, v4, v0, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 174
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_1

    .line 176
    :cond_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_2
    if-nez v1, :cond_2

    .line 187
    :try_start_3
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 189
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return v2

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    .line 182
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p0, :cond_6

    .line 187
    :try_start_5
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    .line 189
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_4
    return v0

    :goto_5
    if-eqz p0, :cond_7

    .line 187
    :try_start_6
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception p0

    .line 189
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 192
    :cond_7
    :goto_6
    throw p1
.end method

.class public Lcom/transsion/ardrawlines/fileoperator/FileOperateManager;
.super Ljava/lang/Object;
.source "FileOperateManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)I
    .locals 3

    .line 99
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 100
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 102
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 104
    invoke-virtual {p0, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 106
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 107
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 4

    .line 40
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const-string v1, "TAG:"

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6587\u4ef6\u5220\u9664\u72b6\u6001--->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    .line 46
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 47
    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/transsion/ardrawlines/fileoperator/FileOperateManager;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6587\u4ef6\u5939\u5220\u9664\u72b6\u6001--->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public static getImgFileInCache(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 162
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "captures"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 164
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 167
    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-static {}, Lcom/transsion/ardrawlines/fileoperator/FileOperateManager;->getImgName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 172
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public static getImgFileInStorage(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/transsion/ardrawlines/R$string;->app_name:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 207
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 212
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/ardrawlines/fileoperator/FileOperateManager;->getImgName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 217
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 219
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private static getImgName()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVedioFileInCache(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 183
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "vedios"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 188
    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-static {}, Lcom/transsion/ardrawlines/fileoperator/FileOperateManager;->getVedioName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 193
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public static getVedioFileInStorage(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/transsion/ardrawlines/R$string;->app_name:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 231
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 236
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/ardrawlines/fileoperator/FileOperateManager;->getVedioName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 238
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 241
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 243
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private static getVedioName()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readData(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 76
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const p0, 0x8000

    new-array p0, p0, [B

    .line 79
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 81
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 82
    :goto_0
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    .line 83
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static refreshStorageFiles(Landroid/content/Context;Ljava/io/File;)V
    .locals 2

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 254
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static saveBitmapInCapture(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/io/File;
    .locals 5

    .line 119
    invoke-static {p0}, Lcom/transsion/ardrawlines/fileoperator/FileOperateManager;->getImgFileInStorage(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 121
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 122
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 123
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 124
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 125
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 126
    invoke-static {p0, v0}, Lcom/transsion/ardrawlines/fileoperator/FileOperateManager;->refreshStorageFiles(Landroid/content/Context;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to save bitmap to storage "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FileOperateManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public static saveBitmapInStorage(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/io/File;
    .locals 5

    .line 137
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 139
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 142
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 144
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 149
    :goto_0
    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 151
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 154
    :goto_1
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, p0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    return-object v0
.end method

.method public static scanFile(Landroid/content/Context;Ljava/io/File;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 266
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/String;

    .line 267
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    const/4 p1, 0x0

    .line 265
    invoke-static {p0, v1, v0, p1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method public static setDateName()Ljava/lang/String;
    .locals 3

    .line 274
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static writeData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 60
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    new-instance p0, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v0, "UTF-8"

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 64
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

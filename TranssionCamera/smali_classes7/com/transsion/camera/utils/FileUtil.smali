.class public Lcom/transsion/camera/utils/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/utils/FileUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/FileUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 173
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/FileUtil;->isAssetsDir(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 174
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 176
    sget-object p0, Lcom/transsion/camera/utils/FileUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "copyAssets mkdir failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 180
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 182
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/transsion/camera/utils/FileUtil;->copyAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 187
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 190
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v1}, Lcom/transsion/camera/utils/FileUtil;->copyAssetsToFileIfNeed(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static copyAssetsToFileIfNeed(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 70
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p3, :cond_0

    .line 72
    sget-object p0, Lcom/transsion/camera/utils/FileUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "copyAssetsToFileIfNeed "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " exists"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 75
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 p2, 0x1000

    :try_start_2
    new-array p2, p2, [B

    .line 79
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result p3

    if-ltz p3, :cond_1

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, p2, v0, p3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 83
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catchall_0
    move-exception p2

    .line 75
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz p0, :cond_2

    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private static deleteDirectory(Ljava/io/File;)Z
    .locals 6

    .line 228
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 233
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 234
    array-length v3, v0

    if-lez v3, :cond_3

    .line 235
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v2, v0, v4

    .line 236
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 237
    invoke-static {v2}, Lcom/transsion/camera/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v2

    goto :goto_1

    .line 239
    :cond_1
    invoke-static {v2}, Lcom/transsion/camera/utils/FileUtil;->deleteDirectory(Ljava/io/File;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-nez v2, :cond_4

    return v1

    .line 245
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    .line 229
    :cond_5
    :goto_3
    sget-object v0, Lcom/transsion/camera/utils/FileUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteDirectory failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .locals 1

    .line 217
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    .line 221
    :cond_0
    invoke-static {p0}, Lcom/transsion/camera/utils/FileUtil;->deleteDirectory(Ljava/io/File;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getAssertByte(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    .line 51
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    .line 53
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/FileUtil;->readStream(Ljava/io/InputStream;I)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p1

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_0
    move-object p0, v0

    goto :goto_3

    :catch_2
    move-exception p1

    move-object p0, v0

    .line 55
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_0

    .line 59
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_2
    return-object v0

    :catchall_1
    :goto_3
    if-eqz p0, :cond_1

    .line 59
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_4
    return-object v0
.end method

.method public static getAssertData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 36
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    .line 38
    new-array p1, p1, [B

    .line 39
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    .line 40
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_0

    .line 36
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p0

    .line 42
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    :goto_2
    return-object v1
.end method

.method public static getFileData(Ljava/io/File;)[B
    .locals 4

    .line 90
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :try_start_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v1, 0x1000

    :try_start_2
    new-array v1, v1, [B

    .line 94
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 95
    invoke-virtual {p0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    :try_start_3
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 90
    :try_start_5
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static isAssetsDir(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 196
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 197
    array-length p0, p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 199
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .locals 1

    .line 27
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 30
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static readStream(Ljava/io/InputStream;I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 106
    new-array p1, p1, [B

    .line 108
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 109
    invoke-virtual {v0, p1, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 112
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 113
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

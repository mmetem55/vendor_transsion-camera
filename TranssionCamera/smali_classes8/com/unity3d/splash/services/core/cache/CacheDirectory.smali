.class public Lcom/unity3d/splash/services/core/cache/CacheDirectory;
.super Ljava/lang/Object;


# instance fields
.field private _cacheDirName:Ljava/lang/String;

.field private _cacheDirectory:Ljava/io/File;

.field private _initialized:Z

.field private _type:Lcom/unity3d/splash/services/core/cache/CacheDirectoryType;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->_initialized:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    iput-object v0, p0, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->_type:Lcom/unity3d/splash/services/core/cache/CacheDirectoryType;

    iput-object p1, p0, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->_cacheDirName:Ljava/lang/String;

    return-void
.end method

.method private createNoMediaFile(Ljava/io/File;)V
    .locals 1

    new-instance p0, Ljava/io/File;

    const-string v0, ".nomedia"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Successfully created .nomedia file"

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "Using existing .nomedia file"

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Failed to create .nomedia file"

    invoke-static {p1, p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public createCacheDirectory(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method

.method public getCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    iget-boolean v0, p0, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->_initialized:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->_initialized:Z

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->_cacheDirName:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->createCacheDirectory(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Creating external cache directory failed"

    invoke-static {v2, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->testCacheDirectory(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->createNoMediaFile(Ljava/io/File;)V

    iput-object v0, p0, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    sget-object p1, Lcom/unity3d/splash/services/core/cache/CacheDirectoryType;->EXTERNAL:Lcom/unity3d/splash/services/core/cache/CacheDirectoryType;

    iput-object p1, p0, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->_type:Lcom/unity3d/splash/services/core/cache/CacheDirectoryType;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unity Ads is using external cache directory: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    return-object p0

    :cond_1
    const-string v0, "External media not mounted"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->testCacheDirectory(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    sget-object v0, Lcom/unity3d/splash/services/core/cache/CacheDirectoryType;->INTERNAL:Lcom/unity3d/splash/services/core/cache/CacheDirectoryType;

    iput-object v0, p0, Lcom/unity3d/splash/services/core/cache/CacheDirectory;->_type:Lcom/unity3d/splash/services/core/cache/CacheDirectoryType;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unity Ads is using internal cache directory: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p0, "Unity Ads failed to initialize cache directory"

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    return-object v1
.end method

.method public testCacheDirectory(Ljava/io/File;)Z
    .locals 7

    const-string p0, "UTF-8"

    const-string v0, "test"

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v3, v2

    new-array v4, v3, [B

    new-instance v5, Ljava/io/File;

    const-string v6, "UnityAdsTest.txt"

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v6, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v4, v1, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Failed to delete testfile "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    return v1

    :cond_1
    if-eq v6, v3, :cond_2

    const-string p0, "Read buffer size mismatch"

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    return v1

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    const-string p0, "Read buffer content mismatch"

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unity Ads exception while testing cache directory "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return v1
.end method

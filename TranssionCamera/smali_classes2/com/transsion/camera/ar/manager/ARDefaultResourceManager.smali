.class public Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;
.super Ljava/lang/Object;
.source "ARDefaultResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ar/manager/ARDefaultResourceManager$HOLDER;
    }
.end annotation


# static fields
.field private static final BIG_THUMBNAIL_DIR:Ljava/io/File;

.field private static final PREINSTALL_DIR:Ljava/io/File;

.field private static final SMALL_THUMBNAIL_DIR:Ljava/io/File;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ARDefaultResourceManage"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 43
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/faceunity/pta_art/constant/Constant;->filePath:Ljava/lang/String;

    const-string v2, "PREINSTALL"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;->PREINSTALL_DIR:Ljava/io/File;

    .line 44
    new-instance v1, Ljava/io/File;

    const-string v2, "small_thumbnail"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;->SMALL_THUMBNAIL_DIR:Ljava/io/File;

    .line 45
    new-instance v1, Ljava/io/File;

    const-string v2, "big_thumbnail"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;->BIG_THUMBNAIL_DIR:Ljava/io/File;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    :try_start_0
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;->ensureDefaultSmallThumbnail(Landroid/content/Context;)V

    .line 51
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;->ensureDefaultBigThumbnail(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 53
    sget-object v0, Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ARDefaultResourceManager: "

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ar/manager/ARDefaultResourceManager$1;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;-><init>()V

    return-void
.end method

.method private ensureDefaultBigThumbnail(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    sget-object p0, Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;->BIG_THUMBNAIL_DIR:Ljava/io/File;

    invoke-static {p0}, Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;->ensureNoMediaFile(Ljava/io/File;)V

    .line 87
    invoke-static {p1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getPreinstallBigThumbnail(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 88
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 91
    invoke-static {v0}, Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;->getBigThumbnailFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 94
    :try_start_0
    invoke-static {v1, v0}, Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;->saveFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_3

    .line 93
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p0

    :cond_4
    return-void
.end method

.method private ensureDefaultSmallThumbnail(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    sget-object p0, Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;->SMALL_THUMBNAIL_DIR:Ljava/io/File;

    invoke-static {p0}, Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;->ensureNoMediaFile(Ljava/io/File;)V

    .line 72
    invoke-static {p1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getPreinstallSmallThumbnail(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 73
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 76
    invoke-static {v0}, Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;->getSmallThumbnailFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 79
    :try_start_0
    invoke-static {v1, v0}, Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;->saveFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_3

    .line 78
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p0

    :cond_4
    return-void
.end method

.method public static ensureNoMediaFile(Ljava/io/File;)V
    .locals 2

    .line 27
    new-instance v0, Ljava/io/File;

    const-string v1, ".nomedia"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 30
    :cond_0
    :try_start_0
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->forceMkdirParent(Ljava/io/File;)V

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 33
    sget-object v0, Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ensureNoMediaFile: "

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static getBigThumbnailFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 62
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;->BIG_THUMBNAIL_DIR:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".png"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSmallThumbnailFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 58
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/transsion/camera/ar/manager/ARDefaultResourceManager;->SMALL_THUMBNAIL_DIR:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".png"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static saveFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tmp_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->forceMkdirParent(Ljava/io/File;)V

    .line 102
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 103
    :try_start_0
    invoke-static {p0, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 105
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 102
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method


# virtual methods
.method public init()V
    .locals 0

    return-void
.end method

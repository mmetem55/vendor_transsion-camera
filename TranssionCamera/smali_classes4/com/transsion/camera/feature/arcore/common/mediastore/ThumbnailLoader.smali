.class public Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;
.super Ljava/lang/Object;
.source "ThumbnailLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;,
        Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$Media;,
        Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$TaskCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sCameraPath:Ljava/lang/String;

.field private static final sSdCardUriFromFilePath:Ljava/lang/String; = "content://com.android.externalstorage.documents/tree/%1$s%2$s3A/document/%3$s%4$s3ADCIM%5$s2FCamera%6$s2F%7$s"


# instance fields
.field private mLoadThumbnailTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ThumbnailLoader"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Camera"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;->sCameraPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 43
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;->sCameraPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;->getBitmapFromSdcard(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private cancelLoadThumbnail()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 108
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v1, 0x0

    .line 109
    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    .line 111
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static getBitmapFromSdcard(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    .line 343
    :try_start_0
    const-class v1, Landroid/content/ContentResolver;

    const-string v2, "loadThumbnail"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/net/Uri;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/util/Size;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Landroid/os/CancellationSignal;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    .line 344
    new-instance p1, Landroid/util/Size;

    const/16 v3, 0xc8

    invoke-direct {p1, v3, v3}, Landroid/util/Size;-><init>(II)V

    aput-object p1, v2, v7

    aput-object v0, v2, v8

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 347
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method public loadLatestThumbnail(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$TaskCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$TaskCallback;",
            ")V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;->cancelLoadThumbnail()V

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_0
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;-><init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$TaskCallback;Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$1;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v1, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    .line 93
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public loadThumbnailByUri(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$TaskCallback;Landroid/net/Uri;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$TaskCallback;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 101
    :try_start_0
    new-instance v6, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$LoadThumbnailTask;-><init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$TaskCallback;Landroid/net/Uri;Lcom/transsion/camera/feature/arcore/common/mediastore/ThumbnailLoader$1;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v6, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 102
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

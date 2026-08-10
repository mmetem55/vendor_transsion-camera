.class public Lcom/transsion/camera/manager/ThumbnailLoader;
.super Ljava/lang/Object;
.source "ThumbnailLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;,
        Lcom/transsion/camera/manager/ThumbnailLoader$Media;,
        Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final THUMBNAIL_SIZE:Landroid/util/Size;

.field private static final sCameraPath:Ljava/lang/String;


# instance fields
.field private mLoadThumbnailTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/transsion/camera/manager/ThumbnailItem;",
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

    sput-object v0, Lcom/transsion/camera/manager/ThumbnailLoader;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    sput-object v0, Lcom/transsion/camera/manager/ThumbnailLoader;->sCameraPath:Ljava/lang/String;

    .line 53
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x200

    const/16 v2, 0x180

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/transsion/camera/manager/ThumbnailLoader;->THUMBNAIL_SIZE:Landroid/util/Size;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/manager/ThumbnailLoader;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 43
    sget-object v0, Lcom/transsion/camera/manager/ThumbnailLoader;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/transsion/camera/manager/ThumbnailLoader;->sCameraPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Landroid/util/Size;
    .locals 1

    .line 43
    sget-object v0, Lcom/transsion/camera/manager/ThumbnailLoader;->THUMBNAIL_SIZE:Landroid/util/Size;

    return-object v0
.end method

.method private cancelLoadThumbnail()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/manager/ThumbnailLoader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/manager/ThumbnailLoader;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 113
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v1, 0x0

    .line 114
    iput-object v1, p0, Lcom/transsion/camera/manager/ThumbnailLoader;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    .line 116
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


# virtual methods
.method public loadLatestThumbnail(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;",
            ")V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Lcom/transsion/camera/manager/ThumbnailLoader;->cancelLoadThumbnail()V

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/manager/ThumbnailLoader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_0
    new-instance v1, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;-><init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;Lcom/transsion/camera/manager/ThumbnailLoader$1;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v1, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/manager/ThumbnailLoader;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    .line 100
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

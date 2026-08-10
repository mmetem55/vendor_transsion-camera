.class public Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;
.super Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;
.source "MovieView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;
.implements Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;
.implements Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;,
        Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IProgressListener;,
        Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IPlayerListener;
    }
.end annotation


# static fields
.field private static final GONE_STR:Ljava/lang/String; = "GONE"

.field private static final INVISIBLE_STR:Ljava/lang/String; = "INVISIBLE"

.field private static final MOVIE_VIEW_TAG:Ljava/lang/String; = "MovieView"

.field private static final VISIBLE_STR:Ljava/lang/String; = "VISIBLE"


# instance fields
.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private mMoviePath:Ljava/lang/String;

.field private mMoviePlayer:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

.field private final mPlayerListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IPlayerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressListener:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IProgressListener;

.field private final mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    new-instance p3, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$1;)V

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    .line 65
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mPlayerListeners:Ljava/util/Set;

    .line 101
    new-instance p3, Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MovieView"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 103
    invoke-virtual {p0}, Landroid/view/TextureView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 104
    sget p4, Lcom/transsion/camera/feature/movie/R$dimen;->default_movie_view_radius:I

    .line 105
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    .line 107
    sget-object p4, Lcom/transsion/camera/feature/movie/R$styleable;->MovieView:[I

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 109
    sget p2, Lcom/transsion/camera/feature/movie/R$styleable;->MovieView_radius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 111
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    new-instance p1, Lcom/transsion/camera/feature/mode/movie/ui/widget/RoundRectOutlineProvider;

    invoke-direct {p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RoundRectOutlineProvider;-><init>(F)V

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    .line 114
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setClipToOutline(Z)V

    .line 116
    sget-object p1, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;->CENTER_CROP:Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->setScaleType(Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;)V

    .line 118
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private checkThread()V
    .locals 1

    .line 390
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p0, v0, :cond_0

    return-void

    .line 391
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "cannot be in main thread"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private notifyOnCompleted()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "notifyOnCompleted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mPlayerListeners:Ljava/util/Set;

    monitor-enter v0

    .line 301
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mPlayerListeners:Ljava/util/Set;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 302
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IPlayerListener;

    .line 304
    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IPlayerListener;->onCompleted()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 302
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private notifyOnError(II)V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "notifyOnError"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mPlayerListeners:Ljava/util/Set;

    monitor-enter v0

    .line 346
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mPlayerListeners:Ljava/util/Set;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 347
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IPlayerListener;

    .line 349
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IPlayerListener;->onError(II)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 347
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private notifyOnStarted()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "notifyOnStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mPlayerListeners:Ljava/util/Set;

    monitor-enter v0

    .line 267
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mPlayerListeners:Ljava/util/Set;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 268
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IPlayerListener;

    .line 270
    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IPlayerListener;->onStarted()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 268
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private notifyOnStopped()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "notifyOnStopped"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mPlayerListeners:Ljava/util/Set;

    monitor-enter v0

    .line 284
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mPlayerListeners:Ljava/util/Set;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 285
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IPlayerListener;

    .line 287
    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IPlayerListener;->onStopped()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 285
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private printErrorExtra(I)V
    .locals 1

    const/16 v0, -0x3f2

    if-eq p1, v0, :cond_3

    const/16 v0, -0x3ef

    if-eq p1, v0, :cond_2

    const/16 v0, -0x3ec

    if-eq p1, v0, :cond_1

    const/16 v0, -0x6e

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "error extra MEDIA_ERROR_TIMED_OUT"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "error extra MEDIA_ERROR_IO"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "error extra MEDIA_ERROR_MALFORMED"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "error extra MEDIA_ERROR_UNSUPPORTED"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private visibilityStr(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/16 p0, 0x8

    if-ne p1, p0, :cond_0

    const-string p0, "GONE"

    return-object p0

    .line 248
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unexpected"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "INVISIBLE"

    return-object p0

    :cond_2
    const-string p0, "VISIBLE"

    return-object p0
.end method


# virtual methods
.method public addPlayerListener(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IPlayerListener;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mPlayerListeners:Ljava/util/Set;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mPlayerListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearPlayer()V
    .locals 3

    .line 576
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, ">> clearPlayer"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 578
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->checkThread()V

    .line 580
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    monitor-enter v0

    .line 581
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->setVideoSize(II)V

    const/4 v1, 0x0

    .line 582
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mMoviePlayer:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    .line 583
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "<< clearPlayer"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 583
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public createPlayer()V
    .locals 5

    .line 397
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, ">> createPlayer"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 399
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->checkThread()V

    .line 401
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    monitor-enter v0

    .line 402
    :try_start_0
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    sget-object v2, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;->VIDEO:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;

    invoke-direct {v1, v2}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;-><init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mMoviePlayer:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    .line 403
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->setVideoSize(II)V

    .line 404
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->setFailedToPrepareUiForPlayback(Z)V

    .line 406
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->isSurfaceTextureAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 408
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createPlayer texture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 409
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mMoviePlayer:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 411
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "createPlayer texture not available"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 413
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mMoviePlayer:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-virtual {v1, p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->setPlayerListener(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;)V

    .line 414
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mMoviePlayer:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-virtual {v1, p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->setProgressListener(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;)V

    .line 415
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "<< createPlayer"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 415
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    return-object p0
.end method

.method public getMoviePath()Ljava/lang/String;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mMoviePath:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getPivotX()F
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->getPivotX()F

    move-result p0

    return p0
.end method

.method public bridge synthetic getPivotY()F
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->getPivotY()F

    move-result p0

    return p0
.end method

.method public getProgressListener()Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IProgressListener;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mProgressListener:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IProgressListener;

    return-object p0
.end method

.method public isPlaying()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mMoviePlayer:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 152
    monitor-exit v0

    return p0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->isPlaying()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 155
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onCompleted()V
    .locals 0

    .line 293
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->notifyOnCompleted()V

    return-void
.end method

.method public onError(II)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onError, what MEDIA_ERROR_SERVER_DIED"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 313
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->printErrorExtra(I)V

    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onError, what MEDIA_ERROR_UNKNOWN"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 317
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->printErrorExtra(I)V

    .line 321
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->notifyOnError(II)V

    return-void
.end method

.method public onMovieSizeChanged(II)V
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMovieSizeChanged width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 359
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->setContentWidth(I)V

    .line 360
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->setContentHeight(I)V

    .line 362
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->updateTextureSize()V

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->setVideoSize(II)V

    .line 366
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    monitor-enter p1

    .line 367
    :try_start_0
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->isReadyForPlayback()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 368
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "run, onMovieSizeAvailable, notifyAll"

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 369
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 371
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 373
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "onMovieSizeChanged, size 0. Probably will be unable to start video"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 375
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    monitor-enter p1

    .line 376
    :try_start_1
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->setFailedToPrepareUiForPlayback(Z)V

    .line 377
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 378
    monitor-exit p1

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public onPrepared()V
    .locals 0

    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mProgressListener:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IProgressListener;

    if-eqz p0, :cond_0

    .line 385
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IProgressListener;->onProgressUpdate(I)V

    :cond_0
    return-void
.end method

.method public onStarted()V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->notifyOnStarted()V

    return-void
.end method

.method public onStopped()V
    .locals 0

    .line 276
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->notifyOnStopped()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 161
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, ">> onSurfaceTextureAvailable"

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 163
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    monitor-enter p2

    .line 164
    :try_start_0
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mMoviePlayer:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    if-eqz p3, :cond_0

    .line 165
    invoke-virtual {p3, p1}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->setVideoSize(II)V

    .line 168
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "mMediaPlayer null, cannot set surface texture"

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 171
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->setSurfaceTextureAvailable(Z)V

    .line 173
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->isReadyForPlayback()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 174
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "notify ready for playback"

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 175
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 177
    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "<< onSurfaceTextureAvailable"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 177
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 196
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, ">> onSurfaceTextureDestroyed"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    monitor-enter p1

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->setSurfaceTextureAvailable(Z)V

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 201
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "<< onSurfaceTextureDestroyed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 201
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .line 222
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 224
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">> onVisibilityChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->visibilityStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const/16 p1, 0x8

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    monitor-enter p1

    .line 232
    :try_start_0
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 233
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "<< onVisibilityChanged"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 233
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public pause()V
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, ">> pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 523
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->checkThread()V

    .line 525
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    monitor-enter v0

    .line 526
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mMoviePlayer:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->pause()V

    .line 527
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "<< pause"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 527
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public prepare()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, ">> prepare"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 479
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->checkThread()V

    .line 481
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    monitor-enter v0

    .line 482
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mMoviePlayer:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->prepare()V

    .line 483
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "<< prepare"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 483
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public release()V
    .locals 2

    .line 563
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, ">> release"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 565
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->checkThread()V

    .line 567
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    monitor-enter v0

    .line 568
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mMoviePlayer:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->release()V

    .line 569
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "<< release"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 569
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public removePlayerListener(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IPlayerListener;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mPlayerListeners:Ljava/util/Set;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mPlayerListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 130
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public reset()V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, ">> reset"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 552
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->checkThread()V

    .line 554
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    monitor-enter v0

    .line 555
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mMoviePlayer:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->reset()V

    .line 556
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "<< reset"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 556
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 4

    .line 456
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, ">> setDataSource"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 458
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->checkThread()V

    .line 460
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    monitor-enter v0

    .line 461
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource, assetFileDescriptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", this "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    :try_start_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mMoviePlayer:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    :try_start_2
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 470
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 472
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "<< setDataSource"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    .line 467
    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p0

    .line 470
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 4

    .line 435
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, ">> setDataSource"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 437
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->checkThread()V

    .line 439
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    monitor-enter v0

    .line 440
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource, path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", this "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    :try_start_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mMoviePlayer:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    :try_start_2
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mMoviePath:Ljava/lang/String;

    .line 448
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 450
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "<< setDataSource"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    .line 445
    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p0

    .line 448
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public setLoop(Z)V
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> setLoop loop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 424
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->checkThread()V

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    monitor-enter v0

    .line 427
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mMoviePlayer:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->setLooping(Z)V

    .line 428
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "<< setLoop"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 428
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public bridge synthetic setPivotX(F)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->setPivotX(F)V

    return-void
.end method

.method public bridge synthetic setPivotY(F)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->setPivotY(F)V

    return-void
.end method

.method public setProgressListener(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IProgressListener;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mProgressListener:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IProgressListener;

    return-void
.end method

.method public bridge synthetic setScaleType(Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView;->setScaleType(Lcom/transsion/camera/feature/mode/movie/ui/widget/ScalableTextureView$ScaleType;)V

    return-void
.end method

.method public start()V
    .locals 3

    .line 490
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, ">> start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    monitor-enter v0

    .line 493
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->isReadyForPlayback()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mMoviePlayer:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->start()V

    goto :goto_0

    .line 496
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "start, >> wait"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 497
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->isFailedToPrepareUiForPlayback()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 499
    :try_start_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    :try_start_2
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;->isReadyForPlayback()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 505
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mMoviePlayer:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->start()V

    goto :goto_0

    .line 507
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "start, movie is not ready, Player become STARTED state, but it will actually don\'t play"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 501
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 511
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "start, movie is not ready. Video size will not become available"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 515
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 517
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "<< start"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 515
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public stop()V
    .locals 2

    .line 534
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, ">> stop"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 536
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->checkThread()V

    .line 538
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$ReadyForPlayback;

    monitor-enter v0

    .line 540
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mMoviePlayer:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->mMoviePlayer:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->stop()V

    .line 543
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "<< stop"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 543
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

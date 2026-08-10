.class public Lcom/transsion/camera/feature/mode/movie/algorithm/stub/producer/NullMoviePlayback;
.super Ljava/lang/Object;
.source "NullMoviePlayback.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback<",
        "Landroid/view/SurfaceView;",
        ">;"
    }
.end annotation


# instance fields
.field private mPlayerListener:Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback$IPlayerListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectView(Landroid/view/SurfaceView;)V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public setPlayerListener(Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback$IPlayerListener;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/stub/producer/NullMoviePlayback;->mPlayerListener:Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback$IPlayerListener;

    return-void
.end method

.method public startPlay()V
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/stub/producer/NullMoviePlayback;->mPlayerListener:Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback$IPlayerListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback$IPlayerListener;->onCompleted()V

    return-void
.end method

.method public stopPlay()V
    .locals 0

    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method

.class public Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;
.super Ljava/lang/Object;
.source "PlayerManager.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;
.implements Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;
.implements Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IPlayerListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mExecutor:Lcom/transsion/camera/feature/mode/movie/player/util/Executor;

.field private mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

.field private final mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/transsion/camera/feature/mode/movie/player/PlayerState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->IDLE:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 46
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/movie/player/util/Executor;

    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->STARTING:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 116
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->STARTED:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 117
    :goto_1
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInPlaybackState, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private setNewViewForPlayback(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;)V
    .locals 3

    .line 191
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNewViewForPlayback, movieView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/movie/player/util/Executor;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/player/command/SetMovieView;

    invoke-direct {v1, p1, p1, p0}, Lcom/transsion/camera/feature/mode/movie/player/command/SetMovieView;-><init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->execute(Lcom/transsion/camera/feature/mode/movie/player/command/ICommand;)V

    return-void
.end method

.method private startPlayMovie(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;Landroid/content/res/AssetFileDescriptor;)V
    .locals 3

    .line 144
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlayMovie, mPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/movie/player/util/Executor;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->clearAllPendingCommands(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 147
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->stopResetReleaseClearCurrentPlayer()V

    .line 148
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->addPlayerListener(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IPlayerListener;)V

    .line 149
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->setNewViewForPlayback(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;)V

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->startPlayback(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

.method private startPlayMovie(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;Ljava/lang/String;)V
    .locals 3

    .line 122
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlayMovie, mPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/movie/player/util/Executor;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->clearAllPendingCommands(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 125
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->stopResetReleaseClearCurrentPlayer()V

    .line 126
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->addPlayerListener(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView$IPlayerListener;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->setNewViewForPlayback(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;)V

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->startPlayback(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;Ljava/lang/String;)V

    return-void
.end method

.method private startPlayback(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;Landroid/content/res/AssetFileDescriptor;)V
    .locals 4

    .line 155
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startPlayback"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/movie/player/util/Executor;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/transsion/camera/feature/mode/movie/player/command/BaseCommand;

    new-instance v2, Lcom/transsion/camera/feature/mode/movie/player/command/CreatePlayer;

    invoke-direct {v2, p1, p0}, Lcom/transsion/camera/feature/mode/movie/player/command/CreatePlayer;-><init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/transsion/camera/feature/mode/movie/player/command/SetAssetsDataSource;

    invoke-direct {v2, p1, p2, p0}, Lcom/transsion/camera/feature/mode/movie/player/command/SetAssetsDataSource;-><init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;Landroid/content/res/AssetFileDescriptor;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;)V

    const/4 p2, 0x1

    aput-object v2, v1, p2

    new-instance p2, Lcom/transsion/camera/feature/mode/movie/player/command/Prepare;

    invoke-direct {p2, p1, p0}, Lcom/transsion/camera/feature/mode/movie/player/command/Prepare;-><init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;)V

    const/4 v2, 0x2

    aput-object p2, v1, v2

    new-instance p2, Lcom/transsion/camera/feature/mode/movie/player/command/Start;

    invoke-direct {p2, p1, p0}, Lcom/transsion/camera/feature/mode/movie/player/command/Start;-><init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;)V

    const/4 p0, 0x3

    aput-object p2, v1, p0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->execute(Ljava/util/List;)V

    return-void
.end method

.method private startPlayback(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;Ljava/lang/String;)V
    .locals 4

    .line 132
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startPlayback"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/movie/player/util/Executor;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/transsion/camera/feature/mode/movie/player/command/BaseCommand;

    new-instance v2, Lcom/transsion/camera/feature/mode/movie/player/command/CreatePlayer;

    invoke-direct {v2, p1, p0}, Lcom/transsion/camera/feature/mode/movie/player/command/CreatePlayer;-><init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/transsion/camera/feature/mode/movie/player/command/SetPathDataSource;

    invoke-direct {v2, p1, p2, p0}, Lcom/transsion/camera/feature/mode/movie/player/command/SetPathDataSource;-><init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;Ljava/lang/String;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;)V

    const/4 p2, 0x1

    aput-object v2, v1, p2

    new-instance p2, Lcom/transsion/camera/feature/mode/movie/player/command/Prepare;

    invoke-direct {p2, p1, p0}, Lcom/transsion/camera/feature/mode/movie/player/command/Prepare;-><init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;)V

    const/4 v2, 0x2

    aput-object p2, v1, v2

    new-instance p2, Lcom/transsion/camera/feature/mode/movie/player/command/Start;

    invoke-direct {p2, p1, p0}, Lcom/transsion/camera/feature/mode/movie/player/command/Start;-><init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;)V

    const/4 p0, 0x3

    aput-object p2, v1, p0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->execute(Ljava/util/List;)V

    return-void
.end method

.method private stopResetReleaseClearCurrentPlayer()V
    .locals 3

    .line 197
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopResetReleaseClearCurrentPlayer, mMovieView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 198
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 200
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager$1;->$SwitchMap$com$transsion$camera$feature$mode$movie$player$PlayerState:[I

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 235
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal player state:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :pswitch_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/movie/player/util/Executor;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/player/command/Stop;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    invoke-direct {v1, v2, p0}, Lcom/transsion/camera/feature/mode/movie/player/command/Stop;-><init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->execute(Lcom/transsion/camera/feature/mode/movie/player/command/ICommand;)V

    .line 224
    :pswitch_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/movie/player/util/Executor;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/player/command/Reset;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    invoke-direct {v1, v2, p0}, Lcom/transsion/camera/feature/mode/movie/player/command/Reset;-><init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->execute(Lcom/transsion/camera/feature/mode/movie/player/command/ICommand;)V

    .line 228
    :pswitch_3
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/movie/player/util/Executor;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/player/command/Release;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    invoke-direct {v1, v2, p0}, Lcom/transsion/camera/feature/mode/movie/player/command/Release;-><init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->execute(Lcom/transsion/camera/feature/mode/movie/player/command/ICommand;)V

    .line 232
    :pswitch_4
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/movie/player/util/Executor;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/player/command/ClearPlayer;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    invoke-direct {v1, v2, p0}, Lcom/transsion/camera/feature/mode/movie/player/command/ClearPlayer;-><init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->execute(Lcom/transsion/camera/feature/mode/movie/player/command/ICommand;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 179
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> destroy, mPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/movie/player/util/Executor;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->pauseExecuting(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 182
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/movie/player/util/Executor;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->clearAllPendingCommands(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 183
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->stopResetReleaseClearCurrentPlayer()V

    .line 184
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/movie/player/util/Executor;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->resumeExecuting(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 185
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/movie/player/util/Executor;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->quitSafely()V

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< destroy, mPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public getPlayerState()Lcom/transsion/camera/feature/mode/movie/player/PlayerState;
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    return-object p0
.end method

.method public onCompleted()V
    .locals 1

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->PLAYBACK_COMPLETED:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(II)V
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p1, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->ERROR:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public onStarted()V
    .locals 0

    return-void
.end method

.method public onStopped()V
    .locals 0

    return-void
.end method

.method public playMovie(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;Landroid/content/res/AssetFileDescriptor;)V
    .locals 6

    .line 84
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> playMovie, mMovieView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", movieView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", assetFileDescriptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/movie/player/util/Executor;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->pauseExecuting(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 89
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, p1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    if-ne v1, p2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 94
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playMovie, currentPlayerIsActive "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isAlreadyPlayingTheFile: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v5, :cond_3

    .line 98
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playMovie, movieView "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is already in state "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 100
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_2

    .line 102
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->startPlayMovie(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;Landroid/content/res/AssetFileDescriptor;)V

    goto :goto_2

    .line 105
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->startPlayMovie(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;Landroid/content/res/AssetFileDescriptor;)V

    .line 108
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/movie/player/util/Executor;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->resumeExecuting(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 110
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<< playMovie, movieView "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public playMovie(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;Ljava/lang/String;)V
    .locals 5

    .line 51
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> playMovie, mMovieView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", movieView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/movie/player/util/Executor;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->pauseExecuting(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 56
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;->getMoviePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 61
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playMovie, currentPlayerIsActive "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isAlreadyPlayingTheFile: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v4, :cond_3

    .line 65
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playMovie, movieView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 67
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_2

    .line 69
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->startPlayMovie(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;Ljava/lang/String;)V

    goto :goto_2

    .line 72
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->startPlayMovie(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;Ljava/lang/String;)V

    .line 75
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/movie/player/util/Executor;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->resumeExecuting(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 77
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<< playMovie, movieView "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", path "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setMovieView(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    return-void
.end method

.method public setPlayerState(Lcom/transsion/camera/feature/mode/movie/player/PlayerState;)V
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public stopPlay()V
    .locals 3

    .line 167
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> stopPlay, mPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/movie/player/util/Executor;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->pauseExecuting(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 170
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/movie/player/util/Executor;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->clearAllPendingCommands(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 171
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->stopResetReleaseClearCurrentPlayer()V

    .line 172
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/movie/player/util/Executor;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->resumeExecuting(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< stopPlay, mPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

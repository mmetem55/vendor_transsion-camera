.class public abstract Lcom/transsion/camera/feature/mode/movie/player/command/BaseCommand;
.super Ljava/lang/Object;
.source "BaseCommand.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/player/command/ICommand;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCommandProcessor:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;

.field private mPlayerManagerCallBack:Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/player/command/BaseCommand;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/player/command/BaseCommand;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/player/command/BaseCommand;->mCommandProcessor:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;

    .line 30
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/player/command/BaseCommand;->mPlayerManagerCallBack:Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;

    return-void
.end method

.method private postExecute()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/command/BaseCommand;->mPlayerManagerCallBack:Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/player/command/BaseCommand;->stateAfter()Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;->setPlayerState(Lcom/transsion/camera/feature/mode/movie/player/PlayerState;)V

    return-void
.end method

.method private preExecute()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/command/BaseCommand;->mPlayerManagerCallBack:Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/player/command/BaseCommand;->stateBefore()Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;->setPlayerState(Lcom/transsion/camera/feature/mode/movie/player/PlayerState;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/player/command/BaseCommand;->preExecute()V

    .line 38
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/command/BaseCommand;->mCommandProcessor:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/movie/player/command/BaseCommand;->performExecute(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;)V

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/player/command/BaseCommand;->postExecute()V

    return-void
.end method

.method protected final getPlayerState()Lcom/transsion/camera/feature/mode/movie/player/PlayerState;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/command/BaseCommand;->mPlayerManagerCallBack:Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;->getPlayerState()Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    move-result-object p0

    return-object p0
.end method

.method protected abstract performExecute(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;)V
.end method

.method protected abstract stateAfter()Lcom/transsion/camera/feature/mode/movie/player/PlayerState;
.end method

.method protected abstract stateBefore()Lcom/transsion/camera/feature/mode/movie/player/PlayerState;
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

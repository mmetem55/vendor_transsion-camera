.class public Lcom/transsion/camera/feature/mode/movie/player/command/Prepare;
.super Lcom/transsion/camera/feature/mode/movie/player/command/BaseCommand;
.source "Prepare.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mPrepareResult:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/player/command/Prepare;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/player/command/Prepare;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/player/command/BaseCommand;-><init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;)V

    return-void
.end method


# virtual methods
.method protected performExecute(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;)V
    .locals 2

    .line 34
    :try_start_0
    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;->prepare()V

    .line 35
    sget-object p1, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->PREPARED:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/player/command/Prepare;->mPrepareResult:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    sget-object p1, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->ERROR:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/player/command/Prepare;->mPrepareResult:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    .line 39
    :goto_0
    sget-object p1, Lcom/transsion/camera/feature/mode/movie/player/command/Prepare;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/command/Prepare;->mPrepareResult:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected stateAfter()Lcom/transsion/camera/feature/mode/movie/player/PlayerState;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/command/Prepare;->mPrepareResult:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    return-object p0
.end method

.method protected stateBefore()Lcom/transsion/camera/feature/mode/movie/player/PlayerState;
    .locals 0

    .line 44
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->PREPARING:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    return-object p0
.end method

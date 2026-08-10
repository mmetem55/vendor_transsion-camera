.class public Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard;
.super Ljava/lang/Object;
.source "MoviePlaybackGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sInstance:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard;


# instance fields
.field private mCurrentState:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 23
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard;->sInstance:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;->UNLOCKED:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;

    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard;
    .locals 1

    .line 37
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard;->sInstance:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard;

    return-object v0
.end method


# virtual methods
.method public available()Z
    .locals 1

    .line 51
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;->UNLOCKED:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lock()V
    .locals 2

    .line 41
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "lock"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;->LOCKED:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;

    return-void
.end method

.method public unlock()V
    .locals 2

    .line 46
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unlock"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;->UNLOCKED:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;

    return-void
.end method

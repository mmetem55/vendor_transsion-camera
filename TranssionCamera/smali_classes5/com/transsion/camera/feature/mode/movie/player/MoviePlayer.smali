.class public Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;,
        Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;,
        Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressUpdater;,
        Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Error;,
        Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$End;,
        Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayBackComplete;,
        Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Stopped;,
        Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Paused;,
        Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Started;,
        Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Prepared;,
        Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Initialized;,
        Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Idle;,
        Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;,
        Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$InnerCommand;,
        Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Command;,
        Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;
    }
.end annotation


# static fields
.field private static final PROGRESS_UPDATE_PERIOD:I = 0xc8

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

.field private final mEndState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

.field private final mErrorState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

.field private final mIdleState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

.field private final mInitializedState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMediaPlayerErrorExtra:I

.field private mMediaPlayerErrorWhat:I

.field private final mMediaType:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;

.field private final mPausedState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

.field private final mPlayBackCompleteState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

.field private mPlayerListener:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;

.field private final mPreparedState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

.field private mProgressListener:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;

.field private final mProgressUpdater:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressUpdater;

.field private final mStartedState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

.field private final mStoppedState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mMainHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressUpdater;-><init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$1;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mProgressUpdater:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressUpdater;

    .line 224
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Idle;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Idle;-><init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mIdleState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    .line 225
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Initialized;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Initialized;-><init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mInitializedState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    .line 226
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Prepared;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Prepared;-><init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mPreparedState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    .line 227
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Started;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Started;-><init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mStartedState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    .line 228
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Paused;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Paused;-><init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mPausedState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    .line 229
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Stopped;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Stopped;-><init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mStoppedState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    .line 230
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayBackComplete;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayBackComplete;-><init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mPlayBackCompleteState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    .line 231
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$End;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$End;-><init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mEndState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    .line 232
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Error;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Error;-><init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mErrorState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    .line 61
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mMediaType:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;

    .line 62
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 63
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 64
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 65
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 66
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 67
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->enter()V

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mPlayBackCompleteState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mErrorState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mInitializedState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mPreparedState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mMediaPlayerErrorWhat:I

    return p0
.end method

.method static synthetic access$1402(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mMediaPlayerErrorWhat:I

    return p1
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mMediaPlayerErrorExtra:I

    return p0
.end method

.method static synthetic access$1502(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mMediaPlayerErrorExtra:I

    return p1
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mPlayerListener:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;)Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mPlayerListener:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mStartedState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->startProgressUpdater()V

    return-void
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mProgressListener:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;)Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mProgressListener:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mPausedState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mStoppedState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->stopProgressUpdater()V

    return-void
.end method

.method static synthetic access$2300(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->notifyProgressUpdated()V

    return-void
.end method

.method static synthetic access$300()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 28
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    return-object p0
.end method

.method static synthetic access$402(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    return-object p1
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mMediaType:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Landroid/view/Surface;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$602(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mIdleState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mEndState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    return-object p0
.end method

.method private notifyProgressUpdated()V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->updateProgress()V

    return-void
.end method

.method private static printInfo(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/16 v0, 0x385

    if-eq p0, v0, :cond_1

    const/16 v0, 0x386

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    .line 100
    :pswitch_0
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onInfo, MEDIA_INFO_METADATA_UPDATE"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :pswitch_1
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onInfo, MEDIA_INFO_NOT_SEEKABLE"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :pswitch_2
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onInfo, MEDIA_INFO_BAD_INTERLEAVING"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :pswitch_3
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onInfo, MEDIA_INFO_BUFFERING_END"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :pswitch_4
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onInfo, MEDIA_INFO_BUFFERING_START"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :pswitch_5
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onInfo, MEDIA_INFO_VIDEO_TRACK_LAGGING"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onInfo, MEDIA_INFO_SUBTITLE_TIMED_OUT"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_1
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onInfo, MEDIA_INFO_UNSUPPORTED_SUBTITLE"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_2
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onInfo, MEDIA_INFO_VIDEO_RENDERING_START"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_3
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onInfo, MEDIA_INFO_UNKNOWN"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2bc
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x320
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startProgressUpdater()V
    .locals 2

    .line 121
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startProgressUpdater"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mProgressUpdater:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressUpdater;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressUpdater;->start()V

    return-void
.end method

.method private stopProgressUpdater()V
    .locals 2

    .line 130
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopProgressUpdater "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mProgressUpdater:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressUpdater;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressUpdater;->stop()V

    return-void
.end method


# virtual methods
.method public isPlaying()Z
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->isPlaying()Z

    move-result p0

    return p0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 136
    sget-object p1, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onCompletion"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->mediaPlayerComplete()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 113
    sget-object p1, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError, what "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extra "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    iput p2, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mMediaPlayerErrorWhat:I

    .line 115
    iput p3, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mMediaPlayerErrorExtra:I

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->mediaPlayerError()V

    const/4 p0, 0x1

    return p0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 72
    invoke-static {p2}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->printInfo(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2

    .line 142
    sget-object p1, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoSizeChanged, width "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mPlayerListener:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;

    if-eqz p0, :cond_0

    .line 144
    invoke-interface {p0, p2, p3}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;->onMovieSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->pause()V

    return-void
.end method

.method public prepare()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->prepare()V

    return-void
.end method

.method public release()V
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->release()V

    return-void
.end method

.method public reset()V
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->reset()V

    return-void
.end method

.method public setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->setLooping(Z)V

    return-void
.end method

.method public setPlayerListener(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 202
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mPlayerListener:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;

    .line 203
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setPlayerListener listener is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 206
    :cond_0
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, p1, v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;-><init>(Landroid/os/Handler;Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$1;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mPlayerListener:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;

    return-void
.end method

.method public setProgressListener(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 212
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mProgressListener:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;

    .line 213
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setProgressListener listener is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 216
    :cond_0
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, p1, v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;-><init>(Landroid/os/Handler;Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$1;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mProgressListener:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public start()V
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->start()V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->stop()V

    return-void
.end method

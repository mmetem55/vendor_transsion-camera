.class public Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;
.super Ljava/lang/Object;
.source "MovieRecorder.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingTask;,
        Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StoppingTask;,
        Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingTask;,
        Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PreparingTask;,
        Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractTask;,
        Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$TaskResult;,
        Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingState;,
        Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;,
        Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordFinishedState;,
        Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StoppingRecordState;,
        Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;,
        Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingRecordState;,
        Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PreparedState;,
        Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PreparingState;,
        Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;,
        Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PendingResetState;,
        Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$HandleResetState;,
        Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;
    }
.end annotation


# static fields
.field private static final MAX_REVIEW_SECTION:I = 0x2

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBackCamera:Z

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

.field private mDisplayOrientation:I

.field private mDisplaySurfaceHeight:I

.field private mDisplaySurfaceWidth:I

.field private final mIdleState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMovieHelper:Lcom/transsion/camera/feature/mode/movie/MovieHelper;

.field private mMusicPlayer:Landroid/media/MediaPlayer;

.field private final mPreparedState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

.field private final mPreparingState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

.field private final mPreviewCallback:Lcom/transsion/camera/app/common/preview/PreviewCallbacker;

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mProduceMovieCallback:Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$ProduceMovieCallback;

.field private final mProducingMovieState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

.field private mRecordCallback:Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$MovieRecordCallback;

.field private final mRecordFinishedState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

.field private final mRecordState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

.field private mRecordedSection:I

.field private mRecorderUI:Lcom/transsion/camera/feature/mode/movie/ui/recorder/IRecorderUI;

.field private mRecordingSectionDuration:J

.field private final mRender:Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;

.field private final mRenderFactory:Lcom/transsion/camera/feature/mode/movie/algorithm/IRenderFactory;

.field private mResetPending:Z

.field private final mResettingState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

.field private mResettingTime:J

.field private final mStartingState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

.field private final mStateSwitchLock:Ljava/lang/Object;

.field private final mStoppingState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

.field private mTheme:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

.field private mThemeConfig:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MovieRecorder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/movie/MovieHelper;)V
    .locals 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mRecordedSection:I

    .line 62
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$1;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mPreviewCallback:Lcom/transsion/camera/app/common/preview/PreviewCallbacker;

    .line 191
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$IdleState;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mIdleState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    .line 192
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PreparingState;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PreparingState;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mPreparingState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    .line 193
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PreparedState;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PreparedState;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mPreparedState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    .line 194
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingRecordState;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingRecordState;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mStartingState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    .line 195
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    .line 196
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StoppingRecordState;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StoppingRecordState;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mStoppingState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    .line 197
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordFinishedState;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordFinishedState;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mRecordFinishedState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    .line 198
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mProducingMovieState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    .line 199
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingState;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingState;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mResettingState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    const-wide/16 v1, 0x0

    .line 203
    iput-wide v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mResettingTime:J

    .line 204
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mStateSwitchLock:Ljava/lang/Object;

    .line 85
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    .line 86
    invoke-static {p1, v1}, Lcom/transsion/camera/feature/mode/movie/algorithm/RenderFactoryCreator;->create(Landroid/content/Context;I)Lcom/transsion/camera/feature/mode/movie/algorithm/IRenderFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mRenderFactory:Lcom/transsion/camera/feature/mode/movie/algorithm/IRenderFactory;

    .line 87
    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/movie/algorithm/IRenderFactory;->createRender()Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mRender:Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;

    .line 88
    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "MovieRecorder Thread"

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 90
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mBackgroundHandler:Landroid/os/Handler;

    .line 91
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mMainHandler:Landroid/os/Handler;

    .line 92
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mMovieHelper:Lcom/transsion/camera/feature/mode/movie/MovieHelper;

    .line 93
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->entry()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    return-object p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    return-object p1
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mResettingState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mRecordedSection:I

    return p0
.end method

.method static synthetic access$1102(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mRecordedSection:I

    return p1
.end method

.method static synthetic access$1108(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I
    .locals 2

    .line 36
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mRecordedSection:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mRecordedSection:I

    return v0
.end method

.method static synthetic access$1110(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I
    .locals 2

    .line 36
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mRecordedSection:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mRecordedSection:I

    return v0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mRecordingSectionDuration:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;J)J
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mRecordingSectionDuration:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mThemeConfig:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;)Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mThemeConfig:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mDisplaySurfaceWidth:I

    return p0
.end method

.method static synthetic access$1402(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mDisplaySurfaceWidth:I

    return p1
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mDisplaySurfaceHeight:I

    return p0
.end method

.method static synthetic access$1502(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mDisplaySurfaceHeight:I

    return p1
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Landroid/media/MediaPlayer;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mMusicPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mMusicPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mPreparingState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Ljava/lang/Object;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mStateSwitchLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mPreparedState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mIdleState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mRecordFinishedState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/MovieHelper;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mMovieHelper:Lcom/transsion/camera/feature/mode/movie/MovieHelper;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mStartingState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mDisplayOrientation:I

    return p0
.end method

.method static synthetic access$2600(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$MovieRecordCallback;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mRecordCallback:Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$MovieRecordCallback;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mStoppingState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/ui/recorder/IRecorderUI;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mRecorderUI:Lcom/transsion/camera/feature/mode/movie/ui/recorder/IRecorderUI;

    return-object p0
.end method

.method static synthetic access$300()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 36
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mProducingMovieState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$ProduceMovieCallback;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mProduceMovieCallback:Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$ProduceMovieCallback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mRender:Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mBackCamera:Z

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mTheme:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    return-object p0
.end method

.method static synthetic access$702(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mTheme:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    return-object p1
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mResetPending:Z

    return p0
.end method

.method static synthetic access$802(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mResetPending:Z

    return p1
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mResettingTime:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;J)J
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mResettingTime:J

    return-wide p1
.end method


# virtual methods
.method public cancelProduceMovie()V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->onBackPressed()Z

    return-void
.end method

.method public deleteAllSections()V
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->deleteAllSections()V

    return-void
.end method

.method public deleteLatestSection()I
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->deleteLatestSection()I

    move-result p0

    return p0
.end method

.method public deleteRecorded()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory;->deleteHistory(Landroid/content/Context;)V

    .line 188
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->resetTheme()V

    return-void
.end method

.method public getMovieFeed()Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->getMovieFeed()Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;

    move-result-object p0

    return-object p0
.end method

.method public init(Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mPreviewCallback:Lcom/transsion/camera/app/common/preview/PreviewCallbacker;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public produceMovie()V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->produceMovie()V

    return-void
.end method

.method public resetTheme()V
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->resetTheme()V

    return-void
.end method

.method public setProduceMovieCallback(Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$ProduceMovieCallback;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mProduceMovieCallback:Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$ProduceMovieCallback;

    return-void
.end method

.method public setRecordCallback(Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$MovieRecordCallback;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mRecordCallback:Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$MovieRecordCallback;

    return-void
.end method

.method public setRecorderUI(Lcom/transsion/camera/feature/mode/movie/ui/recorder/IRecorderUI;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mRecorderUI:Lcom/transsion/camera/feature/mode/movie/ui/recorder/IRecorderUI;

    return-void
.end method

.method public startRecord(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mDisplayOrientation:I

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->startRecord()V

    return-void
.end method

.method public stopRecord()V
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->stopRecord()V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 122
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeUninit()V

    .line 124
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mRenderFactory:Lcom/transsion/camera/feature/mode/movie/algorithm/IRenderFactory;

    invoke-interface {v1}, Lcom/transsion/camera/feature/mode/movie/algorithm/IRenderFactory;->destroy()V

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quitSafely()V

    const-string p0, "unInit end"

    .line 126
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateCameraFace(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mBackCamera:Z

    return-void
.end method

.method public updateSize(II)V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->updateSize(II)V

    return-void
.end method

.method public updateTheme(Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;)V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->mCurrentState:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->updateTheme(Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;)V

    return-void
.end method

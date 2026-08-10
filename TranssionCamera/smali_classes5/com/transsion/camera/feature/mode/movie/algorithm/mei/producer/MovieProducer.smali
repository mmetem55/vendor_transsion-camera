.class public Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;
.super Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;
.source "MovieProducer.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/algorithm/IMovieProducer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer$CompileListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCallback:Lcom/transsion/camera/feature/mode/movie/algorithm/IMovieProducer$ExportListener;

.field private final mCompileListener:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer$CompileListener;

.field private mExportProgress:I

.field private mMovieHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MovieProducer"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;-><init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;)V

    .line 14
    new-instance p1, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer$CompileListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer$CompileListener;-><init>(Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer$1;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->mCompileListener:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer$CompileListener;

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->mExportProgress:I

    .line 17
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->mMovieHeight:I

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;)I
    .locals 0

    .line 11
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->mExportProgress:I

    return p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;I)I
    .locals 0

    .line 11
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->mExportProgress:I

    return p1
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 11
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->notifyCompileFinished()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->notifyCompileFailed()V

    return-void
.end method

.method private notifyCompileFailed()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->mCallback:Lcom/transsion/camera/feature/mode/movie/algorithm/IMovieProducer$ExportListener;

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/movie/algorithm/IMovieProducer$ExportListener;->onExportFailed()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->mCallback:Lcom/transsion/camera/feature/mode/movie/algorithm/IMovieProducer$ExportListener;

    :cond_0
    return-void
.end method

.method private notifyCompileFinished()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->mCallback:Lcom/transsion/camera/feature/mode/movie/algorithm/IMovieProducer$ExportListener;

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/movie/algorithm/IMovieProducer$ExportListener;->onExportFinished()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->mCallback:Lcom/transsion/camera/feature/mode/movie/algorithm/IMovieProducer$ExportListener;

    :cond_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->init()V

    .line 26
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->mCompileListener:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer$CompileListener;

    invoke-virtual {v0, p0}, Lcom/meicam/sdk/NvsStreamingContext;->setCompileCallback(Lcom/meicam/sdk/NvsStreamingContext$CompileCallback;)V

    return-void
.end method

.method public produceMovie(Ljava/lang/String;Lcom/transsion/camera/feature/mode/movie/algorithm/IMovieProducer$ExportListener;)V
    .locals 10

    .line 38
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->mCallback:Lcom/transsion/camera/feature/mode/movie/algorithm/IMovieProducer$ExportListener;

    const/4 p2, 0x0

    .line 39
    iput p2, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->mExportProgress:I

    .line 40
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->configStreaming()V

    .line 41
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {p2}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v4

    .line 42
    sget-object p2, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "produceMovie duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 43
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->mMovieHeight:I

    invoke-virtual {p2, v0}, Lcom/meicam/sdk/NvsStreamingContext;->setCustomCompileVideoHeight(I)V

    .line 44
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    const-wide/16 v2, 0x0

    const/16 v7, 0x100

    const/4 v8, 0x1

    const/16 v9, 0x100

    move-object v6, p1

    invoke-virtual/range {v0 .. v9}, Lcom/meicam/sdk/NvsStreamingContext;->compileTimeline(Lcom/meicam/sdk/NvsTimeline;JJLjava/lang/String;III)Z

    move-result p1

    if-nez p1, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->notifyCompileFailed()V

    :cond_0
    return-void
.end method

.method public setMovieHeight(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->mMovieHeight:I

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 31
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->unInit()V

    .line 32
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setCompileCallback(Lcom/meicam/sdk/NvsStreamingContext$CompileCallback;)V

    .line 33
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->mCallback:Lcom/transsion/camera/feature/mode/movie/algorithm/IMovieProducer$ExportListener;

    return-void
.end method

.class Lcom/transsion/camera/feature/mode/video/MediaChainManager;
.super Ljava/lang/Object;
.source "MediaChainManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;,
        Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;
    }
.end annotation


# static fields
.field public static final INTERPOLATE_FPS_120:I = 0x78

.field public static final INTERPOLATE_FPS_240:I = 0xf0

.field public static final INTERPOLATE_RATIO_240:I = 0x2

.field public static final INTERPOLATE_RATIO_960:I = 0x4

.field private static final MSG_COMMAND_BASE:I = 0xa

.field private static final MSG_COMMAND_LOAD_ALGORITHM:I = 0xa

.field private static final MSG_COMMAND_PROCESS:I = 0xb

.field private static final MSG_COMMAND_PROCESS_END:I = 0xc

.field private static final MSG_COMMAND_UNINIT:I = 0xd

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mChain:Lcom/transsion/camera/feature/mode/video/node/IChain;

.field private mChainListener:Lcom/transsion/camera/feature/mode/video/node/IChain$IChainListener;

.field private mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

.field private mDumpNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;

.field private mEncodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;

.field private mFrameHeight:I

.field private mFrameWidth:I

.field private mInterpolateFPS:I

.field private mInterpolateNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;

.field private mInterpolateRatio:I

.field private mMediaChainHandler:Landroid/os/Handler;

.field private mMediaChainState:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

.field private mMotionDetectNode:Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;

.field private mVideoInterpolate:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;


# direct methods
.method public static synthetic $r8$lambda$ajOEZ61WBOdLj0kRx_6PsSo4jl4(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->lambda$new$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 69
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mInterpolateRatio:I

    const/16 v1, 0x78

    .line 70
    iput v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mInterpolateFPS:I

    const/4 v1, 0x0

    .line 71
    iput v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mFrameWidth:I

    .line 72
    iput v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mFrameHeight:I

    .line 73
    sget-object v1, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_UNKNOWN:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMediaChainState:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    .line 76
    new-instance v1, Lcom/transsion/camera/feature/mode/video/node/impl/MediaChain;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaChain;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mChain:Lcom/transsion/camera/feature/mode/video/node/IChain;

    .line 77
    new-instance v1, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    .line 79
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->instance()Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mVideoInterpolate:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    .line 80
    new-instance v1, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;

    invoke-direct {v1, v0}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mInterpolateNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mVideoInterpolate:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->setVideoInterpolate(Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;)V

    .line 82
    new-instance v0, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMotionDetectNode:Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;

    .line 83
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->setDetectListener(Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode$IDetectListener;)V

    .line 84
    new-instance v0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mEncodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;

    .line 85
    new-instance v1, Lcom/transsion/camera/feature/mode/video/MediaChainManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/BaseNode;->setProcessListener(Lcom/transsion/camera/feature/mode/video/node/INode$IProcessListener;)V

    .line 87
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "mediachain_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 89
    new-instance v1, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;-><init>(Lcom/transsion/camera/feature/mode/video/MediaChainManager;Landroid/os/Looper;Lcom/transsion/camera/feature/mode/video/MediaChainManager$1;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMediaChainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 37
    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMediaChainState:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    return-object p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/mode/video/MediaChainManager;Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMediaChainState:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->doLoadingAlgorithm()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->doProcess()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->doProcessEnd()V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->doUnLoadingAlgorithm()V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->doUnInit()V

    return-void
.end method

.method private doLoadingAlgorithm()V
    .locals 10

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 267
    sget-object v2, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "doUnLoadingAlgorithm start"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 269
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mVideoInterpolate:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    iget v5, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mFrameWidth:I

    iget v6, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mFrameHeight:I

    .line 270
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->getInitFormat()I

    move-result v7

    iget v8, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mInterpolateFPS:I

    iget v9, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mInterpolateRatio:I

    .line 269
    invoke-interface/range {v4 .. v9}, Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;->init(IIIII)Z

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 273
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doLoadingAlgorithm end, process time:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doProcess()V
    .locals 2

    .line 287
    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doProcess"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mChain:Lcom/transsion/camera/feature/mode/video/node/IChain;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/IChain;->addNode(Lcom/transsion/camera/feature/mode/video/node/INode;)V

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mChain:Lcom/transsion/camera/feature/mode/video/node/IChain;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMotionDetectNode:Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/IChain;->addNode(Lcom/transsion/camera/feature/mode/video/node/INode;)V

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mChain:Lcom/transsion/camera/feature/mode/video/node/IChain;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mInterpolateNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/IChain;->addNode(Lcom/transsion/camera/feature/mode/video/node/INode;)V

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mChain:Lcom/transsion/camera/feature/mode/video/node/IChain;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mEncodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/IChain;->addNode(Lcom/transsion/camera/feature/mode/video/node/INode;)V

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mChain:Lcom/transsion/camera/feature/mode/video/node/IChain;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/video/node/IChain;->init()V

    .line 294
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->process(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Z

    return-void
.end method

.method private doProcessEnd()V
    .locals 2

    .line 298
    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doProcessEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mChain:Lcom/transsion/camera/feature/mode/video/node/IChain;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/video/node/IChain;->unInit()V

    .line 301
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mChainListener:Lcom/transsion/camera/feature/mode/video/node/IChain$IChainListener;

    if-eqz p0, :cond_0

    .line 302
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/video/node/IChain$IChainListener;->onProcessEnd()V

    :cond_0
    return-void
.end method

.method private doUnInit()V
    .locals 2

    .line 307
    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doUnInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMediaChainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 309
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMediaChainHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 311
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMediaChainHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private doUnLoadingAlgorithm()V
    .locals 5

    .line 277
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 278
    sget-object v2, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "doUnLoadingAlgorithm start"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 280
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mVideoInterpolate:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;->unInit()Z

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 283
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doUnLoadingAlgorithm end, process time:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private getInitFormat()I
    .locals 0

    const/16 p0, 0x2008

    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->sendMessage(ILjava/lang/Object;)Z

    return-void
.end method

.method private removeMessages(I)V
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMediaChainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private sendMessage(IIILjava/lang/Object;)Z
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMediaChainHandler:Landroid/os/Handler;

    if-nez p0, :cond_0

    .line 258
    sget-object p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendMessage mMediaChainHandler is null what: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 261
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0
.end method

.method private sendMessage(ILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    .line 253
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->sendMessage(IIILjava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public loadingAlgorithm()V
    .locals 2

    .line 159
    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "loadingAlgorithm"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 160
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->sendMessage(ILjava/lang/Object;)Z

    return-void
.end method

.method public process()V
    .locals 2

    .line 164
    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "process"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 165
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->sendMessage(ILjava/lang/Object;)Z

    return-void
.end method

.method public setCaptureRate(I)V
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mEncodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->setCaptureRate(I)V

    return-void
.end method

.method public setChainListener(Lcom/transsion/camera/feature/mode/video/node/IChain$IChainListener;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mChainListener:Lcom/transsion/camera/feature/mode/video/node/IChain$IChainListener;

    return-void
.end method

.method public setDumpFrameRange(Landroid/util/Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDumpNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;

    if-eqz p0, :cond_0

    .line 141
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;->setDumpRange(Landroid/util/Range;)V

    :cond_0
    return-void
.end method

.method public setFilePath(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->setFilePath(Ljava/lang/String;)V

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mEncodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->setFileDescriptor(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public setFilePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->setFilePath(Ljava/lang/String;)V

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mEncodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->setFilePath(Ljava/lang/String;)V

    return-void
.end method

.method public setFrameInfo(II)V
    .locals 1

    .line 115
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mFrameWidth:I

    .line 116
    iput p2, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mFrameHeight:I

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mMotionDetectNode:Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->getInitFormat()I

    move-result p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode;->setFrameInfo(III)V

    return-void
.end method

.method public setFrameRate(I)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mEncodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->setFrameRate(I)V

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->setFrameRate(I)V

    return-void
.end method

.method public setInterpolateFPS(I)V
    .locals 0

    .line 130
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mInterpolateFPS:I

    return-void
.end method

.method public setInterpolateRatio(I)V
    .locals 1

    .line 134
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mInterpolateRatio:I

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mInterpolateNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->setInterpolateRatio(I)V

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->setInterpolateRatio(I)V

    return-void
.end method

.method public setKeepFrameRange(II)V
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->setKeepFrameRange(II)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mEncodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->setOrientation(I)V

    return-void
.end method

.method public setSkipFramesOnce(I)V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->mDecodeNode:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->setSkipFramesOnce(I)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 169
    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0xd

    const/4 v1, 0x0

    .line 170
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->sendMessage(ILjava/lang/Object;)Z

    return-void
.end method

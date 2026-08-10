.class public Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;
.super Lcom/transsion/camera/feature/mode/video/node/BaseNode;
.source "MediaDecodeNode.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/video/node/impl/MotionDetectNode$IDetectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode$MediaAvcDataCallBackImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mFrameRate:I

.field private mKeepFrameFrom:I

.field private mKeepFrameTo:I

.field private mMediaAvcDataCallBack:Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder$IMediaAvcDataCallBack;

.field private mMediaAvcDecoder:Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;

.field private mRatio:I

.field private mSkipFrames:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/node/BaseNode;-><init>()V

    const/4 v0, 0x4

    .line 24
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mRatio:I

    const/16 v0, 0x1e

    .line 25
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mFrameRate:I

    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mSkipFrames:I

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mKeepFrameFrom:I

    .line 30
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mKeepFrameTo:I

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mMediaAvcDecoder:Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;

    .line 33
    new-instance v1, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode$MediaAvcDataCallBackImpl;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode$MediaAvcDataCallBackImpl;-><init>(Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode$1;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mMediaAvcDataCallBack:Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder$IMediaAvcDataCallBack;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 20
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;Lcom/transsion/camera/feature/mode/video/node/NodeData;)Z
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/BaseNode;->deliverToNext(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public init()V
    .locals 3

    .line 62
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/video/node/BaseNode;->init()V

    .line 64
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init MediaDecodeNode"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mMediaAvcDecoder:Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;

    .line 66
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mMediaAvcDataCallBack:Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder$IMediaAvcDataCallBack;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->setDecoderDataCallBack(Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder$IMediaAvcDataCallBack;)V

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mMediaAvcDecoder:Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mFrameRate:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->setFrameRate(I)V

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mMediaAvcDecoder:Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mRatio:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->setInterpolateRatio(I)V

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mMediaAvcDecoder:Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mSkipFrames:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->setSkipFramesOnce(I)V

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mMediaAvcDecoder:Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mKeepFrameFrom:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mKeepFrameTo:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->setKeepFrameRange(II)V

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mMediaAvcDecoder:Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->initDecoder(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 75
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init MediaDecodeNode exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onMotionDetected(I)V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mMediaAvcDecoder:Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;

    if-eqz p0, :cond_0

    .line 103
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->onMotionDetected(I)V

    :cond_0
    return-void
.end method

.method public process(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Z
    .locals 1

    .line 92
    sget-object p1, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "process start"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mMediaAvcDecoder:Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;

    if-eqz p0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->decodeMediaData()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public setFrameRate(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mFrameRate:I

    return-void
.end method

.method public setInterpolateRatio(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mRatio:I

    return-void
.end method

.method public setKeepFrameRange(II)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mKeepFrameFrom:I

    .line 53
    iput p2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mKeepFrameTo:I

    return-void
.end method

.method public setSkipFramesOnce(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mSkipFrames:I

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 81
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/video/node/BaseNode;->unInit()V

    .line 82
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit MediaDecodeNode"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mMediaAvcDecoder:Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->deInitDecoder()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->mMediaAvcDecoder:Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;

    :cond_0
    return-void
.end method

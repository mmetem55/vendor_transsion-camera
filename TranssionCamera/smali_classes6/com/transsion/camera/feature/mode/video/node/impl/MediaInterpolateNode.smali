.class public Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;
.super Lcom/transsion/camera/feature/mode/video/node/BufferNode;
.source "MediaInterpolateNode.java"


# static fields
.field private static final BITS_PER_BYTE:I = 0x8

.field private static final FIRST_FRAME_NUMBER:I = 0x1

.field private static final LAST_FRAME_NUMBER:I = -0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFirstKeepFrame:Z

.field private mFrameNumber:I

.field private mOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mRatio:I

.field private mVideoInterpolate:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/BufferNode;-><init>(I)V

    return-void
.end method

.method private getBitsPerPixel(I)I
    .locals 2

    const/16 p0, 0x11

    if-eq p1, p0, :cond_0

    const/16 p0, 0x2008

    if-eq p1, p0, :cond_0

    const p0, 0x32315659

    if-eq p1, p0, :cond_0

    .line 120
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, 0xc

    return p0
.end method

.method private initVideoInterpolate(III)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mVideoInterpolate:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;->confirmInitParams(III)V

    mul-int/2addr p1, p2

    .line 128
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->getBitsPerPixel(I)I

    move-result p2

    mul-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x8

    .line 130
    iget p2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mRatio:I

    add-int/lit8 p2, p2, -0x1

    .line 131
    new-array p3, p2, [Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mVideoInterpolate:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;->setOutputBuffers([Ljava/nio/ByteBuffer;)Z

    return-void
.end method

.method private interpolateIfNeeded(Lcom/transsion/camera/feature/mode/video/node/NodeData;)V
    .locals 3

    .line 99
    iget-boolean v0, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mKeepFrame:Z

    if-eqz v0, :cond_1

    .line 100
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interpolate frameNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mFrameNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mFrameNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mFirstKeepFrame:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mFirstKeepFrame:Z

    .line 104
    iget v1, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mFrameNumber:I

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mVideoInterpolate:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mData:[B

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;->interpolate([B)Z

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mVideoInterpolate:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    iget-object v1, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mData:[B

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;->interpolate([B)Z

    .line 109
    iget v0, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mWidth:I

    iget v1, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mHeight:I

    iget p1, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFormat:I

    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->processOutputBuffers(III)V

    :cond_1
    return-void
.end method

.method private processOutputBuffers(III)V
    .locals 11

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 141
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v10, v4, [B

    .line 142
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 143
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 144
    iget v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mFrameNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mFrameNumber:I

    .line 145
    sget-object v3, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processOutputBuffers mFrameNumber: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mFrameNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 146
    new-instance v3, Lcom/transsion/camera/feature/mode/video/node/NodeData;

    iget v6, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mFrameNumber:I

    move-object v5, v3

    move v7, p1

    move v8, p2

    move v9, p3

    invoke-direct/range {v5 .. v10}, Lcom/transsion/camera/feature/mode/video/node/NodeData;-><init>(IIII[B)V

    invoke-virtual {p0, v3}, Lcom/transsion/camera/feature/mode/video/node/BaseNode;->deliverToNext(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private releaseOutputBuffers()V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 65
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mOutputBuffers is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 68
    array-length v0, v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 69
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 70
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/video/node/BufferNode;->init()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mFrameNumber:I

    .line 49
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mFirstKeepFrame:Z

    .line 50
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "init MediaInterpolateNode"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected processInternal(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Z
    .locals 4

    .line 84
    iget v0, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 85
    iget v0, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mWidth:I

    iget v2, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mHeight:I

    iget v3, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFormat:I

    invoke-direct {p0, v0, v2, v3}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->initVideoInterpolate(III)V

    .line 88
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->interpolateIfNeeded(Lcom/transsion/camera/feature/mode/video/node/NodeData;)V

    .line 90
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mFrameNumber:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mFrameNumber:I

    const/4 v1, -0x1

    .line 91
    iget v2, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    if-eq v1, v2, :cond_1

    .line 92
    iput v0, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    .line 95
    :cond_1
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/BufferNode;->processInternal(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Z

    move-result p0

    return p0
.end method

.method public setInterpolateRatio(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mRatio:I

    return-void
.end method

.method public setVideoInterpolate(Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mVideoInterpolate:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 55
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/video/node/BufferNode;->unInit()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mFrameNumber:I

    .line 57
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mFirstKeepFrame:Z

    .line 58
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->releaseOutputBuffers()V

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->mVideoInterpolate:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;->reset()Z

    .line 60
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaInterpolateNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "unInit MediaInterpolateNode"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

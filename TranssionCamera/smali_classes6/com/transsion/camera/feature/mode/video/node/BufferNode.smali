.class public Lcom/transsion/camera/feature/mode/video/node/BufferNode;
.super Lcom/transsion/camera/feature/mode/video/node/BaseNode;
.source "BufferNode.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x6

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBlockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/transsion/camera/feature/mode/video/node/NodeData;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRunning:Z

.field private mWorkThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/video/node/BufferNode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/node/BufferNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    .line 32
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/video/node/BufferNode;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/node/BaseNode;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/BufferNode;->mBlockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 42
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/video/node/BaseNode;->init()V

    .line 43
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/BufferNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init BufferNode"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/BufferNode;->mRunning:Z

    .line 45
    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/BufferNode;->mWorkThread:Ljava/lang/Thread;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final process(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Z
    .locals 2

    .line 61
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/BufferNode;->mBlockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 63
    sget-object p1, Lcom/transsion/camera/feature/mode/video/node/BufferNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process put exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected processInternal(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Z
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/BaseNode;->deliverToNext(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Z

    move-result p0

    return p0
.end method

.method public run()V
    .locals 4

    .line 71
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/BufferNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "thread in"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/BufferNode;->mRunning:Z

    if-eqz v0, :cond_1

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/BufferNode;->mBlockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/video/node/NodeData;

    if-nez v0, :cond_0

    .line 77
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/BufferNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "data is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/video/node/BufferNode;->processInternal(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 83
    sget-object v1, Lcom/transsion/camera/feature/mode/video/node/BufferNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "take exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/BufferNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBlockingQueue size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/BufferNode;->mBlockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/BufferNode;->mBlockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    const-string p0, "thread out"

    .line 90
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 52
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/video/node/BaseNode;->unInit()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/BufferNode;->mRunning:Z

    .line 54
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/BufferNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unInit mBlockingQueue size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/BufferNode;->mBlockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/BufferNode;->mWorkThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.class public final Lcom/transsion/camera/feature/mode/movie/player/util/Executor;
.super Ljava/lang/Object;
.source "Executor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCommandsQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/transsion/camera/feature/mode/movie/player/command/ICommand;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueueLock:Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;

.field private volatile mQuited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mQuited:Z

    .line 31
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mQueueLock:Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mCommandsQueue:Ljava/util/Queue;

    .line 36
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public clearAllPendingCommands(Lcom/transsion/camera/utils/debug/Log$Tag;)V
    .locals 3

    .line 108
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> clearAllPendingCommands, mCommandsQueue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mCommandsQueue:Ljava/util/Queue;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mQueueLock:Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;->isLocked(Lcom/transsion/camera/utils/debug/Log$Tag;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mCommandsQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<< clearAllPendingCommands, mCommandsQueue "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mCommandsQueue:Ljava/util/Queue;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 113
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "cannot perform action, you are not holding a lock"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public execute(Lcom/transsion/camera/feature/mode/movie/player/command/ICommand;)V
    .locals 3

    .line 74
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> execute, lock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mQueueLock:Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;->lock(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 77
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mCommandsQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mQueueLock:Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;->notify(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mQueueLock:Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;->unlock(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 81
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<< execute, unlock "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public execute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/camera/feature/mode/movie/player/command/ICommand;",
            ">;)V"
        }
    .end annotation

    .line 85
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> execute, lock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mQueueLock:Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;->lock(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 88
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mCommandsQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 89
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mQueueLock:Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;->notify(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mQueueLock:Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;->unlock(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<< execute, unlock "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public pauseExecuting(Lcom/transsion/camera/utils/debug/Log$Tag;)V
    .locals 3

    .line 96
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseExecuting, lock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mQueueLock:Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mQueueLock:Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;->lock(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    return-void
.end method

.method public quitSafely()V
    .locals 2

    .line 120
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, ">> quitSafely"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mQueueLock:Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;->lock(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    const/4 v1, 0x1

    .line 123
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mQuited:Z

    .line 124
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mQueueLock:Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;->notify(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mQueueLock:Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;->unlock(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    const-string p0, "<< quitSafely"

    .line 127
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public resumeExecuting(Lcom/transsion/camera/utils/debug/Log$Tag;)V
    .locals 3

    .line 102
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeExecuting, unlock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mQueueLock:Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mQueueLock:Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;->unlock(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    return-void
.end method

.method public run()V
    .locals 4

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mQueueLock:Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;

    sget-object v1, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;->lock(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 46
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mCommandsQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mQuited:Z

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "quit CommandExecutor"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mQueueLock:Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;->unlock(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    return-void

    .line 53
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mQueueLock:Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;

    sget-object v1, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;->wait(Lcom/transsion/camera/utils/debug/Log$Tag;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mCommandsQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/movie/player/command/ICommand;

    .line 61
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->mQueueLock:Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;

    sget-object v2, Lcom/transsion/camera/feature/mode/movie/player/util/Executor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/movie/player/util/QueueLock;->unlock(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    if-nez v0, :cond_2

    const-string v0, "command is null"

    .line 64
    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 69
    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/movie/player/command/ICommand;->execute()V

    goto :goto_0
.end method

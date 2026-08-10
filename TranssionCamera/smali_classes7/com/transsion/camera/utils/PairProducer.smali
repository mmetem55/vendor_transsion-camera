.class public Lcom/transsion/camera/utils/PairProducer;
.super Ljava/lang/Object;
.source "PairProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mFirstQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TF;>;"
        }
    .end annotation
.end field

.field private mSecondQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/utils/PairProducer;->mFirstQueue:Ljava/util/ArrayDeque;

    .line 27
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/utils/PairProducer;->mSecondQueue:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public declared-synchronized addFirst(Ljava/lang/Object;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Landroid/util/Pair<",
            "TF;TS;>;"
        }
    .end annotation

    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/utils/PairProducer;->mSecondQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 35
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/utils/PairProducer;->mFirstQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 36
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addSecond(Ljava/lang/Object;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Landroid/util/Pair<",
            "TF;TS;>;"
        }
    .end annotation

    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/utils/PairProducer;->mFirstQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 44
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/utils/PairProducer;->mSecondQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 45
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/utils/PairProducer;->mFirstQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/utils/PairProducer;->mSecondQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pollSecondLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/utils/PairProducer;->mSecondQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

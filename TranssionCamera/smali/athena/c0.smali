.class public Lathena/c0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lathena/i0;


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lathena/x;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lathena/c0;->c:Landroid/os/Handler;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lathena/c0;->b:Ljava/util/Map;

    .line 5
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lathena/c0$a;

    invoke-direct {v7, p0}, Lathena/c0$a;-><init>(Lathena/c0;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x5

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object p1, p0, Lathena/c0;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public a(Lathena/x;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lathena/c0;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lathena/c0;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lathena/x;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lathena/c0;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0, p0}, Lathena/x;->a(Landroid/os/Handler;Lathena/i0;)V

    .line 4
    iget-object v0, p0, Lathena/c0;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 5
    iget-object p0, p0, Lathena/c0;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lathena/x;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b(Lathena/x;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lathena/c0;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lathena/x;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

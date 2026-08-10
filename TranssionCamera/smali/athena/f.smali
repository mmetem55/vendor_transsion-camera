.class Lathena/f;
.super Lathena/b0;
.source "source.java"


# instance fields
.field final synthetic f:Lcom/transsion/athena/config/data/model/d;

.field final synthetic g:Lathena/c;

.field final synthetic h:Lathena/g;


# direct methods
.method constructor <init>(Lathena/g;Ljava/lang/String;JLcom/transsion/athena/config/data/model/d;Lathena/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lathena/f;->h:Lathena/g;

    iput-object p5, p0, Lathena/f;->f:Lcom/transsion/athena/config/data/model/d;

    iput-object p6, p0, Lathena/f;->g:Lathena/c;

    invoke-direct {p0, p2, p3, p4}, Lathena/b0;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-super {p0}, Lathena/b0;->c()Lathena/d0;

    move-result-object v0

    .line 6
    iget v1, v0, Lathena/d0;->a:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lathena/f;->f:Lcom/transsion/athena/config/data/model/d;

    .line 7
    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/d;->b()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/athena/config/data/model/c;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lathena/x;->b:Landroid/os/Handler;

    const/16 v2, 0x12a

    .line 9
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10
    iget-object v1, p0, Lathena/x;->b:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    .line 11
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 12
    iget-object v2, p0, Lathena/x;->b:Landroid/os/Handler;

    const-wide/32 v3, 0x493e0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 13
    iget-object p0, p0, Lathena/f;->h:Lathena/g;

    invoke-static {p0}, Lathena/g;->a(Lathena/g;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lathena/x;->b:Landroid/os/Handler;

    new-instance v2, Lathena/e;

    invoke-direct {v2, p0, v0}, Lathena/e;-><init>(Lathena/f;Lathena/d0;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :goto_0
    return-object v0
.end method

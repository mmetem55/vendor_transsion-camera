.class Lathena/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lathena/d0;

.field final synthetic b:Lathena/f;


# direct methods
.method constructor <init>(Lathena/f;Lathena/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lathena/e;->b:Lathena/f;

    iput-object p2, p0, Lathena/e;->a:Lathena/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lathena/e;->a:Lathena/d0;

    iget v0, v0, Lathena/d0;->a:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 19
    iget-object v0, p0, Lathena/e;->b:Lathena/f;

    iget-object v0, v0, Lathena/f;->f:Lcom/transsion/athena/config/data/model/d;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/d;->d()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/transsion/athena/config/data/model/d;->c(I)V

    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lathena/e;->b:Lathena/f;

    iget-object v0, v0, Lathena/f;->f:Lcom/transsion/athena/config/data/model/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lathena/e;->b:Lathena/f;

    iget-object v3, v3, Lathena/f;->f:Lcom/transsion/athena/config/data/model/d;

    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/d;->c()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/transsion/athena/config/data/model/d;->b(J)V

    goto :goto_0

    .line 21
    :cond_1
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "globalConfig success"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 22
    iget-object v0, p0, Lathena/e;->b:Lathena/f;

    iget-object v0, v0, Lathena/f;->h:Lathena/g;

    iget-object v1, p0, Lathena/e;->a:Lathena/d0;

    iget-object v1, v1, Lathena/d0;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lathena/g;->a(Lathena/g;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->getTestToolAPI()Lathena/u;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 24
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->getTestToolAPI()Lathena/u;

    move-result-object v0

    iget-object v1, p0, Lathena/e;->a:Lathena/d0;

    iget-object v1, v1, Lathena/d0;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lathena/u;->a(Ljava/lang/String;)V

    .line 26
    :cond_2
    iget-object v0, p0, Lathena/e;->b:Lathena/f;

    iget-object v0, v0, Lathena/f;->f:Lcom/transsion/athena/config/data/model/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lathena/e;->b:Lathena/f;

    iget-object v3, v3, Lathena/f;->f:Lcom/transsion/athena/config/data/model/d;

    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/d;->c()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/transsion/athena/config/data/model/d;->b(J)V

    .line 27
    iget-object v0, p0, Lathena/e;->b:Lathena/f;

    iget-object v0, v0, Lathena/f;->g:Lathena/c;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1, v1}, Lathena/c;->a(IZ)V

    .line 39
    :cond_3
    :goto_0
    iget-object v0, p0, Lathena/e;->b:Lathena/f;

    iget-object v0, v0, Lathena/f;->h:Lathena/g;

    invoke-static {v0}, Lathena/g;->c(Lathena/g;)Lathena/h;

    move-result-object v0

    iget-object v1, p0, Lathena/e;->b:Lathena/f;

    iget-object v1, v1, Lathena/f;->h:Lathena/g;

    invoke-static {v1}, Lathena/g;->b(Lathena/g;)Lcom/transsion/athena/config/data/model/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lathena/h;->b(Ljava/lang/String;)V

    .line 40
    iget-object p0, p0, Lathena/e;->b:Lathena/f;

    iget-object p0, p0, Lathena/f;->h:Lathena/g;

    invoke-static {p0}, Lathena/g;->a(Lathena/g;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

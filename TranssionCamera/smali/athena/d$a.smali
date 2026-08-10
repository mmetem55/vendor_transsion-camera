.class Lathena/d$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lathena/d;->c()Lathena/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lathena/d0;

.field final synthetic b:Lathena/d;


# direct methods
.method constructor <init>(Lathena/d;Lathena/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lathena/d$a;->b:Lathena/d;

    iput-object p2, p0, Lathena/d$a;->a:Lathena/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lathena/d$a;->a:Lathena/d0;

    iget v0, v0, Lathena/d0;->a:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    .line 18
    iget-object v0, p0, Lathena/d$a;->b:Lathena/d;

    iget-object v0, v0, Lathena/d;->g:Lcom/transsion/athena/config/data/model/a;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/a;->d()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/transsion/athena/config/data/model/a;->c(I)V

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lathena/d$a;->b:Lathena/d;

    iget-object v1, v0, Lathena/d;->g:Lcom/transsion/athena/config/data/model/a;

    iget v0, v0, Lathena/d;->h:I

    invoke-virtual {v1, v0}, Lcom/transsion/athena/config/data/model/a;->b(I)V

    .line 20
    iget-object v0, p0, Lathena/d$a;->b:Lathena/d;

    iget-object v0, v0, Lathena/d;->g:Lcom/transsion/athena/config/data/model/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lathena/d$a;->b:Lathena/d;

    iget-wide v3, v3, Lathena/d;->i:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/transsion/athena/config/data/model/a;->b(J)V

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    .line 21
    :cond_1
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appConfig = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lathena/d$a;->a:Lathena/d0;

    iget-object v3, v3, Lathena/d0;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 22
    iget-object v0, p0, Lathena/d$a;->b:Lathena/d;

    iget-object v2, v0, Lathena/d;->k:Lathena/g;

    iget-object v0, v0, Lathena/d;->g:Lcom/transsion/athena/config/data/model/a;

    iget-object v3, p0, Lathena/d$a;->a:Lathena/d0;

    iget-object v3, v3, Lathena/d0;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lathena/g;->a(Lathena/g;Lcom/transsion/athena/config/data/model/a;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->getTestToolAPI()Lathena/u;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 24
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->getTestToolAPI()Lathena/u;

    move-result-object v0

    iget-object v2, p0, Lathena/d$a;->b:Lathena/d;

    iget-object v2, v2, Lathena/d;->g:Lcom/transsion/athena/config/data/model/a;

    invoke-interface {v0, v2}, Lathena/u;->a(Lcom/transsion/athena/config/data/model/a;)V

    .line 26
    :cond_2
    iget-object v0, p0, Lathena/d$a;->b:Lathena/d;

    iget-object v2, v0, Lathena/d;->g:Lcom/transsion/athena/config/data/model/a;

    iget v0, v0, Lathena/d;->h:I

    invoke-virtual {v2, v0}, Lcom/transsion/athena/config/data/model/a;->b(I)V

    .line 27
    iget-object v0, p0, Lathena/d$a;->b:Lathena/d;

    iget-object v0, v0, Lathena/d;->g:Lcom/transsion/athena/config/data/model/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lathena/d$a;->b:Lathena/d;

    iget-wide v4, v4, Lathena/d;->i:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/transsion/athena/config/data/model/a;->b(J)V

    .line 39
    :goto_1
    iget-object v0, p0, Lathena/d$a;->b:Lathena/d;

    iget-object v2, v0, Lathena/d;->j:Lathena/c;

    if-eqz v2, :cond_3

    .line 40
    iget-object v0, v0, Lathena/d;->g:Lcom/transsion/athena/config/data/model/a;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/a;->a()I

    move-result v0

    invoke-virtual {v2, v0, v1}, Lathena/c;->a(IZ)V

    .line 43
    :cond_3
    iget-object p0, p0, Lathena/d$a;->b:Lathena/d;

    iget-object p0, p0, Lathena/d;->k:Lathena/g;

    invoke-static {p0}, Lathena/g;->a(Lathena/g;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

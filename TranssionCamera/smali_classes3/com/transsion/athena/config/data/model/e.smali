.class public Lcom/transsion/athena/config/data/model/e;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Lcom/transsion/athena/config/data/model/d;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/athena/config/data/model/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/transsion/athena/config/data/model/d;

    invoke-direct {v0}, Lcom/transsion/athena/config/data/model/d;-><init>()V

    iput-object v0, p0, Lcom/transsion/athena/config/data/model/e;->a:Lcom/transsion/athena/config/data/model/d;

    .line 7
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/athena/config/data/model/e;->b:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/transsion/athena/config/data/model/e;
    .locals 2

    .line 8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    new-instance p0, Lcom/transsion/athena/config/data/model/e;

    invoke-direct {p0}, Lcom/transsion/athena/config/data/model/e;-><init>()V

    const-string v1, "global_config"

    .line 13
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/config/data/model/d;->a(Lorg/json/JSONObject;)Lcom/transsion/athena/config/data/model/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    iput-object v0, p0, Lcom/transsion/athena/config/data/model/e;->a:Lcom/transsion/athena/config/data/model/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    .line 15
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    const-string v0, "fromJSON"

    .line 16
    invoke-static {v0, p0}, Lcom/transsion/ga/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/transsion/athena/config/data/model/a;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/e;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/transsion/athena/config/data/model/c;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object p0, p0, Lcom/transsion/athena/config/data/model/e;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/athena/config/data/model/a;

    .line 7
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/a;->a()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(J)Ljava/lang/String;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/transsion/athena/config/data/model/e;->a:Lcom/transsion/athena/config/data/model/d;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/athena/config/data/model/d;->a(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/athena/config/data/model/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/transsion/athena/config/data/model/e;->b:Ljava/util/List;

    return-object p0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/athena/config/data/model/a;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object p0, p0, Lcom/transsion/athena/config/data/model/e;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public b()Lcom/transsion/athena/config/data/model/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/athena/config/data/model/e;->a:Lcom/transsion/athena/config/data/model/d;

    return-object p0
.end method

.method public c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/athena/config/data/model/TidConfigBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object p0, p0, Lcom/transsion/athena/config/data/model/e;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/athena/config/data/model/a;

    .line 3
    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/a;->g()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public d()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/athena/config/data/model/a;

    .line 2
    invoke-virtual {v1, v4, v5}, Lcom/transsion/athena/config/data/model/a;->c(J)V

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/transsion/athena/config/data/model/a;->b(J)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/e;->a:Lcom/transsion/athena/config/data/model/d;

    invoke-virtual {v0, v4, v5}, Lcom/transsion/athena/config/data/model/d;->f(J)V

    .line 6
    iget-object p0, p0, Lcom/transsion/athena/config/data/model/e;->a:Lcom/transsion/athena/config/data/model/d;

    invoke-virtual {p0, v2, v3}, Lcom/transsion/athena/config/data/model/d;->c(J)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "global_config"

    .line 2
    :try_start_1
    iget-object p0, p0, Lcom/transsion/athena/config/data/model/e;->a:Lcom/transsion/athena/config/data/model/d;

    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/d;->i()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    const-string v0, "toJSON"

    .line 18
    invoke-static {v0, p0}, Lcom/transsion/ga/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

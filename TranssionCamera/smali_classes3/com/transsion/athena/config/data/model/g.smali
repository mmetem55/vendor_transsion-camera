.class public Lcom/transsion/athena/config/data/model/g;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private d:I

.field private e:I

.field private f:I

.field private g:J

.field private h:I

.field private i:I

.field private j:J

.field private k:J

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/transsion/athena/config/data/model/g;->a:I

    const/16 v1, 0x64

    .line 12
    iput v1, p0, Lcom/transsion/athena/config/data/model/g;->b:I

    const-wide/16 v2, 0x0

    .line 20
    iput-wide v2, p0, Lcom/transsion/athena/config/data/model/g;->c:J

    .line 27
    iput v0, p0, Lcom/transsion/athena/config/data/model/g;->d:I

    .line 32
    iput v0, p0, Lcom/transsion/athena/config/data/model/g;->e:I

    .line 37
    iput v1, p0, Lcom/transsion/athena/config/data/model/g;->f:I

    .line 53
    iput-wide v2, p0, Lcom/transsion/athena/config/data/model/g;->g:J

    .line 58
    iput v0, p0, Lcom/transsion/athena/config/data/model/g;->h:I

    .line 63
    iput v0, p0, Lcom/transsion/athena/config/data/model/g;->i:I

    const-wide/16 v0, 0x7530

    .line 73
    iput-wide v0, p0, Lcom/transsion/athena/config/data/model/g;->j:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 3
    iget p0, p0, Lcom/transsion/athena/config/data/model/g;->i:I

    return p0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/transsion/athena/config/data/model/g;->i:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/g;->k:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "gmax"

    .line 7
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/athena/config/data/model/g;->f:I

    const-string p1, "gmin"

    .line 8
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/athena/config/data/model/g;->e:I

    const-string p1, "mi"

    .line 9
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/athena/config/data/model/g;->h:I

    const-string p1, "nf"

    .line 10
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/athena/config/data/model/g;->d:I

    const-string p1, "pd"

    .line 11
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/athena/config/data/model/g;->c:J

    const-string p1, "se"

    .line 12
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/athena/config/data/model/g;->j:J

    const-string p1, "urhash"

    .line 13
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/athena/config/data/model/g;->b:I

    const-string p1, "frq"

    .line 14
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v1, p1

    iput-wide v1, p0, Lcom/transsion/athena/config/data/model/g;->k:J

    const-string p1, "ct"

    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/athena/config/data/model/g;->a:I

    const-string p1, "pr"

    .line 16
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/athena/config/data/model/g;->l:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 18
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/athena/config/data/model/g;->k:J

    return-wide v0
.end method

.method public b(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/transsion/athena/config/data/model/g;->f:I

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/g;->c:J

    return-void
.end method

.method public c()I
    .locals 0

    .line 2
    iget p0, p0, Lcom/transsion/athena/config/data/model/g;->f:I

    return p0
.end method

.method public c(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/transsion/athena/config/data/model/g;->e:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/g;->g:J

    return-void
.end method

.method public d()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/athena/config/data/model/g;->e:I

    return p0
.end method

.method public d(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/transsion/athena/config/data/model/g;->h:I

    return-void
.end method

.method public d(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/g;->j:J

    return-void
.end method

.method public e()I
    .locals 0

    .line 2
    iget p0, p0, Lcom/transsion/athena/config/data/model/g;->h:I

    return p0
.end method

.method public e(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/athena/config/data/model/g;->d:I

    return-void
.end method

.method public f()I
    .locals 0

    .line 2
    iget p0, p0, Lcom/transsion/athena/config/data/model/g;->d:I

    return p0
.end method

.method public f(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/athena/config/data/model/g;->l:I

    return-void
.end method

.method public g()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/athena/config/data/model/g;->l:I

    return p0
.end method

.method public g(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/transsion/athena/config/data/model/g;->a:I

    return-void
.end method

.method public h()J
    .locals 6

    .line 2
    iget-wide v0, p0, Lcom/transsion/athena/config/data/model/g;->c:J

    .line 4
    :try_start_0
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->w()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "debug.athena.push_during"

    :try_start_1
    iget-wide v4, p0, Lcom/transsion/athena/config/data/model/g;->c:J

    invoke-static {v2, v3, v4, v5}, Lcom/transsion/athena/config/data/model/c;->a(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    sget-object v2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SystemPropertiesProxy.getLong "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-wide v0
.end method

.method public h(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/athena/config/data/model/g;->b:I

    return-void
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/athena/config/data/model/g;->g:J

    return-wide v0
.end method

.method public j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/athena/config/data/model/g;->j:J

    return-wide v0
.end method

.method public k()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/athena/config/data/model/g;->a:I

    return p0
.end method

.method public l()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/athena/config/data/model/g;->b:I

    return p0
.end method

.method public n()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "gmax"

    .line 2
    :try_start_1
    iget v2, p0, Lcom/transsion/athena/config/data/model/g;->f:I

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "gmin"

    .line 4
    :try_start_2
    iget v2, p0, Lcom/transsion/athena/config/data/model/g;->e:I

    .line 5
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "mi"

    .line 6
    :try_start_3
    iget v2, p0, Lcom/transsion/athena/config/data/model/g;->h:I

    .line 7
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "nf"

    .line 8
    :try_start_4
    iget v2, p0, Lcom/transsion/athena/config/data/model/g;->d:I

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v1, "pd"

    .line 10
    :try_start_5
    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/g;->h()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v1, "se"

    .line 11
    :try_start_6
    iget-wide v2, p0, Lcom/transsion/athena/config/data/model/g;->j:J

    .line 12
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v1, "urhash"

    .line 13
    :try_start_7
    iget v2, p0, Lcom/transsion/athena/config/data/model/g;->b:I

    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v1, "frq"

    .line 15
    :try_start_8
    iget-wide v2, p0, Lcom/transsion/athena/config/data/model/g;->k:J

    .line 16
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string v1, "ct"

    .line 17
    :try_start_9
    iget v2, p0, Lcom/transsion/athena/config/data/model/g;->a:I

    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string v1, "pr"

    .line 19
    :try_start_a
    iget p0, p0, Lcom/transsion/athena/config/data/model/g;->l:I

    .line 20
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 23
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TidConfig { pushTime="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/athena/config/data/model/g;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pushDuration="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/athena/config/data/model/g;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", maxCachedItems="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/athena/config/data/model/g;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cachedItems="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/athena/config/data/model/g;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", netWorkFlag="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/athena/config/data/model/g;->d:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

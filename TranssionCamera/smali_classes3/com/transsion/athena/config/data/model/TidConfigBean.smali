.class public Lcom/transsion/athena/config/data/model/TidConfigBean;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Lcom/transsion/athena/config/data/model/g;

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/transsion/athena/config/data/model/g;

    invoke-direct {v0}, Lcom/transsion/athena/config/data/model/g;-><init>()V

    iput-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/g;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/transsion/athena/config/data/model/g;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/transsion/athena/config/data/model/g;

    invoke-direct {v0}, Lcom/transsion/athena/config/data/model/g;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->a:J

    .line 12
    iput-object p3, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->b:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/g;

    return-void
.end method


# virtual methods
.method public allowTrack(J)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/g;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/g;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-wide v2, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->d:J

    iget-object p0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/g;

    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/g;->b()J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long p0, p1, v2

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public allowUpload(JZ)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/g;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/g;->i()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/g;

    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/g;->h()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    const/4 v7, 0x0

    if-eqz v6, :cond_b

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    goto/16 :goto_5

    :cond_0
    sub-long/2addr p1, v0

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    const/4 p2, 0x1

    if-ltz p1, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, v7

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/g;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/g;->e()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/g;

    .line 9
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/g;->e()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/g;

    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/g;->a()I

    move-result v1

    if-gt v0, v1, :cond_2

    move v0, p2

    goto :goto_1

    :cond_2
    move v0, v7

    .line 11
    :goto_1
    iget-object v1, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/g;

    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/g;->f()I

    move-result v1

    if-eqz v1, :cond_6

    if-ne v1, p2, :cond_5

    .line 13
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 14
    sget-object v2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    .line 453
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_4

    .line 455
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 456
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eq v2, p2, :cond_3

    .line 457
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_4

    :cond_3
    move v1, p2

    goto :goto_2

    :cond_4
    move v1, v7

    :goto_2
    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v7

    goto :goto_4

    :cond_6
    :goto_3
    move v1, p2

    .line 458
    :goto_4
    iget-object p0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/g;

    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/g;->k()I

    move-result p0

    if-ne p0, p2, :cond_9

    if-eqz v1, :cond_8

    if-nez p1, :cond_7

    if-eqz v0, :cond_8

    :cond_7
    move v7, p2

    :cond_8
    return v7

    :cond_9
    if-eqz v1, :cond_b

    if-nez p1, :cond_a

    if-nez v0, :cond_a

    if-eqz p3, :cond_b

    :cond_a
    move v7, p2

    :cond_b
    :goto_5
    return v7
.end method

.method public getEvent()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getTid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->a:J

    return-wide v0
.end method

.method public getTidConfig()Lcom/transsion/athena/config/data/model/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/g;

    return-object p0
.end method

.method public inSamplingRange()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/g;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/g;->l()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x64

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v3, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/g;

    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/g;->d()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/g;

    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/g;->c()I

    move-result v3

    if-ne v3, v2, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-static {}, Lathena/k0;->a()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    invoke-static {}, Lcom/transsion/ga/e;->a()Ljava/lang/String;

    move-result-object v3

    .line 11
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 12
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    rem-int/lit8 v2, v3, 0x64

    .line 14
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    rem-long/2addr v3, v5

    .line 15
    invoke-static {}, Lathena/k0;->c()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 16
    sget-object v5, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "local Hash: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "  config urHash: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " gaidHash = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " gmin = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/g;

    .line 17
    invoke-virtual {v7}, Lcom/transsion/athena/config/data/model/g;->d()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " gmax = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/g;

    invoke-virtual {v7}, Lcom/transsion/athena/config/data/model/g;->c()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-virtual {v5, v6}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :cond_3
    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_5

    .line 21
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/g;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/g;->d()I

    move-result v0

    if-lt v2, v0, :cond_5

    iget-object p0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/g;

    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/g;->c()I

    move-result p0

    if-le v2, p0, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isCacheEnable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/g;

    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/g;->g()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnable()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->c:Lcom/transsion/athena/config/data/model/g;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/g;->h()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->b:Ljava/lang/String;

    return-void
.end method

.method public setLastTTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->d:J

    return-void
.end method

.method public setTid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/TidConfigBean;->a:J

    return-void
.end method

.class public Lcom/transsion/athena/config/data/model/d;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:J

.field private b:J

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lorg/json/JSONObject;

.field private f:J

.field private g:J

.field private h:I

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private m:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x2932e00

    .line 2
    iput-wide v0, p0, Lcom/transsion/athena/config/data/model/d;->a:J

    const-wide/32 v0, 0x249f0

    .line 7
    iput-wide v0, p0, Lcom/transsion/athena/config/data/model/d;->b:J

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/transsion/athena/config/data/model/d;->c:Z

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/transsion/athena/config/data/model/d;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Lcom/transsion/athena/config/data/model/d;->f:J

    const-wide/16 v0, -0x1

    .line 37
    iput-wide v0, p0, Lcom/transsion/athena/config/data/model/d;->g:J

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/transsion/athena/config/data/model/d;->h:I

    .line 44
    iput-boolean v0, p0, Lcom/transsion/athena/config/data/model/d;->i:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/athena/config/data/model/d;->k:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/athena/config/data/model/d;->l:Ljava/util/List;

    .line 52
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/athena/config/data/model/d;->m:Landroid/util/Pair;

    .line 60
    iput v2, p0, Lcom/transsion/athena/config/data/model/d;->o:I

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/transsion/athena/config/data/model/d;
    .locals 9

    const-string v0, "tz"

    const-string v1, "delays"

    const-string v2, "p"

    const-string v3, "tidUrls"

    const-string v4, "url"

    const/4 v5, 0x0

    if-eqz p0, :cond_7

    .line 35
    :try_start_0
    new-instance v6, Lcom/transsion/athena/config/data/model/d;

    invoke-direct {v6}, Lcom/transsion/athena/config/data/model/d;-><init>()V

    const-string v7, "pd"

    .line 36
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/transsion/athena/config/data/model/d;->a:J

    const-string v7, "th"

    .line 37
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/transsion/athena/config/data/model/d;->b:J

    const-string v7, "once"

    .line 38
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v6, Lcom/transsion/athena/config/data/model/d;->c:Z

    .line 39
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 40
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/transsion/athena/config/data/model/d;->d:Ljava/lang/String;

    .line 42
    :cond_0
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 43
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, v6, Lcom/transsion/athena/config/data/model/d;->e:Lorg/json/JSONObject;

    :cond_1
    const-string v3, "version"

    .line 45
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v6, Lcom/transsion/athena/config/data/model/d;->f:J

    const-string v3, "npt"

    .line 47
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v6, Lcom/transsion/athena/config/data/model/d;->g:J

    const-string v3, "rt"

    .line 48
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v6, Lcom/transsion/athena/config/data/model/d;->h:I

    const-string v3, "dd"

    .line 49
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v6, Lcom/transsion/athena/config/data/model/d;->i:Z

    const-string v3, "ddv"

    .line 50
    invoke-virtual {p0, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/transsion/athena/config/data/model/d;->j:Ljava/lang/String;

    .line 52
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 53
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/transsion/athena/config/data/model/d;->a(Lorg/json/JSONArray;)V

    .line 56
    :cond_2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 58
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 59
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, v6, Lcom/transsion/athena/config/data/model/d;->m:Landroid/util/Pair;

    .line 60
    :cond_3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 61
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    iput-object v0, v6, Lcom/transsion/athena/config/data/model/d;->n:Ljava/lang/String;

    :cond_4
    const-string v0, "geo"

    const/4 v1, 0x6

    .line 63
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_6

    const/16 v0, 0xc

    if-lt p0, v0, :cond_5

    goto :goto_0

    :cond_5
    move v1, p0

    .line 64
    :cond_6
    :goto_0
    iput v1, v6, Lcom/transsion/athena/config/data/model/d;->o:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception p0

    .line 65
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :cond_7
    return-object v5
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 24
    iget p0, p0, Lcom/transsion/athena/config/data/model/d;->o:I

    return p0
.end method

.method public a(J)Ljava/lang/String;
    .locals 0

    .line 9
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 12
    iget-object p2, p0, Lcom/transsion/athena/config/data/model/d;->e:Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 14
    :try_start_0
    iget-object p2, p0, Lcom/transsion/athena/config/data/model/d;->e:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    sget-object p2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 20
    iget-object p1, p0, Lcom/transsion/athena/config/data/model/d;->d:Ljava/lang/String;

    :cond_1
    return-object p1
.end method

.method public a(II)V
    .locals 1

    .line 23
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/athena/config/data/model/d;->m:Landroid/util/Pair;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/transsion/athena/config/data/model/d;->j:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/d;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/d;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/transsion/athena/config/data/model/d;->k:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v1, p0, Lcom/transsion/athena/config/data/model/d;->l:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/transsion/athena/config/data/model/d;->i:Z

    return-void
.end method

.method public a(I)Z
    .locals 10

    .line 25
    iget-wide v0, p0, Lcom/transsion/athena/config/data/model/d;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-wide v4, p0, Lcom/transsion/athena/config/data/model/d;->a:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    goto :goto_1

    .line 28
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 29
    iget-wide v4, p0, Lcom/transsion/athena/config/data/model/d;->g:J

    sub-long v4, v2, v4

    .line 30
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/transsion/athena/config/data/model/d;->a:J

    cmp-long v0, v6, v8

    if-ltz v0, :cond_1

    .line 31
    invoke-virtual {p0, v2, v3}, Lcom/transsion/athena/config/data/model/d;->b(J)V

    return v1

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    const/4 v2, 0x0

    if-ltz v0, :cond_3

    .line 34
    iget p0, p0, Lcom/transsion/athena/config/data/model/d;->h:I

    if-ge p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v1
.end method

.method public b()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lcom/transsion/athena/config/data/model/d;->l:Ljava/util/List;

    return-object p0
.end method

.method public b(I)V
    .locals 1

    if-lez p1, :cond_0

    const/16 v0, 0xc

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x6

    .line 5
    :cond_1
    iput p1, p0, Lcom/transsion/athena/config/data/model/d;->o:I

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 6
    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/d;->g:J

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/transsion/athena/config/data/model/d;->h:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/transsion/athena/config/data/model/d;->n:Ljava/lang/String;

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/athena/config/data/model/d;->e:Lorg/json/JSONObject;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/transsion/athena/config/data/model/d;->c:Z

    return-void
.end method

.method public c()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/transsion/athena/config/data/model/d;->a:J

    return-wide v0
.end method

.method public c(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/transsion/athena/config/data/model/d;->h:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/d;->g:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/transsion/athena/config/data/model/d;->d:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 0

    .line 2
    iget p0, p0, Lcom/transsion/athena/config/data/model/d;->h:I

    return p0
.end method

.method public d(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/d;->a:J

    return-void
.end method

.method public e()I
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/d;->m:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/athena/config/data/model/d;->m:Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 3
    sget-object v1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    .line 118
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v1, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p0, v0

    return p0

    :catch_0
    move-exception p0

    .line 119
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x6

    return p0
.end method

.method public e(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    .line 1
    :cond_0
    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/d;->b:J

    return-void
.end method

.method public f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/athena/config/data/model/d;->b:J

    return-wide v0
.end method

.method public f(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/d;->f:J

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/d;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Asia/Shanghai"

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/athena/config/data/model/d;->n:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/athena/config/data/model/d;->f:J

    return-wide v0
.end method

.method public i()Lorg/json/JSONObject;
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/transsion/athena/config/data/model/d;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "pd"

    :try_start_1
    iget-wide v3, p0, Lcom/transsion/athena/config/data/model/d;->a:J

    .line 6
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "th"

    :try_start_2
    iget-wide v3, p0, Lcom/transsion/athena/config/data/model/d;->b:J

    .line 7
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "once"

    :try_start_3
    iget-boolean v3, p0, Lcom/transsion/athena/config/data/model/d;->c:Z

    .line 8
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "url"

    :try_start_4
    iget-object v3, p0, Lcom/transsion/athena/config/data/model/d;->d:Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v2, "tidUrls"

    :try_start_5
    iget-object v3, p0, Lcom/transsion/athena/config/data/model/d;->e:Lorg/json/JSONObject;

    .line 10
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v2, "version"

    :try_start_6
    iget-wide v3, p0, Lcom/transsion/athena/config/data/model/d;->f:J

    .line 11
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v2, "npt"

    :try_start_7
    iget-wide v3, p0, Lcom/transsion/athena/config/data/model/d;->g:J

    .line 12
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v2, "rt"

    :try_start_8
    iget v3, p0, Lcom/transsion/athena/config/data/model/d;->h:I

    .line 13
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string v2, "dd"

    :try_start_9
    iget-boolean v3, p0, Lcom/transsion/athena/config/data/model/d;->i:Z

    .line 14
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string v2, "ddv"

    :try_start_a
    iget-object v3, p0, Lcom/transsion/athena/config/data/model/d;->j:Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "p"

    .line 16
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string v1, "tz"

    :try_start_b
    iget-object v2, p0, Lcom/transsion/athena/config/data/model/d;->n:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const-string v1, "geo"

    :try_start_c
    iget v2, p0, Lcom/transsion/athena/config/data/model/d;->o:I

    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    const-string v1, "delays"

    :try_start_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/transsion/athena/config/data/model/d;->m:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/athena/config/data/model/d;->m:Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 21
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

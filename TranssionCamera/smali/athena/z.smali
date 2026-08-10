.class public Lathena/z;
.super Lathena/x;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lathena/x<",
        "Lathena/d0<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private d:I

.field private e:Ljava/lang/String;

.field private f:J


# direct methods
.method public constructor <init>(ILjava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lathena/x;-><init>()V

    .line 2
    iput p1, p0, Lathena/z;->d:I

    .line 3
    iput-object p2, p0, Lathena/z;->e:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lathena/z;->f:J

    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p1}, Lathena/x;->a(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lathena/z;->c()Lathena/d0;

    move-result-object p0

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppConfig-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lathena/z;->d:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()Lathena/d0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lathena/d0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/transsion/athena/config/data/model/c;->a()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "sname"

    .line 2
    :try_start_1
    iget v2, p0, Lathena/z;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    sget-object v1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    const-string v0, ""

    .line 7
    :goto_0
    iget-object v1, p0, Lathena/z;->e:Ljava/lang/String;

    iget-wide v2, p0, Lathena/z;->f:J

    invoke-static {v1, v0, v2, v3}, Lathena/y;->a(Ljava/lang/String;Ljava/lang/String;J)Lathena/d0;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lathena/z;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    iget p0, p0, Lathena/z;->d:I

    check-cast p1, Lathena/z;

    iget p1, p1, Lathena/z;->d:I

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.class public Lathena/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static volatile a:Lathena/a;


# instance fields
.field private b:Lathena/g;

.field private volatile c:Z


# direct methods
.method private constructor <init>(Lathena/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lathena/a;->b:Lathena/g;

    return-void
.end method

.method public static a(Lathena/g;)Lathena/a;
    .locals 2

    .line 1
    sget-object v0, Lathena/a;->a:Lathena/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lathena/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lathena/a;->a:Lathena/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lathena/a;

    invoke-direct {v1, p0}, Lathena/a;-><init>(Lathena/g;)V

    sput-object v1, Lathena/a;->a:Lathena/a;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 8
    :cond_1
    :goto_0
    sget-object p0, Lathena/a;->a:Lathena/a;

    return-object p0
.end method


# virtual methods
.method public a(ILjava/lang/String;)I
    .locals 1

    .line 120
    iget-boolean v0, p0, Lathena/a;->c:Z

    if-nez v0, :cond_0

    .line 121
    sget-object p0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string p1, "isTidEnable init not completed"

    invoke-virtual {p0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    const/16 p0, 0x65

    return p0

    .line 124
    :cond_0
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    sget-object p0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string p1, "isTidEnable sdk disable"

    invoke-virtual {p0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    const/16 p0, 0x64

    return p0

    .line 128
    :cond_1
    iget-object v0, p0, Lathena/a;->b:Lathena/g;

    invoke-virtual {v0}, Lathena/g;->b()Lcom/transsion/athena/config/data/model/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/e;->b()Lcom/transsion/athena/config/data/model/d;

    move-result-object v0

    .line 129
    iget-object p0, p0, Lathena/a;->b:Lathena/g;

    invoke-virtual {p0}, Lathena/g;->b()Lcom/transsion/athena/config/data/model/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/athena/config/data/model/e;->a(I)Lcom/transsion/athena/config/data/model/a;

    move-result-object p0

    .line 130
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/d;->b()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/config/data/model/c;->b(Ljava/util/Collection;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_7

    if-eqz p0, :cond_7

    .line 131
    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/a;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {p0, p2}, Lcom/transsion/athena/config/data/model/a;->b(Ljava/lang/String;)Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-result-object p0

    if-nez p0, :cond_4

    .line 140
    invoke-static {}, Lathena/k0;->c()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 141
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] is invalid or not registered"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lathena/k0;->a(Ljava/lang/String;)V

    :cond_3
    const/16 p0, 0x67

    return p0

    .line 145
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/TidConfigBean;->inSamplingRange()Z

    move-result p1

    if-nez p1, :cond_5

    .line 146
    sget-object p0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string p1, "isTidEnable device is not in sampling range"

    invoke-virtual {p0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    const/16 p0, 0x69

    return p0

    .line 149
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/TidConfigBean;->isEnable()Z

    move-result p0

    if-eqz p0, :cond_6

    return v0

    .line 152
    :cond_6
    sget-object p0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string p1, "isTidEnable tid config is closed"

    invoke-virtual {p0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    const/16 p0, 0x68

    return p0

    .line 153
    :cond_7
    :goto_0
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->q()Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "location#page_view#athena_anr_full"

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_8

    return v0

    :cond_8
    const/16 p0, 0x66

    return p0
.end method

.method public a(J)I
    .locals 2

    .line 9
    iget-boolean v0, p0, Lathena/a;->c:Z

    if-nez v0, :cond_0

    .line 10
    sget-object p0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string p1, "isTidEnable init not completed"

    invoke-virtual {p0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    const/16 p0, 0x65

    return p0

    .line 13
    :cond_0
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    sget-object p0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string p1, "isTidEnable sdk disable"

    invoke-virtual {p0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    const/16 p0, 0x64

    return p0

    .line 17
    :cond_1
    iget-object v0, p0, Lathena/a;->b:Lathena/g;

    invoke-virtual {v0}, Lathena/g;->b()Lcom/transsion/athena/config/data/model/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/e;->b()Lcom/transsion/athena/config/data/model/d;

    move-result-object v0

    .line 18
    iget-object p0, p0, Lathena/a;->b:Lathena/g;

    invoke-virtual {p0}, Lathena/g;->b()Lcom/transsion/athena/config/data/model/e;

    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    invoke-static {p1, p2}, Lathena/k0;->a(J)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/transsion/athena/config/data/model/e;->a(I)Lcom/transsion/athena/config/data/model/a;

    move-result-object p0

    .line 98
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/config/data/model/c;->b(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    if-eqz p0, :cond_6

    .line 99
    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/a;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/athena/config/data/model/a;->a(J)Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-result-object p0

    if-nez p0, :cond_3

    .line 108
    sget-object p0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string p1, "isTidEnable tid config is null"

    invoke-virtual {p0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    const/16 p0, 0x67

    return p0

    .line 111
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/TidConfigBean;->inSamplingRange()Z

    move-result p1

    if-nez p1, :cond_4

    .line 112
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isTidEnable tid "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " is not in sampling range"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    const/16 p0, 0x69

    return p0

    .line 115
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/TidConfigBean;->isEnable()Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    .line 118
    :cond_5
    sget-object p0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string p1, "isTidEnable tid config is closed"

    invoke-virtual {p0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    const/16 p0, 0x68

    return p0

    .line 119
    :cond_6
    :goto_0
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->q()Z

    move-result p0

    if-eqz p0, :cond_7

    return v1

    :cond_7
    const/16 p0, 0x66

    return p0
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

    .line 157
    iget-object p0, p0, Lathena/a;->b:Lathena/g;

    invoke-virtual {p0}, Lathena/g;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public a(I)V
    .locals 0

    .line 155
    iget-object p0, p0, Lathena/a;->b:Lathena/g;

    invoke-virtual {p0, p1}, Lathena/g;->a(I)V

    return-void
.end method

.method public a(Lathena/c0;Lathena/c;)V
    .locals 0

    .line 154
    iget-object p0, p0, Lathena/a;->b:Lathena/g;

    invoke-virtual {p0, p1, p2}, Lathena/g;->a(Lathena/c0;Lathena/c;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/athena/config/data/model/a;",
            ">;)V"
        }
    .end annotation

    .line 156
    iget-object p0, p0, Lathena/a;->b:Lathena/g;

    invoke-virtual {p0, p1}, Lathena/g;->a(Ljava/util/List;)V

    return-void
.end method

.method public b()I
    .locals 0

    .line 6
    iget-object p0, p0, Lathena/a;->b:Lathena/g;

    invoke-virtual {p0}, Lathena/g;->b()Lcom/transsion/athena/config/data/model/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/e;->b()Lcom/transsion/athena/config/data/model/d;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/d;->a()I

    move-result p0

    return p0
.end method

.method public b(ILjava/lang/String;)Lcom/transsion/athena/config/data/model/TidConfigBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lathena/a;->b:Lathena/g;

    invoke-virtual {p0}, Lathena/g;->b()Lcom/transsion/athena/config/data/model/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/athena/config/data/model/e;->a(I)Lcom/transsion/athena/config/data/model/a;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Lcom/transsion/athena/config/data/model/a;->b(Ljava/lang/String;)Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public b(I)Lcom/transsion/athena/config/data/model/a;
    .locals 0

    .line 4
    iget-object p0, p0, Lathena/a;->b:Lathena/g;

    invoke-virtual {p0}, Lathena/g;->b()Lcom/transsion/athena/config/data/model/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/athena/config/data/model/e;->a(I)Lcom/transsion/athena/config/data/model/a;

    move-result-object p0

    return-object p0
.end method

.method public b(J)Lcom/transsion/athena/config/data/model/b;
    .locals 0

    .line 5
    iget-object p0, p0, Lathena/a;->b:Lathena/g;

    invoke-virtual {p0, p1, p2}, Lathena/g;->a(J)Lcom/transsion/athena/config/data/model/b;

    move-result-object p0

    return-object p0
.end method

.method public c(J)Lcom/transsion/athena/config/data/model/TidConfigBean;
    .locals 4

    .line 1
    iget-object p0, p0, Lathena/a;->b:Lathena/g;

    invoke-virtual {p0}, Lathena/g;->b()Lcom/transsion/athena/config/data/model/e;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {p1, p2}, Lathena/k0;->a(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/athena/config/data/model/e;->a(I)Lcom/transsion/athena/config/data/model/a;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/a;->g()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/athena/config/data/model/TidConfigBean;

    .line 5
    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 7
    iget-object p0, p0, Lathena/a;->b:Lathena/g;

    invoke-virtual {p0}, Lathena/g;->b()Lcom/transsion/athena/config/data/model/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/e;->b()Lcom/transsion/athena/config/data/model/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/d;->b()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public c(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/athena/config/data/model/TidConfigBean;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object p0, p0, Lathena/a;->b:Lathena/g;

    invoke-virtual {p0, p1}, Lathena/g;->b(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public d()I
    .locals 0

    .line 1
    iget-object p0, p0, Lathena/a;->b:Lathena/g;

    invoke-virtual {p0}, Lathena/g;->b()Lcom/transsion/athena/config/data/model/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/e;->b()Lcom/transsion/athena/config/data/model/d;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/d;->e()I

    move-result p0

    return p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lathena/a;->b:Lathena/g;

    invoke-virtual {p0}, Lathena/g;->b()Lcom/transsion/athena/config/data/model/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/e;->b()Lcom/transsion/athena/config/data/model/d;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/d;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lathena/a;->b:Lathena/g;

    invoke-virtual {v0}, Lathena/g;->d()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lathena/a;->c:Z

    return-void
.end method

.method public g()Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lathena/a;->b:Lathena/g;

    invoke-virtual {p0}, Lathena/g;->e()Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public h()V
    .locals 0

    .line 1
    iget-object p0, p0, Lathena/a;->b:Lathena/g;

    invoke-virtual {p0}, Lathena/g;->f()V

    return-void
.end method

.method public i()V
    .locals 0

    .line 1
    iget-object p0, p0, Lathena/a;->b:Lathena/g;

    invoke-virtual {p0}, Lathena/g;->g()V

    return-void
.end method

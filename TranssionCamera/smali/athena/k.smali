.class public Lathena/k;
.super Lathena/i;
.source "source.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static volatile b:Lathena/k;


# instance fields
.field private c:Z

.field private d:Z

.field private e:I

.field private final f:Landroid/os/Handler;

.field private g:I

.field private h:Lathena/c0;

.field private i:Lathena/n;

.field private j:Lathena/a;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/athena/data/Track;",
            ">;"
        }
    .end annotation
.end field

.field private l:J

.field private volatile m:Z

.field private n:J

.field private o:Lathena/w;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private final r:Lathena/c;

.field private s:J

.field private final t:Ljava/lang/Runnable;

.field private final u:Landroid/location/LocationListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lathena/i;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lathena/k;->c:Z

    .line 6
    iput-boolean p1, p0, Lathena/k;->d:Z

    const/16 v0, 0x2710

    .line 10
    iput v0, p0, Lathena/k;->e:I

    .line 42
    iput-boolean p1, p0, Lathena/k;->m:Z

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lathena/k;->n:J

    .line 65
    new-instance p1, Lathena/k$e;

    invoke-direct {p1, p0}, Lathena/k$e;-><init>(Lathena/k;)V

    iput-object p1, p0, Lathena/k;->r:Lathena/c;

    .line 1072
    iput-wide v0, p0, Lathena/k;->s:J

    .line 1076
    new-instance p1, Lathena/k$c;

    invoke-direct {p1, p0}, Lathena/k$c;-><init>(Lathena/k;)V

    iput-object p1, p0, Lathena/k;->t:Ljava/lang/Runnable;

    .line 1096
    new-instance p1, Lathena/k$d;

    invoke-direct {p1, p0}, Lathena/k$d;-><init>(Lathena/k;)V

    iput-object p1, p0, Lathena/k;->u:Landroid/location/LocationListener;

    .line 1097
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "Athena Worker"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 1098
    invoke-virtual {p1, v0}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 1099
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 1100
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lathena/k;->f:Landroid/os/Handler;

    const/16 p0, 0x12f

    .line 1101
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic a(Lathena/k;)Landroid/location/LocationListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lathena/k;->u:Landroid/location/LocationListener;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lathena/k;
    .locals 2

    .line 5
    sget-object v0, Lathena/k;->b:Lathena/k;

    if-nez v0, :cond_1

    .line 6
    const-class v0, Lathena/k;

    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Lathena/k;->b:Lathena/k;

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lathena/k;

    invoke-direct {v1, p0}, Lathena/k;-><init>(Landroid/content/Context;)V

    sput-object v1, Lathena/k;->b:Lathena/k;

    .line 10
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 12
    :cond_1
    :goto_0
    sget-object p0, Lathena/k;->b:Lathena/k;

    return-object p0
.end method

.method static synthetic a(Lathena/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lathena/k;->q:Ljava/lang/String;

    return-object p1
.end method

.method private a(JILjava/util/List;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v10, p1

    move/from16 v12, p3

    .line 22
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lathena/k0;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "checkUpload network unavailable"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    return-void

    .line 27
    :cond_0
    iget-object v0, v1, Lathena/k;->o:Lathena/w;

    invoke-virtual {v0}, Lathena/w;->e()Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_2

    .line 28
    iget-object v0, v1, Lathena/k;->o:Lathena/w;

    invoke-virtual {v0}, Lathena/w;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v2, "checkUpload sync baseTime"

    invoke-virtual {v0, v2}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 30
    iget-object v0, v1, Lathena/k;->o:Lathena/w;

    invoke-virtual {v0, v13}, Lathena/w;->a(Z)V

    .line 31
    iget-object v0, v1, Lathena/k;->h:Lathena/c0;

    new-instance v1, Lathena/a0;

    invoke-direct {v1}, Lathena/a0;-><init>()V

    invoke-virtual {v0, v1}, Lathena/c0;->a(Lathena/x;)Z

    :cond_1
    return-void

    .line 36
    :cond_2
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->s()Z

    move-result v0

    if-nez v0, :cond_4

    .line 37
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v2, "checkUpload sdk disable or gaid invalid"

    invoke-virtual {v0, v2}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 38
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lathena/n0;->a(Landroid/content/Context;)Lathena/n0;

    move-result-object v0

    const-string v2, "gdpr_close"

    invoke-virtual {v0, v2}, Lathena/n0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 40
    iget-object v1, v1, Lathena/k;->h:Lathena/c0;

    if-eqz v1, :cond_3

    .line 41
    new-instance v2, Lathena/h0;

    invoke-direct {v2, v0}, Lathena/h0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lathena/c0;->a(Lathena/x;)Z

    :cond_3
    return-void

    .line 47
    :cond_4
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/gslb/GslbSdk;->isInitSuccess(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 48
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "checkUpload new domain is not ready"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    return-void

    .line 52
    :cond_5
    iget-object v0, v1, Lathena/k;->j:Lathena/a;

    invoke-virtual {v0}, Lathena/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/config/data/model/c;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 53
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "checkUpload global config is not ready"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    return-void

    .line 57
    :cond_6
    iget-object v0, v1, Lathena/k;->i:Lathena/n;

    invoke-virtual {v0}, Lathena/n;->c()Ljava/util/List;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/transsion/athena/config/data/model/c;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 59
    iget-object v2, v1, Lathena/k;->j:Lathena/a;

    invoke-virtual {v2}, Lathena/a;->a()Ljava/util/List;

    move-result-object v2

    .line 60
    invoke-static {v2}, Lcom/transsion/athena/config/data/model/c;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 61
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "checkUpload appid config is null"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    return-void

    .line 64
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/athena/config/data/model/a;

    .line 65
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/a;->a()I

    move-result v3

    invoke-static {v4, v3}, Lcom/transsion/athena/data/AppIdData;->a(Landroid/content/Context;I)Lcom/transsion/athena/data/AppIdData;

    move-result-object v3

    if-nez v0, :cond_8

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    :cond_8
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v4, v1, Lathena/k;->i:Lathena/n;

    invoke-virtual {v4, v3}, Lathena/n;->a(Lcom/transsion/athena/data/AppIdData;)V

    goto :goto_0

    .line 75
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/athena/data/AppIdData;

    .line 76
    iget-object v4, v1, Lathena/k;->j:Lathena/a;

    iget v5, v3, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-virtual {v4, v5}, Lathena/a;->b(I)Lcom/transsion/athena/config/data/model/a;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 78
    invoke-virtual {v4}, Lcom/transsion/athena/config/data/model/a;->e()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/transsion/athena/data/AppIdData;->f:Ljava/lang/String;

    goto :goto_1

    .line 81
    :cond_b
    new-instance v2, Lathena/k$j;

    invoke-direct {v2, v1}, Lathena/k$j;-><init>(Lathena/k;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_c
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/athena/data/AppIdData;

    .line 83
    iget-object v6, v5, Lcom/transsion/athena/data/AppIdData;->c:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_2

    :cond_d
    if-nez v3, :cond_e

    .line 87
    iget-object v3, v5, Lcom/transsion/athena/data/AppIdData;->c:Ljava/lang/String;

    move v4, v13

    goto :goto_2

    .line 89
    :cond_e
    iget-object v5, v5, Lcom/transsion/athena/data/AppIdData;->c:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    const/4 v4, 0x2

    :cond_f
    if-ne v4, v13, :cond_12

    .line 95
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v13

    :goto_3
    if-ltz v2, :cond_11

    .line 96
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/athena/data/AppIdData;

    iget-object v4, v4, Lcom/transsion/athena/data/AppIdData;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 97
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_10
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_11
    move-object/from16 v16, v3

    goto :goto_5

    :cond_12
    if-le v4, v13, :cond_15

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/athena/data/AppIdData;

    .line 104
    iget-object v5, v4, Lcom/transsion/athena/data/AppIdData;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 105
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 108
    :cond_14
    iget-object v3, v1, Lathena/k;->i:Lathena/n;

    invoke-virtual {v3, v2}, Lathena/n;->a(Ljava/util/List;)V

    :cond_15
    const/16 v16, 0x0

    .line 109
    :goto_5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 111
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-object/from16 v0, p4

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/transsion/athena/data/AppIdData;

    .line 112
    iget-object v4, v1, Lathena/k;->j:Lathena/a;

    iget v5, v8, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-virtual {v4, v5}, Lathena/a;->b(I)Lcom/transsion/athena/config/data/model/a;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 114
    invoke-virtual {v4}, Lcom/transsion/athena/config/data/model/a;->g()Ljava/util/List;

    move-result-object v4

    goto :goto_7

    :cond_16
    const/4 v4, 0x0

    .line 115
    :goto_7
    invoke-static {v4}, Lcom/transsion/athena/config/data/model/c;->a(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 116
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object v7, v0

    move v5, v2

    move/from16 v19, v3

    :goto_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/transsion/athena/config/data/model/TidConfigBean;

    if-ne v12, v13, :cond_17

    move v0, v13

    goto :goto_9

    :cond_17
    const/4 v0, 0x0

    .line 117
    :goto_9
    invoke-virtual {v6, v10, v11, v0}, Lcom/transsion/athena/config/data/model/TidConfigBean;->allowUpload(JZ)Z

    move-result v0

    if-eqz v0, :cond_1f

    if-nez v12, :cond_1a

    .line 119
    iget-object v2, v1, Lathena/k;->i:Lathena/n;

    invoke-virtual {v6}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v3

    move-object/from16 v20, v6

    move-wide/from16 v5, p1

    move-object v14, v7

    move-object/from16 v7, v16

    invoke-virtual/range {v2 .. v7}, Lathena/n;->a(JJLjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_19

    if-nez v14, :cond_18

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    goto :goto_a

    :cond_18
    move-object v7, v14

    .line 124
    :goto_a
    invoke-virtual/range {v20 .. v20}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 126
    :cond_19
    invoke-direct {v1, v10, v11, v13, v14}, Lathena/k;->a(JILjava/util/List;)V

    return-void

    :cond_1a
    move-object/from16 v20, v6

    move-object v14, v7

    .line 130
    iget-boolean v0, v1, Lathena/k;->d:Z

    if-eqz v0, :cond_1b

    .line 132
    :try_start_0
    iget-object v0, v1, Lathena/k;->i:Lathena/n;

    invoke-virtual/range {v20 .. v20}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v2

    new-instance v4, Lathena/k$k;

    invoke-direct {v4, v1}, Lathena/k$k;-><init>(Lathena/k;)V

    invoke-virtual {v0, v2, v3, v4}, Lathena/n;->a(JLathena/n$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    .line 141
    sget-object v2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    const-string v2, "checkUploadFile"

    .line 142
    invoke-direct {v1, v2, v0}, Lathena/k;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1b
    :goto_b
    if-eqz v14, :cond_1c

    .line 146
    invoke-virtual/range {v20 .. v20}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move/from16 v21, v5

    goto :goto_c

    .line 150
    :cond_1c
    iget-object v2, v1, Lathena/k;->i:Lathena/n;

    invoke-virtual/range {v20 .. v20}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v3

    const v0, 0xe1000

    sub-int v20, v0, v19

    rsub-int v7, v5, 0x7d0

    move/from16 v21, v5

    move-wide/from16 v5, p1

    move/from16 v22, v7

    move-object/from16 v7, v16

    move-object v15, v8

    move/from16 v8, v20

    move-object v13, v9

    move/from16 v9, v22

    invoke-virtual/range {v2 .. v9}, Lathena/n;->a(JJLjava/lang/String;II)Lcom/transsion/athena/data/f;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 154
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 155
    :cond_1d
    iget-object v3, v15, Lcom/transsion/athena/data/AppIdData;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget v3, v2, Lcom/transsion/athena/data/f;->e:I

    add-int v5, v21, v3

    .line 157
    iget v2, v2, Lcom/transsion/athena/data/f;->f:I

    add-int v2, v19, v2

    const/16 v3, 0x7d0

    if-ge v5, v3, :cond_27

    if-lt v2, v0, :cond_1e

    goto/16 :goto_f

    :cond_1e
    move/from16 v19, v2

    move-object v9, v13

    move-object v7, v14

    move-object v8, v15

    goto :goto_d

    :cond_1f
    move/from16 v21, v5

    move-object v14, v7

    :goto_c
    move-object v15, v8

    move-object v13, v9

    :cond_20
    move-object v9, v13

    move-object v7, v14

    move-object v8, v15

    move/from16 v5, v21

    :goto_d
    const/4 v13, 0x1

    goto/16 :goto_8

    :cond_21
    move/from16 v21, v5

    move-object v14, v7

    move-object v15, v8

    move-object v13, v9

    move-object v0, v14

    move/from16 v3, v19

    move/from16 v2, v21

    goto :goto_e

    :cond_22
    move-object v15, v8

    move-object v13, v9

    .line 167
    sget-object v4, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkUpload tid config is null "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v15, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    :goto_e
    if-eqz v12, :cond_23

    .line 170
    iget-object v4, v15, Lcom/transsion/athena/data/AppIdData;->e:Ljava/util/List;

    invoke-static {v4}, Lcom/transsion/athena/config/data/model/c;->b(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 171
    :cond_23
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 172
    iget-object v4, v1, Lathena/k;->i:Lathena/n;

    invoke-static {v15}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lathena/n;->a(Ljava/util/List;)V

    :cond_24
    const/4 v4, 0x1

    if-ne v12, v4, :cond_25

    .line 175
    iget-object v4, v15, Lcom/transsion/athena/data/AppIdData;->f:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_25

    iget-object v4, v15, Lcom/transsion/athena/data/AppIdData;->e:Ljava/util/List;

    .line 176
    invoke-static {v4}, Lcom/transsion/athena/config/data/model/c;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_25

    :goto_f
    goto :goto_10

    :cond_25
    move-object v9, v13

    const/4 v13, 0x1

    goto/16 :goto_6

    :cond_26
    move-object v13, v9

    :cond_27
    :goto_10
    const/4 v2, 0x1

    if-ne v12, v2, :cond_2a

    .line 181
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2a

    .line 182
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 v0, 0x8

    .line 183
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    :goto_11
    if-ge v15, v0, :cond_28

    const/16 v4, 0x24

    .line 186
    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    const-string v5, "0123456789abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    goto :goto_11

    .line 188
    :cond_28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    iget-object v2, v1, Lathena/k;->i:Lathena/n;

    invoke-virtual {v2, v13, v0}, Lathena/n;->a(Ljava/util/List;Ljava/lang/String;)V

    move-object v6, v0

    goto :goto_12

    :cond_29
    move-object/from16 v6, v16

    .line 191
    :goto_12
    iget-object v0, v1, Lathena/k;->h:Lathena/c0;

    if-eqz v0, :cond_2a

    .line 192
    new-instance v8, Lathena/e0;

    iget-object v7, v1, Lathena/k;->p:Ljava/lang/String;

    move-object v2, v8

    move-object v3, v13

    move-wide/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lathena/e0;-><init>(Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lathena/c0;->a(Lathena/x;)Z

    move-result v0

    iput-boolean v0, v1, Lathena/k;->m:Z

    :cond_2a
    return-void
.end method

.method private a(Landroid/location/Location;)V
    .locals 9

    .line 662
    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const/4 v1, 0x1

    const-string v2, "lat"

    const-string v3, "lng"

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 664
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v4

    sget-object v5, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    .line 665
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    sget-object v7, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p1, v6, v7}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    .line 667
    invoke-virtual {v0, v3, v4, v5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;D)Lcom/transsion/athena/data/TrackData;

    move-result-object p1

    .line 668
    invoke-virtual {p1, v2, v6, v7}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;D)Lcom/transsion/athena/data/TrackData;

    .line 670
    :try_start_0
    iget-object p0, p0, Lathena/k;->j:Lathena/a;

    .line 672
    invoke-virtual {p0}, Lathena/a;->b()I

    move-result p0

    .line 673
    invoke-static {v6, v7, v4, v5, p0}, Lathena/t;->a(DDI)Lathena/t;

    move-result-object p0

    .line 675
    invoke-virtual {p0}, Lathena/t;->a()Ljava/lang/String;

    move-result-object p0

    const-string p1, "geono"

    .line 676
    invoke-virtual {v0, p1, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 678
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :goto_0
    move v4, v1

    goto :goto_1

    .line 682
    :cond_0
    invoke-virtual {v0, v3, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    move-result-object p0

    invoke-virtual {p0, v2, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    .line 685
    :goto_1
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, p1}, Lathena/k0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 686
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/ga/e;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 687
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 688
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lathena/s;

    .line 690
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v5, "cellid"

    .line 691
    :try_start_2
    invoke-virtual {v2}, Lathena/s;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    const-string v5, "level"

    :try_start_3
    iget v2, v2, Lathena/s;->e:I

    .line 692
    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 693
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 697
    sget-object v3, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    goto :goto_2

    .line 700
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p0

    const-string v2, "cellidlist"

    if-lez p0, :cond_2

    .line 701
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    goto :goto_3

    :cond_2
    const-string p0, ""

    .line 704
    invoke-virtual {v0, v2, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    :cond_3
    move v1, v4

    :goto_3
    if-eqz v1, :cond_4

    const/16 p0, 0x270f

    .line 726
    invoke-static {p0}, Lcom/transsion/ga/AthenaAnalytics;->getInstance(I)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object p1

    const-string v1, "location"

    .line 727
    invoke-virtual {p1, v1, v0, p0}, Lcom/transsion/ga/AthenaAnalytics;->track(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;I)V

    :cond_4
    return-void
.end method

.method static a(Lathena/k;IZ)V
    .locals 8

    .line 524
    iget-object v0, p0, Lathena/k;->j:Lathena/a;

    invoke-virtual {v0, p1}, Lathena/a;->b(I)Lcom/transsion/athena/config/data/model/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 526
    iget-object v3, p0, Lathena/k;->i:Lathena/n;

    invoke-virtual {v3, v0, p2}, Lathena/n;->a(Lcom/transsion/athena/config/data/model/a;Z)V

    .line 527
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/a;->e()Ljava/lang/String;

    move-result-object v3

    .line 528
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 529
    invoke-static {v3}, Lcom/transsion/gslb/GslbSdk;->isInitSuccess(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 530
    iget-object v4, p0, Lathena/i;->a:Landroid/content/Context;

    new-array v5, v2, [Ljava/lang/String;

    aput-object v3, v5, v1

    new-instance v6, Lathena/l;

    invoke-direct {v6, p0, v3, p1, v0}, Lathena/l;-><init>(Lathena/k;Ljava/lang/String;ILcom/transsion/athena/config/data/model/a;)V

    invoke-static {v4, v5, v6}, Lcom/transsion/gslb/GslbSdk;->init(Landroid/content/Context;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$InitListener;)V

    goto :goto_0

    .line 541
    :cond_0
    iget-object v4, p0, Lathena/k;->q:Ljava/lang/String;

    invoke-direct {p0, v3, p1, v0, v4}, Lathena/k;->a(Ljava/lang/String;ILcom/transsion/athena/config/data/model/a;Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    .line 547
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/a;->g()Ljava/util/List;

    move-result-object p2

    .line 548
    invoke-static {p2}, Lcom/transsion/athena/config/data/model/c;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 549
    sget-object p0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string p1, "handleTidChange tid config is null"

    invoke-virtual {p0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 552
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 553
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/athena/config/data/model/TidConfigBean;

    .line 554
    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/athena/config/data/model/g;->h()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 555
    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 558
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 560
    :try_start_0
    iget-object p2, p0, Lathena/k;->i:Lathena/n;

    iget-boolean v3, p0, Lathena/k;->d:Z

    new-instance v4, Lathena/m;

    invoke-direct {v4, p0}, Lathena/m;-><init>(Lathena/k;)V

    invoke-virtual {p2, v0, v3, v4}, Lathena/n;->a(Ljava/util/List;ZLcom/transsion/athena/data/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 571
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    const-string v0, "handleTidChange"

    .line 572
    invoke-direct {p0, v0, p2}, Lathena/k;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 575
    :cond_5
    :goto_2
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->getConfigListener()Lcom/transsion/ga/AthenaAnalytics$ConfigListener;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 576
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->getConfigListener()Lcom/transsion/ga/AthenaAnalytics$ConfigListener;

    move-result-object p2

    iget-object v0, p0, Lathena/k;->j:Lathena/a;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lathena/a;->c(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/transsion/ga/AthenaAnalytics$ConfigListener;->onSyncSuccess(Ljava/util/List;)V

    .line 579
    :cond_6
    invoke-static {}, Lcom/transsion/athena/data/c;->b()I

    move-result p2

    if-ne p2, p1, :cond_8

    .line 580
    iget-object p2, p0, Lathena/k;->j:Lathena/a;

    const-string v0, "page_view"

    .line 581
    invoke-virtual {p2, p1, v0}, Lathena/a;->a(ILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_7

    move v1, v2

    .line 582
    :cond_7
    invoke-static {v1}, Lcom/transsion/athena/config/data/model/f;->e(Z)V

    .line 584
    iget-object p0, p0, Lathena/k;->j:Lathena/a;

    const-string p2, "athena_anr_full"

    .line 585
    invoke-virtual {p0, p1, p2}, Lathena/a;->a(ILjava/lang/String;)I

    :cond_8
    :goto_3
    return-void
.end method

.method static synthetic a(Lathena/k;Landroid/location/Location;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lathena/k;->a(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic a(Lathena/k;Ljava/lang/String;ILcom/transsion/athena/config/data/model/a;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lathena/k;->a(Ljava/lang/String;ILcom/transsion/athena/config/data/model/a;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/transsion/athena/config/data/model/a;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    .line 586
    :try_start_0
    iget-object p1, p0, Lathena/k;->j:Lathena/a;

    if-eqz p1, :cond_0

    .line 587
    invoke-virtual {p1}, Lathena/a;->h()V

    .line 589
    :cond_0
    iget-object p1, p0, Lathena/k;->i:Lathena/n;

    if-eqz p1, :cond_2

    .line 590
    invoke-virtual {p1}, Lathena/n;->a()V

    goto :goto_0

    .line 593
    :cond_1
    iget-object v0, p0, Lathena/k;->i:Lathena/n;

    invoke-virtual {p1}, Lcom/transsion/athena/config/data/model/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lathena/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 594
    invoke-virtual {p1, p2}, Lcom/transsion/athena/config/data/model/a;->c(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 595
    invoke-virtual {p1, v0, v1}, Lcom/transsion/athena/config/data/model/a;->c(J)V

    const-wide/16 v0, -0x1

    .line 596
    invoke-virtual {p1, v0, v1}, Lcom/transsion/athena/config/data/model/a;->b(J)V

    .line 597
    iget-object p2, p0, Lathena/k;->i:Lathena/n;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lathena/n;->a(Lcom/transsion/athena/config/data/model/a;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 601
    sget-object p2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    const-string p2, "handleCleanupData"

    .line 602
    invoke-direct {p0, p2, p1}, Lathena/k;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Lcom/transsion/athena/config/data/model/a;Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 603
    :try_start_0
    invoke-static {}, Lathena/k0;->a()Ljava/lang/String;

    move-result-object p3

    .line 604
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 605
    invoke-static {}, Lcom/transsion/ga/e;->a()Ljava/lang/String;

    move-result-object p3

    :cond_0
    const v1, 0x1b7740

    .line 608
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 609
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    rem-int/lit8 p3, p3, 0x1e

    mul-int/lit8 p3, p3, 0x3c

    mul-int/lit16 v1, p3, 0x3e8

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 612
    :cond_2
    :goto_0
    invoke-virtual {p1, p2}, Lcom/transsion/athena/config/data/model/a;->c(Ljava/lang/String;)V

    const-wide/16 p2, 0x0

    .line 613
    invoke-virtual {p1, p2, p3}, Lcom/transsion/athena/config/data/model/a;->c(J)V

    .line 614
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    int-to-long v1, v1

    add-long/2addr p2, v1

    invoke-virtual {p1, p2, p3}, Lcom/transsion/athena/config/data/model/a;->b(J)V

    .line 615
    iget-object p2, p0, Lathena/k;->i:Lathena/n;

    invoke-virtual {p2, p1, v0}, Lathena/n;->a(Lcom/transsion/athena/config/data/model/a;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 617
    :goto_1
    sget-object p2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    const-string p2, "handlePullConfig"

    .line 618
    invoke-direct {p0, p2, p1}, Lathena/k;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private a(Lcom/transsion/athena/data/Track;)V
    .locals 11

    const-string v0, "net"

    .line 364
    iget-object v1, p0, Lathena/k;->p:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 365
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "page_enter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "event"

    .line 368
    :try_start_1
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "ts"

    .line 369
    :try_start_2
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "tid"

    .line 370
    :try_start_3
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    .line 371
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getJsonData()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "eparam"

    .line 372
    :try_start_4
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getJsonData()Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "_eparam"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 373
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lathena/k;->p:Ljava/lang/String;

    .line 374
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lathena/n0;->a(Landroid/content/Context;)Lathena/n0;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v0, "first_page_enter"

    :try_start_5
    iget-object v1, p0, Lathena/k;->p:Ljava/lang/String;

    .line 375
    invoke-virtual {p1, v0, v1}, Lathena/n0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveToSp event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lathena/k;->p:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 378
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 383
    :cond_0
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    sget-object p0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string p1, "Athena SDK isAthenaEnable = false"

    invoke-virtual {p0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    return-void

    .line 388
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getJsonData()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    sget-object v1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save Track tid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 390
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xaf000

    if-lt v0, v1, :cond_2

    .line 391
    sget-object p0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string p1, "saveToDB failed that eparam is too long"

    invoke-virtual {p0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    return-void

    .line 395
    :cond_2
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_launch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 396
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lathena/n0;->a(Landroid/content/Context;)Lathena/n0;

    move-result-object v0

    .line 397
    invoke-virtual {v0, v1}, Lathena/n0;->b(Ljava/lang/String;)I

    move-result v2

    const-wide/16 v3, 0x3e8

    if-eqz v2, :cond_3

    .line 399
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v5

    div-long/2addr v5, v3

    int-to-long v7, v2

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v7, 0x5460

    cmp-long v2, v5, v7

    if-gtz v2, :cond_3

    return-void

    .line 403
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v5

    div-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lathena/n0;->a(Ljava/lang/String;I)V

    .line 407
    :cond_4
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v0

    const-wide/16 v2, 0x270f

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 408
    iget-object v0, p0, Lathena/k;->j:Lathena/a;

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lathena/a;->c(J)Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-result-object v0

    goto :goto_1

    .line 410
    :cond_5
    iget-object v0, p0, Lathena/k;->j:Lathena/a;

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lathena/a;->b(ILjava/lang/String;)Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 412
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/transsion/athena/data/Track;->setTid(J)V

    .line 417
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackFlag()I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    .line 418
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/TidConfigBean;->isCacheEnable()Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v4

    goto :goto_2

    :cond_7
    move v1, v5

    .line 422
    :goto_2
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->k()I

    move-result v6

    const-string v7, "saveToDB failed that limit in one-life-cycle"

    if-lez v6, :cond_d

    if-eqz v1, :cond_d

    .line 424
    iget-object v1, p0, Lathena/k;->k:Ljava/util/ArrayList;

    if-nez v1, :cond_8

    .line 425
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lathena/k;->k:Ljava/util/ArrayList;

    .line 427
    :cond_8
    iget-object v1, p0, Lathena/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v6, v4

    const-wide/16 v2, 0x0

    if-lt v1, v6, :cond_9

    .line 428
    iget-object v0, p0, Lathena/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-direct {p0}, Lathena/k;->f()V

    .line 430
    iput-wide v2, p0, Lathena/k;->l:J

    goto :goto_3

    .line 432
    :cond_9
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v4

    .line 433
    invoke-virtual {v0, v4, v5}, Lcom/transsion/athena/config/data/model/TidConfigBean;->allowTrack(J)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 434
    invoke-virtual {v0, v4, v5}, Lcom/transsion/athena/config/data/model/TidConfigBean;->setLastTTime(J)V

    .line 435
    iget-object v0, p0, Lathena/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    iget-wide v0, p0, Lathena/k;->l:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_a

    .line 437
    iput-wide v4, p0, Lathena/k;->l:J

    goto :goto_3

    :cond_a
    sub-long/2addr v4, v0

    const-wide/32 v0, 0x927c0

    cmp-long p1, v4, v0

    if-ltz p1, :cond_c

    .line 439
    invoke-direct {p0}, Lathena/k;->f()V

    .line 440
    iput-wide v2, p0, Lathena/k;->l:J

    goto :goto_3

    .line 443
    :cond_b
    sget-object p0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {p0, v7}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :cond_c
    :goto_3
    return-void

    .line 450
    :cond_d
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v8

    cmp-long v1, v8, v2

    if-lez v1, :cond_e

    .line 451
    iget-object v1, p0, Lathena/k;->j:Lathena/a;

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lathena/a;->a(J)I

    move-result v1

    goto :goto_4

    .line 453
    :cond_e
    iget-object v1, p0, Lathena/k;->j:Lathena/a;

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lathena/a;->a(ILjava/lang/String;)I

    move-result v1

    :goto_4
    if-nez v1, :cond_18

    if-eqz v0, :cond_10

    .line 457
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/athena/config/data/model/TidConfigBean;->allowTrack(J)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_5

    .line 462
    :cond_f
    sget-object v1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {v1, v7}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    move v1, v5

    goto :goto_6

    .line 463
    :cond_10
    :goto_5
    iget-object v1, p0, Lathena/k;->o:Lathena/w;

    invoke-virtual {v1, p1}, Lathena/w;->a(Lcom/transsion/athena/data/Track;)V

    .line 464
    iget-object v1, p0, Lathena/k;->i:Lathena/n;

    invoke-virtual {v1, p1}, Lathena/n;->a(Lcom/transsion/athena/data/Track;)I

    move-result v1

    .line 465
    sget-object v2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveToDB tidCount = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :goto_6
    const/4 v2, -0x1

    const-string v3, "##TID_ath_str$%d$track$%d"

    const/4 v6, 0x2

    if-ne v1, v2, :cond_11

    .line 471
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->getTestToolAPI()Lathena/u;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 472
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->getTestToolAPI()Lathena/u;

    move-result-object v2

    const/16 v7, 0x6a

    invoke-interface {v2, p1, v7}, Lathena/u;->a(Lcom/transsion/athena/data/Track;I)V

    goto :goto_7

    :cond_11
    const/4 v2, -0x2

    if-ne v1, v2, :cond_12

    .line 475
    sget-object v2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v7, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 476
    iget-object v2, p0, Lathena/k;->i:Lathena/n;

    new-instance v7, Lathena/k$m;

    invoke-direct {v7, p0}, Lathena/k$m;-><init>(Lathena/k;)V

    const/16 v8, 0x3e8

    invoke-virtual {v2, v8, v7}, Lathena/n;->a(ILcom/transsion/athena/data/b;)I

    move-result v2

    .line 484
    sget-object v7, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveToDB out of memory cleanCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 487
    :cond_12
    :goto_7
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v2

    const-string v7, "ev_athena"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    return-void

    :cond_13
    if-lez v1, :cond_17

    .line 491
    invoke-static {}, Lathena/k0;->c()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 492
    sget-object v2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v4

    invoke-static {v7, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :cond_14
    if-eqz v0, :cond_15

    .line 495
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/transsion/athena/config/data/model/TidConfigBean;->setLastTTime(J)V

    .line 496
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/athena/config/data/model/g;->a(I)V

    .line 498
    :cond_15
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->getTestToolAPI()Lathena/u;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 499
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->getTestToolAPI()Lathena/u;

    move-result-object v0

    invoke-interface {v0, p1}, Lathena/u;->a(Lcom/transsion/athena/data/Track;)V

    .line 502
    :cond_16
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 503
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v0

    invoke-static {v0, v1}, Lathena/k0;->a(J)I

    move-result p1

    const/16 v0, 0x270f

    if-ne v0, p1, :cond_17

    .line 504
    iget-object p1, p0, Lathena/k;->j:Lathena/a;

    invoke-virtual {p1}, Lathena/a;->i()V

    .line 507
    :cond_17
    iget p1, p0, Lathena/k;->e:I

    int-to-long v0, p1

    invoke-direct {p0, v5, v0, v1}, Lathena/k;->a(ZJ)V

    goto :goto_8

    .line 509
    :cond_18
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->getTestToolAPI()Lathena/u;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 510
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->getTestToolAPI()Lathena/u;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Lathena/u;->a(Lcom/transsion/athena/data/Track;I)V

    :cond_19
    :goto_8
    return-void
.end method

.method private a(Ljava/lang/String;ILcom/transsion/athena/config/data/model/a;Ljava/lang/String;)V
    .locals 1

    .line 511
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 512
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->p()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 514
    :cond_0
    invoke-static {p1}, Lcom/transsion/athena/config/data/model/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 516
    :goto_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "app_id"

    .line 517
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "url"

    .line 518
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual {p3}, Lcom/transsion/athena/config/data/model/a;->h()J

    move-result-wide p2

    const-string p0, "ver"

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "gslb_data"

    .line 520
    invoke-virtual {p1, p0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    new-instance p0, Lcom/transsion/athenacust/AthenaCust;

    const/16 p2, 0x270f

    const-string p3, "app_cfg_log"

    invoke-direct {p0, p3, p2}, Lcom/transsion/athenacust/AthenaCust;-><init>(Ljava/lang/String;I)V

    const/4 p2, 0x0

    .line 522
    invoke-virtual {p0, p1, p2}, Lcom/transsion/athenacust/AthenaCust;->trackCommon(Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/transsion/athenacust/AthenaCust;

    move-result-object p0

    .line 523
    invoke-virtual {p0}, Lcom/transsion/athenacust/AthenaCust;->submit()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 619
    new-instance p0, Lcom/transsion/ga/d;

    invoke-direct {p0, p1, p2}, Lcom/transsion/ga/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 620
    invoke-static {}, Lcom/transsion/ga/c;->a()Lcom/transsion/ga/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/ga/c;->a(Lcom/transsion/ga/d;)V

    return-void
.end method

.method private a(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;I)V"
        }
    .end annotation

    .line 193
    :try_start_0
    iget-object v0, p0, Lathena/k;->i:Lathena/n;

    invoke-virtual {v0, p1, p2}, Lathena/n;->a(Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 195
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    :goto_0
    iget-wide p1, p0, Lathena/k;->n:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 198
    iget-object p1, p0, Lathena/k;->j:Lathena/a;

    invoke-virtual {p1}, Lathena/a;->d()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    iput-wide p1, p0, Lathena/k;->n:J

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x2

    mul-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    add-long/2addr p1, v0

    const-wide/32 v0, 0x927c0

    .line 200
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lathena/k;->n:J

    .line 202
    :goto_1
    iget-object p1, p0, Lathena/k;->f:Landroid/os/Handler;

    const/16 p2, 0x12a

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1

    sget-boolean p1, Lathena/k0;->d:Z

    if-eqz p1, :cond_1

    .line 203
    iget-object p1, p0, Lathena/k;->f:Landroid/os/Handler;

    const/16 p2, 0x131

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    iget-object p1, p0, Lathena/k;->f:Landroid/os/Handler;

    iget-wide v0, p0, Lathena/k;->n:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    const/4 p1, 0x0

    .line 206
    iput-boolean p1, p0, Lathena/k;->m:Z

    return-void
.end method

.method private a(Ljava/util/List;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "-"

    .line 207
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/athena/data/AppIdData;

    .line 208
    iget-object v2, v2, Lcom/transsion/athena/data/AppIdData;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/athena/data/f;

    .line 209
    iget-boolean v5, v4, Lcom/transsion/athena/data/f;->g:Z

    if-eqz v5, :cond_1

    .line 210
    iget-object v5, p0, Lathena/k;->j:Lathena/a;

    iget-wide v6, v4, Lcom/transsion/athena/data/f;->a:J

    invoke-virtual {v5, v6, v7}, Lathena/a;->c(J)Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 212
    invoke-virtual {v4}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/g;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Lcom/transsion/athena/config/data/model/g;->c(J)V

    .line 213
    invoke-virtual {v4}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/g;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/transsion/athena/config/data/model/g;->a(I)V

    goto :goto_0

    .line 219
    :cond_2
    :try_start_0
    iget-object v1, p0, Lathena/k;->j:Lathena/a;

    invoke-virtual {v1}, Lathena/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 220
    sget-object v2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    .line 339
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    .line 341
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 342
    iget-object v4, p0, Lathena/k;->i:Lathena/n;

    new-instance v9, Lathena/k$l;

    invoke-direct {v9, p0}, Lathena/k$l;-><init>(Lathena/k;)V

    move-object v5, p1

    move-wide v6, p2

    invoke-virtual/range {v4 .. v9}, Lathena/n;->a(Ljava/util/List;JLjava/lang/String;Lcom/transsion/athena/data/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 358
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 360
    :goto_1
    iget-object p1, p0, Lathena/k;->f:Landroid/os/Handler;

    const/16 p2, 0x12a

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 361
    iget-object p1, p0, Lathena/k;->f:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 363
    :cond_3
    iput-boolean v3, p0, Lathena/k;->m:Z

    return-void
.end method

.method private a(Z)V
    .locals 11

    .line 621
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    const/16 v4, 0x1f6

    if-eqz p1, :cond_0

    .line 622
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->n()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-wide v5, p0, Lathena/k;->s:J

    sub-long v5, v0, v5

    .line 623
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    cmp-long p1, v5, v2

    if-gez p1, :cond_3

    .line 624
    :cond_1
    iget-object p1, p0, Lathena/k;->f:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 625
    iget-object p1, p0, Lathena/k;->f:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 626
    iget-object p0, p0, Lathena/k;->f:Landroid/os/Handler;

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void

    .line 630
    :cond_3
    iget-object p1, p0, Lathena/k;->j:Lathena/a;

    const/16 v5, 0x270f

    const-string v6, "location"

    .line 631
    invoke-virtual {p1, v5, v6}, Lathena/a;->a(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_b

    .line 633
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, v5}, Lathena/k0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 634
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v5}, Lathena/k0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 636
    :cond_5
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 637
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    const/4 v5, 0x0

    if-nez p1, :cond_6

    .line 639
    invoke-direct {p0, v5}, Lathena/k;->a(Landroid/location/Location;)V

    return-void

    :cond_6
    const-string v6, "network"

    .line 643
    invoke-virtual {p1, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "gps"

    const-string v9, "passive"

    if-eqz v7, :cond_7

    goto :goto_1

    .line 645
    :cond_7
    invoke-virtual {p1, v9}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v6, v9

    goto :goto_1

    .line 647
    :cond_8
    invoke-virtual {p1, v8}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    move-object v6, v8

    goto :goto_1

    :cond_9
    move-object v6, v5

    :goto_1
    if-eqz v6, :cond_a

    .line 652
    iget-object v7, p0, Lathena/k;->f:Landroid/os/Handler;

    iget-object v8, p0, Lathena/k;->t:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 653
    iget-object v7, p0, Lathena/k;->f:Landroid/os/Handler;

    iget-object v8, p0, Lathena/k;->t:Ljava/lang/Runnable;

    const-wide/16 v9, 0x7530

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 655
    iget-object v7, p0, Lathena/k;->u:Landroid/location/LocationListener;

    invoke-virtual {p1, v6, v7, v5}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 656
    iput-wide v0, p0, Lathena/k;->s:J

    .line 659
    :cond_a
    iget-object p1, p0, Lathena/k;->f:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_b

    .line 660
    iget-object p1, p0, Lathena/k;->f:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 661
    iget-object p0, p0, Lathena/k;->f:Landroid/os/Handler;

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_b
    return-void
.end method

.method private a(ZJ)V
    .locals 3

    .line 13
    iget-object v0, p0, Lathena/k;->f:Landroid/os/Handler;

    const/16 v1, 0x12a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lathena/k;->m:Z

    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Lathena/k;->f:Landroid/os/Handler;

    const/16 v2, 0x131

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    iget-object v0, p0, Lathena/k;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 17
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 18
    iget-object p0, p0, Lathena/k;->f:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 20
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 21
    iget-object p0, p0, Lathena/k;->f:Landroid/os/Handler;

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lathena/k;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lathena/k;->f:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lathena/k;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lathena/k;->t:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic d(Lathena/k;)Lathena/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lathena/k;->j:Lathena/a;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lathena/k0;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "checkConfig network is not available"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Lcom/transsion/athena/config/data/model/f;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/gslb/GslbSdk;->isInitSuccess(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    sget-object p0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "checkConfig new domain is not ready"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_1
    iget-object v0, p0, Lathena/k;->j:Lathena/a;

    if-eqz v0, :cond_2

    .line 13
    iget-object v1, p0, Lathena/k;->h:Lathena/c0;

    iget-object p0, p0, Lathena/k;->r:Lathena/c;

    invoke-virtual {v0, v1, p0}, Lathena/a;->a(Lathena/c0;Lathena/c;)V

    :cond_2
    return-void
.end method

.method static synthetic e(Lathena/k;)Lathena/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lathena/k;->i:Lathena/n;

    return-object p0
.end method

.method private e()V
    .locals 7

    const-string v0, "first_page_enter"

    .line 2
    new-instance v1, Lathena/c0;

    iget-object v2, p0, Lathena/k;->f:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lathena/c0;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lathena/k;->h:Lathena/c0;

    .line 4
    iget-object v1, p0, Lathena/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lathena/w;->a(Landroid/content/Context;)Lathena/w;

    move-result-object v1

    iput-object v1, p0, Lathena/k;->o:Lathena/w;

    .line 5
    invoke-virtual {v1}, Lathena/w;->c()V

    .line 7
    iget-object v1, p0, Lathena/k;->j:Lathena/a;

    if-nez v1, :cond_0

    .line 8
    invoke-static {}, Lathena/b;->a()Lathena/a;

    move-result-object v1

    iput-object v1, p0, Lathena/k;->j:Lathena/a;

    .line 9
    invoke-virtual {v1}, Lathena/a;->f()V

    .line 12
    :cond_0
    iget-object v1, p0, Lathena/k;->i:Lathena/n;

    if-nez v1, :cond_1

    .line 13
    new-instance v1, Lathena/n;

    invoke-direct {v1}, Lathena/n;-><init>()V

    iput-object v1, p0, Lathena/k;->i:Lathena/n;

    .line 15
    new-instance v2, Lathena/k$f;

    invoke-direct {v2, p0}, Lathena/k$f;-><init>(Lathena/k;)V

    invoke-virtual {v1, v2}, Lathena/n;->a(Lcom/transsion/athena/data/b;)V

    .line 28
    :cond_1
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->getConfigListener()Lcom/transsion/ga/AthenaAnalytics$ConfigListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 29
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->getConfigListener()Lcom/transsion/ga/AthenaAnalytics$ConfigListener;

    move-result-object v1

    iget-object v2, p0, Lathena/k;->j:Lathena/a;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lathena/a;->c(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/ga/AthenaAnalytics$ConfigListener;->onSyncSuccess(Ljava/util/List;)V

    .line 32
    :cond_2
    invoke-static {}, Lcom/transsion/athena/data/c;->b()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 34
    iget-object v3, p0, Lathena/k;->j:Lathena/a;

    const-string v4, "page_view"

    .line 35
    invoke-virtual {v3, v1, v4}, Lathena/a;->a(ILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 36
    :goto_0
    invoke-static {v3}, Lcom/transsion/athena/config/data/model/f;->e(Z)V

    .line 38
    iget-object v3, p0, Lathena/k;->j:Lathena/a;

    const-string v4, "athena_anr_full"

    .line 39
    invoke-virtual {v3, v1, v4}, Lathena/a;->a(ILjava/lang/String;)I

    .line 45
    :cond_4
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "dsu.shalltry.com"

    const-string v4, "dsc.shalltry.com"

    const-string v5, "dsu-test.shalltry.com"

    const-string v6, "dsc-test.shalltry.com"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lathena/k$g;

    invoke-direct {v4, p0}, Lathena/k$g;-><init>(Lathena/k;)V

    invoke-static {v1, v3, v4}, Lcom/transsion/gslb/GslbSdk;->init(Landroid/content/Context;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$InitListener;)V

    .line 58
    invoke-direct {p0}, Lathena/k;->g()V

    .line 64
    :try_start_0
    iget-object v1, p0, Lathena/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lathena/n0;->a(Landroid/content/Context;)Lathena/n0;

    move-result-object v1

    .line 65
    invoke-virtual {v1, v0}, Lathena/n0;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 66
    invoke-virtual {v1, v0}, Lathena/n0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lathena/k;->p:Ljava/lang/String;

    .line 69
    :cond_5
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/transsion/athena/config/data/model/f;->k:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/transsion/athena/config/data/model/f;->l:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->isDCSMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 73
    iput-boolean v2, p0, Lathena/k;->d:Z

    goto :goto_2

    .line 74
    :cond_6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 75
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_7

    goto :goto_1

    .line 78
    :cond_7
    iput-boolean v2, p0, Lathena/k;->d:Z

    goto :goto_2

    .line 79
    :cond_8
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 84
    :cond_9
    :goto_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 85
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lathena/y;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 88
    sget-object v1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    const-string v1, "handleInit"

    .line 89
    invoke-direct {p0, v1, v0}, Lathena/k;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    :cond_a
    :goto_3
    iget-object v0, p0, Lathena/k;->f:Landroid/os/Handler;

    const/16 v1, 0x1f6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 93
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 94
    iget-object v1, p0, Lathena/k;->f:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 97
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lathena/k$h;

    invoke-direct {v1, p0}, Lathena/k$h;-><init>(Lathena/k;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method private f()V
    .locals 6

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lathena/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/athena/data/Track;

    .line 4
    iget-object v3, p0, Lathena/k;->j:Lathena/a;

    invoke-virtual {v2}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lathena/a;->a(J)I

    move-result v3

    if-nez v3, :cond_0

    .line 5
    iget-object v3, p0, Lathena/k;->o:Lathena/w;

    invoke-virtual {v3, v2}, Lathena/w;->a(Lcom/transsion/athena/data/Track;)V

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 10
    iget-object v1, p0, Lathena/k;->i:Lathena/n;

    new-instance v2, Lathena/k$a;

    invoke-direct {v2, p0}, Lathena/k$a;-><init>(Lathena/k;)V

    invoke-virtual {v1, v0, v2}, Lathena/n;->a(Ljava/util/ArrayList;Lcom/transsion/athena/data/b;)I

    move-result v0

    .line 29
    sget-object v1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveMemCacheToDb tidCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 31
    iget-object v0, p0, Lathena/k;->i:Lathena/n;

    new-instance v1, Lathena/k$b;

    invoke-direct {v1, p0}, Lathena/k$b;-><init>(Lathena/k;)V

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Lathena/n;->a(ILcom/transsion/athena/data/b;)I

    move-result v0

    .line 39
    sget-object v1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveToDB out of memory cleanCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 41
    :cond_2
    iget v0, p0, Lathena/k;->e:I

    int-to-long v0, v0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lathena/k;->a(ZJ)V

    :cond_3
    return-void
.end method

.method static synthetic f(Lathena/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lathena/k;->g()V

    return-void
.end method

.method static synthetic g(Lathena/k;)Lathena/c0;
    .locals 0

    .line 1
    iget-object p0, p0, Lathena/k;->h:Lathena/c0;

    return-object p0
.end method

.method private g()V
    .locals 8

    .line 2
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lathena/n0;->a(Landroid/content/Context;)Lathena/n0;

    move-result-object v1

    const-string v2, "athena_id"

    .line 4
    invoke-virtual {v1, v2}, Lathena/n0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    :try_start_0
    invoke-static {v0}, Lathena/j0;->a(Landroid/content/Context;)Lathena/j0$b;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Lathena/j0$b;->a()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 10
    sget-object v5, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    const/4 v4, 0x0

    .line 12
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_5

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 13
    invoke-virtual {v1, v2, v4}, Lathena/n0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 15
    sget-object v1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    :try_start_1
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 675
    invoke-static {v0, v1}, Lathena/k0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 676
    invoke-static {v0, v1}, Lathena/k0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v6

    goto :goto_3

    .line 677
    :cond_1
    :goto_1
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->isDCSMode()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 680
    :cond_2
    invoke-static {v0}, Lathena/k0;->d(Landroid/content/Context;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    xor-int/2addr v0, v7

    goto :goto_3

    :catch_1
    :goto_2
    move v0, v7

    :goto_3
    if-eqz v0, :cond_4

    .line 681
    invoke-static {}, Lcom/transsion/ga/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "device_id_transfer"

    const/16 v2, 0x270f

    if-eqz v0, :cond_3

    .line 682
    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const/4 v3, 0x2

    const-string v5, "en"

    .line 683
    invoke-virtual {v0, v5, v1, v3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    move-result-object v0

    const-string v1, "cnt"

    .line 684
    invoke-virtual {v0, v1, v7, v7}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;II)Lcom/transsion/athena/data/TrackData;

    move-result-object v0

    .line 685
    invoke-static {v2}, Lcom/transsion/ga/AthenaAnalytics;->getInstance(I)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object v1

    const-string v3, "data_discard"

    .line 686
    invoke-virtual {v1, v3, v0, v2}, Lcom/transsion/ga/AthenaAnalytics;->track(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;I)V

    goto :goto_4

    .line 688
    :cond_3
    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v5, "pre_gaid"

    .line 689
    invoke-virtual {v0, v5, v3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    move-result-object v0

    .line 690
    invoke-static {}, Lcom/transsion/ga/e;->f()Ljava/lang/String;

    move-result-object v3

    const-string v5, "sn"

    invoke-virtual {v0, v5, v3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    move-result-object v0

    .line 691
    invoke-static {v2}, Lcom/transsion/ga/AthenaAnalytics;->getInstance(I)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object v3

    .line 692
    invoke-virtual {v3, v1, v0, v2}, Lcom/transsion/ga/AthenaAnalytics;->track(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;I)V

    :cond_4
    :goto_4
    move-object v3, v4

    .line 697
    :cond_5
    invoke-static {v3}, Lathena/k0;->b(Ljava/lang/String;)V

    .line 698
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v6}, Lcom/transsion/ga/e;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    move v6, v7

    :cond_7
    if-nez v6, :cond_8

    .line 700
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "device gaid and iid are null"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 703
    :cond_8
    iget-object v0, p0, Lathena/k;->f:Landroid/os/Handler;

    new-instance v1, Lathena/k$i;

    invoke-direct {v1, p0}, Lathena/k$i;-><init>(Lathena/k;)V

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic h(Lathena/k;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lathena/k;->k:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/os/Message;J)V
    .locals 3

    .line 779
    iget-object v0, p0, Lathena/k;->f:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    .line 781
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 783
    :cond_0
    iget-object p0, p0, Lathena/k;->f:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 0

    .line 777
    iget-object p0, p0, Lathena/k;->f:Landroid/os/Handler;

    if-eqz p0, :cond_0

    .line 778
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    .locals 10

    const-string v0, "_eparam"

    .line 729
    new-instance v1, Lcom/transsion/athena/data/Track;

    invoke-direct {v1}, Lcom/transsion/athena/data/Track;-><init>()V

    .line 730
    invoke-virtual {v1, p1}, Lcom/transsion/athena/data/Track;->setEventName(Ljava/lang/String;)V

    .line 731
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/transsion/athena/data/Track;->setTrackTs(J)V

    .line 732
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/transsion/athena/data/Track;->setTrackErTs(J)V

    .line 734
    invoke-virtual {p2}, Lcom/transsion/athena/data/TrackData;->a()Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x1

    .line 736
    :try_start_0
    sget-object v4, Lcom/transsion/athena/config/data/model/f;->h:Ljava/lang/String;

    .line 743
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 744
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 745
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-le v5, v3, :cond_0

    .line 746
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    .line 748
    :cond_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 751
    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 753
    :goto_0
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 754
    invoke-virtual {v2}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    .line 755
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 756
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 757
    move-object v8, v4

    check-cast v8, Lorg/json/JSONObject;

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 758
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    .line 762
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const-string v0, "net"

    .line 764
    :try_start_1
    iget-object v4, p0, Lathena/i;->a:Landroid/content/Context;

    invoke-static {v4}, Lathena/k0;->a(Landroid/content/Context;)Lathena/k0$a;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "event"

    .line 765
    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 767
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 769
    :goto_2
    invoke-virtual {v1, v2}, Lcom/transsion/athena/data/Track;->setJsonData(Lorg/json/JSONObject;)V

    .line 770
    invoke-virtual {v1, p3, p4}, Lcom/transsion/athena/data/Track;->setTid(J)V

    .line 771
    invoke-virtual {p2}, Lcom/transsion/athena/data/TrackData;->b()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/transsion/athena/data/Track;->setTrackFlag(I)V

    .line 772
    iget p1, p0, Lathena/k;->g:I

    const/16 p2, 0x1388

    if-ge p1, p2, :cond_4

    add-int/2addr p1, v3

    .line 773
    iput p1, p0, Lathena/k;->g:I

    .line 774
    iget-object p1, p0, Lathena/k;->f:Landroid/os/Handler;

    const/16 p2, 0x12e

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 775
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 776
    iget-object p0, p0, Lathena/k;->f:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    return-void
.end method

.method public c()V
    .locals 3

    .line 2
    iget v0, p0, Lathena/k;->e:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lathena/k;->a(ZJ)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9

    const-string v0, ""

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, p0, Lathena/k;->c:Z

    const/4 v2, 0x0

    .line 3
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    const-wide/16 v4, 0x0

    const/16 v6, 0x12a

    const/4 v7, 0x0

    if-eq v3, v6, :cond_f

    const/16 v8, 0x190

    if-eq v3, v8, :cond_c

    const/16 v8, 0x194

    if-eq v3, v8, :cond_b

    const/16 v8, 0x12e

    if-eq v3, v8, :cond_9

    const/16 v8, 0x12f

    if-eq v3, v8, :cond_8

    const/16 v8, 0x1f6

    if-eq v3, v8, :cond_6

    const/16 v8, 0x1f7

    if-eq v3, v8, :cond_4

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    .line 114
    :pswitch_0
    invoke-direct {p0, v7, v7}, Lathena/k;->a(Lcom/transsion/athena/config/data/model/a;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 115
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lathena/g0;

    .line 116
    iget-object v0, p1, Lathena/g0;->a:Ljava/util/List;

    iget v1, p1, Lathena/g0;->d:I

    invoke-direct {p0, v0, v1}, Lathena/k;->a(Ljava/util/List;I)V

    .line 117
    iget-object v0, p1, Lathena/g0;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "v"

    .line 119
    :try_start_1
    iget-object p1, p1, Lathena/g0;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance p1, Lcom/transsion/ga/d;

    const-string v1, "network"

    invoke-direct {p1, v1, v0}, Lcom/transsion/ga/d;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 121
    invoke-static {}, Lcom/transsion/ga/c;->a()Lcom/transsion/ga/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/ga/c;->a(Lcom/transsion/ga/d;)V

    goto/16 :goto_2

    .line 122
    :pswitch_2
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_0

    .line 123
    iput-object v0, p0, Lathena/k;->p:Ljava/lang/String;

    .line 124
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lathena/n0;->a(Landroid/content/Context;)Lathena/n0;

    move-result-object v3

    const-string v4, "first_page_enter"

    .line 125
    invoke-virtual {v3, v4, v0}, Lathena/n0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lathena/g0;

    .line 128
    iget-object v0, p1, Lathena/g0;->a:Ljava/util/List;

    iget-wide v3, p1, Lathena/g0;->b:J

    invoke-direct {p0, v0, v3, v4}, Lathena/k;->a(Ljava/util/List;J)V

    .line 129
    iget-object p1, p1, Lathena/g0;->c:Ljava/util/List;

    if-eqz p1, :cond_11

    .line 130
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lathena/g0$a;

    .line 131
    iget-object v3, p0, Lathena/k;->j:Lathena/a;

    iget v4, v0, Lathena/g0$a;->a:I

    invoke-virtual {v3, v4}, Lathena/a;->b(I)Lcom/transsion/athena/config/data/model/a;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 132
    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lathena/g0$a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 133
    iget v4, v0, Lathena/g0$a;->b:I

    if-ne v4, v1, :cond_2

    .line 134
    invoke-virtual {v0}, Lathena/g0$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lathena/k;->a(Lcom/transsion/athena/config/data/model/a;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 136
    invoke-virtual {v0}, Lathena/g0$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v1}, Lathena/k;->a(Lcom/transsion/athena/config/data/model/a;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 138
    invoke-virtual {v0}, Lathena/g0$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v2}, Lathena/k;->a(Lcom/transsion/athena/config/data/model/a;Ljava/lang/String;Z)V

    goto :goto_0

    .line 90
    :cond_4
    iget-object v0, p0, Lathena/k;->o:Lathena/w;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lathena/w;->a(J)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 91
    iget-object p1, p0, Lathena/k;->o:Lathena/w;

    invoke-virtual {p1}, Lathena/w;->a()Ljava/lang/String;

    move-result-object p1

    .line 92
    iget-object v0, p0, Lathena/k;->o:Lathena/w;

    invoke-virtual {v0}, Lathena/w;->b()J

    move-result-wide v0

    cmp-long v3, v0, v4

    if-lez v3, :cond_5

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 95
    iget-object v3, p0, Lathena/k;->i:Lathena/n;

    invoke-virtual {v3, p1, v0, v1}, Lathena/n;->a(Ljava/lang/String;J)V

    .line 98
    :cond_5
    iget p1, p0, Lathena/k;->e:I

    int-to-long v0, p1

    invoke-direct {p0, v2, v0, v1}, Lathena/k;->a(ZJ)V

    goto/16 :goto_2

    .line 99
    :cond_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_7

    goto :goto_1

    :cond_7
    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lathena/k;->a(Z)V

    goto/16 :goto_2

    .line 165
    :cond_8
    iget-object p1, p0, Lathena/i;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/core/CoreUtil;->init(Landroid/content/Context;)V

    .line 166
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->r()Z

    move-result p1

    invoke-static {p1}, Lcom/transsion/core/CoreUtil;->setDebug(Z)V

    .line 168
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {p1}, Lcom/transsion/core/log/ObjectLogUtils;->getBuilder()Lcom/transsion/core/log/ObjectLogUtils$Builder;

    move-result-object p1

    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->r()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->setLogSwitch(Z)Lcom/transsion/core/log/ObjectLogUtils$Builder;

    .line 169
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "Athena SDK Version is 2.3.3.9"

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 170
    invoke-direct {p0}, Lathena/k;->e()V

    .line 171
    invoke-direct {p0}, Lathena/k;->d()V

    goto/16 :goto_2

    .line 172
    :cond_9
    iget v0, p0, Lathena/k;->g:I

    sub-int/2addr v0, v1

    iput v0, p0, Lathena/k;->g:I

    .line 173
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/athena/data/Track;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "ev_athena"

    .line 174
    :try_start_2
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 175
    invoke-direct {p0}, Lathena/k;->d()V

    .line 177
    :cond_a
    invoke-direct {p0, p1}, Lathena/k;->a(Lcom/transsion/athena/data/Track;)V

    goto/16 :goto_2

    .line 100
    :cond_b
    iget-object v0, p0, Lathena/k;->j:Lathena/a;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lathena/a;->c(J)Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 102
    iget-object v0, p0, Lathena/k;->i:Lathena/n;

    invoke-virtual {v0, p1}, Lathena/n;->a(Lcom/transsion/athena/config/data/model/TidConfigBean;)V

    goto :goto_2

    .line 103
    :cond_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lathena/k;->j:Lathena/a;

    if-eqz v1, :cond_d

    .line 105
    invoke-virtual {v1, v0}, Lathena/a;->a(I)V

    .line 107
    :cond_d
    iget-object v1, p0, Lathena/k;->i:Lathena/n;

    if-eqz v1, :cond_11

    if-nez p1, :cond_e

    .line 109
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/transsion/athena/data/AppIdData;->a(Landroid/content/Context;I)Lcom/transsion/athena/data/AppIdData;

    move-result-object p1

    invoke-virtual {v1, p1}, Lathena/n;->a(Lcom/transsion/athena/data/AppIdData;)V

    goto :goto_2

    .line 110
    :cond_e
    new-instance v3, Lcom/transsion/athena/data/AppIdData;

    invoke-direct {v3}, Lcom/transsion/athena/data/AppIdData;-><init>()V

    .line 111
    iput v0, v3, Lcom/transsion/athena/data/AppIdData;->a:I

    .line 112
    iput-object p1, v3, Lcom/transsion/athena/data/AppIdData;->b:Ljava/lang/String;

    .line 113
    invoke-virtual {v1, v3}, Lathena/n;->a(Lcom/transsion/athena/data/AppIdData;)V

    goto :goto_2

    :cond_f
    :pswitch_3
    if-ne v3, v6, :cond_10

    .line 178
    iput-wide v4, p0, Lathena/k;->n:J

    .line 180
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 181
    iget-object v0, p0, Lathena/k;->o:Lathena/w;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v0, v3, v4, v5, v6}, Lathena/w;->a(JJ)J

    move-result-wide v5

    .line 182
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-direct {p0, v3, v4, v2, v7}, Lathena/k;->a(JILjava/util/List;)V

    .line 183
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_11

    .line 184
    invoke-direct {p0}, Lathena/k;->d()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 276
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    const-string v0, "handleMessage"

    .line 277
    invoke-direct {p0, v0, p1}, Lathena/k;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    :cond_11
    :goto_2
    iput-boolean v2, p0, Lathena/k;->c:Z

    return v2

    :pswitch_data_0
    .packed-switch 0x131
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

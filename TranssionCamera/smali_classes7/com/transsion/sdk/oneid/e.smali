.class public Lcom/transsion/sdk/oneid/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static volatile a:Lcom/transsion/sdk/oneid/e;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Landroid/os/HandlerThread;

.field private d:Lcom/transsion/sdk/oneid/data/GroupFpInfo;

.field private e:Lcom/transsion/sdk/oneid/data/GroupHashInfo;

.field private f:J

.field private g:J

.field private h:Lcom/transsion/sdk/oneid/b;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/sdk/oneid/data/IdChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/locks/ReentrantLock;

.field private final k:Landroid/content/Context;

.field private l:Lcom/transsion/sdk/oneid/data/OdIdInfo;

.field private m:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/transsion/sdk/oneid/data/AppIdInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/transsion/sdk/oneid/e;->c:Landroid/os/HandlerThread;

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/transsion/sdk/oneid/e;->f:J

    .line 6
    iput-wide v0, p0, Lcom/transsion/sdk/oneid/e;->g:J

    .line 9
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/transsion/sdk/oneid/e;->j:Ljava/util/concurrent/locks/ReentrantLock;

    .line 27
    iput-object p1, p0, Lcom/transsion/sdk/oneid/e;->k:Landroid/content/Context;

    .line 28
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/sdk/oneid/e;->i:Ljava/util/List;

    .line 29
    invoke-direct {p0}, Lcom/transsion/sdk/oneid/e;->c()V

    .line 30
    invoke-direct {p0}, Lcom/transsion/sdk/oneid/e;->d()V

    .line 31
    iget-object p0, p0, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 p1, 0xc8

    .line 32
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/transsion/sdk/oneid/e;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/sdk/oneid/e;->a:Lcom/transsion/sdk/oneid/e;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/transsion/sdk/oneid/e;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/transsion/sdk/oneid/e;->a:Lcom/transsion/sdk/oneid/e;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/transsion/sdk/oneid/e;

    invoke-direct {v1, p0}, Lcom/transsion/sdk/oneid/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transsion/sdk/oneid/e;->a:Lcom/transsion/sdk/oneid/e;

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
    sget-object p0, Lcom/transsion/sdk/oneid/e;->a:Lcom/transsion/sdk/oneid/e;

    return-object p0
.end method

.method private a(ILcom/transsion/sdk/oneid/data/AppIdInfo;)V
    .locals 4

    .line 69
    sget-object v0, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "onOdidRequestRetry"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 70
    iget v0, p2, Lcom/transsion/sdk/oneid/data/AppIdInfo;->retryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/transsion/sdk/oneid/data/AppIdInfo;->retryTimes:I

    .line 71
    iget-wide v0, p2, Lcom/transsion/sdk/oneid/data/AppIdInfo;->retryRequestDelay:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0xbb8

    .line 72
    iput-wide v0, p2, Lcom/transsion/sdk/oneid/data/AppIdInfo;->retryRequestDelay:J

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    .line 74
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/transsion/sdk/oneid/data/AppIdInfo;->retryRequestDelay:J

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    const/16 v1, 0x12f

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 77
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 78
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 79
    iget-object p0, p0, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    iget-wide p1, p2, Lcom/transsion/sdk/oneid/data/AppIdInfo;->retryRequestDelay:J

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 4

    .line 19
    iget-wide v0, p0, Lcom/transsion/sdk/oneid/e;->f:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0xbb8

    .line 20
    iput-wide v0, p0, Lcom/transsion/sdk/oneid/e;->f:J

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    .line 22
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/sdk/oneid/e;->f:J

    .line 24
    :goto_0
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/transsion/sdk/oneid/e;->f:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .line 9
    sget-object v0, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "onFpPostComplete"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/sdk/oneid/e;->g:J

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->k:Landroid/content/Context;

    invoke-static {v0}, Loneid/b;->a(Landroid/content/Context;)Loneid/b;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "last_post_time"

    .line 13
    :try_start_1
    iget-wide v2, p0, Lcom/transsion/sdk/oneid/e;->g:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Loneid/b;->a(Ljava/lang/String;I)V

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "fp_hash"

    .line 15
    invoke-virtual {v0, p0, p1}, Loneid/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 18
    sget-object p1, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;ILcom/transsion/sdk/oneid/data/AppIdInfo;)V
    .locals 8

    const-string v0, ""

    .line 38
    sget-object v1, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOdidRequestComplete appId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 40
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    const/4 v2, 0x0

    .line 41
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    const-string p1, "msg"

    .line 42
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "time"

    const-wide/16 v4, 0x0

    .line 44
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v3, "odid"

    .line 45
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    iput-object v0, p3, Lcom/transsion/sdk/oneid/data/AppIdInfo;->odid:Ljava/lang/String;

    .line 48
    iput v2, p3, Lcom/transsion/sdk/oneid/data/AppIdInfo;->retryTimes:I

    .line 49
    iput-wide v4, p3, Lcom/transsion/sdk/oneid/data/AppIdInfo;->retryRequestDelay:J

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p3, Lcom/transsion/sdk/oneid/data/AppIdInfo;->lastRequestTime:J

    const-wide/16 v0, 0x3e8

    mul-long/2addr v6, v0

    .line 51
    iput-wide v6, p3, Lcom/transsion/sdk/oneid/data/AppIdInfo;->waitTime:J

    .line 52
    iput-object p1, p3, Lcom/transsion/sdk/oneid/data/AppIdInfo;->msg:Ljava/lang/String;

    .line 54
    iget-object p1, p0, Lcom/transsion/sdk/oneid/e;->k:Landroid/content/Context;

    invoke-static {p1}, Loneid/b;->a(Landroid/content/Context;)Loneid/b;

    move-result-object p1

    .line 56
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/transsion/sdk/oneid/e;->m:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/transsion/sdk/oneid/e$b;

    invoke-direct {v2, p0}, Lcom/transsion/sdk/oneid/e$b;-><init>(Lcom/transsion/sdk/oneid/e;)V

    .line 57
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appIdInfoListJson : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    const-string v1, "appid_info_list"

    .line 61
    invoke-virtual {p1, v1, v0}, Loneid/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    const/16 v0, 0x12f

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 64
    iput-object p3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 66
    iget-object p0, p0, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    invoke-virtual {p0, p1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 68
    sget-object p1, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->j:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/sdk/oneid/e;->c:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xc9

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OneID Worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/sdk/oneid/e;->c:Landroid/os/HandlerThread;

    const/16 v1, 0xa

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 13
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 14
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/sdk/oneid/e;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/transsion/sdk/oneid/e;->j:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 24
    :try_start_1
    sget-object v1, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    iget-object p0, p0, Lcom/transsion/sdk/oneid/e;->j:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    :goto_2
    iget-object p0, p0, Lcom/transsion/sdk/oneid/e;->j:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 27
    throw v0

    :cond_3
    :goto_3
    return-void
.end method

.method private d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->k:Landroid/content/Context;

    invoke-static {v0}, Loneid/b;->a(Landroid/content/Context;)Loneid/b;

    move-result-object v0

    const-string v1, "appid_info_list"

    invoke-virtual {v0, v1}, Loneid/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appidStr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 5
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/transsion/sdk/oneid/e$a;

    invoke-direct {v2, p0}, Lcom/transsion/sdk/oneid/e$a;-><init>(Lcom/transsion/sdk/oneid/e;)V

    .line 6
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/transsion/sdk/oneid/e;->m:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    sget-object v1, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 13
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->m:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/sdk/oneid/e;->m:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/sdk/oneid/data/IdChangeInfo;)V
    .locals 5

    .line 25
    sget-object v0, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFpIdChanged type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/transsion/sdk/oneid/data/IdChangeInfo;->id_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->i:Ljava/util/List;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/sdk/oneid/data/IdChangeInfo;

    .line 29
    iget-object v3, v2, Lcom/transsion/sdk/oneid/data/IdChangeInfo;->id_type:Ljava/lang/String;

    iget-object v4, p1, Lcom/transsion/sdk/oneid/data/IdChangeInfo;->id_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    :cond_1
    if-eqz v1, :cond_2

    .line 35
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 37
    :cond_2
    iget-object p0, p0, Lcom/transsion/sdk/oneid/e;->i:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/transsion/sdk/oneid/e;->d:Lcom/transsion/sdk/oneid/data/GroupFpInfo;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->vaid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public b(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->m:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/transsion/sdk/oneid/data/AppIdInfo;

    invoke-direct {v0}, Lcom/transsion/sdk/oneid/data/AppIdInfo;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/transsion/sdk/oneid/e;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    const/16 v2, 0x12f

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 6
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 8
    iget-object p0, p0, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public e()V
    .locals 5

    .line 1
    sget-object v0, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "retry"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    sget-boolean v2, Lcom/transsion/sdk/oneid/OneID;->a:Z

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/transsion/sdk/oneid/e;->g:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->j:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->c:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/transsion/sdk/oneid/e;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->j:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/transsion/sdk/oneid/e;->j:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 12
    throw v0

    .line 14
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 16
    iget-object p0, p0, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 19
    :cond_3
    sget-object p0, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    sget-boolean v0, Lcom/transsion/sdk/oneid/OneID;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "Post time not yet reached"

    goto :goto_1

    :cond_4
    const-string v0, "OneID disable"

    :goto_1
    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "oneid"

    const/4 v3, 0x0

    .line 1
    :try_start_0
    iget v4, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    const/16 v5, 0x64

    const-wide/16 v6, 0x3e8

    if-eq v4, v5, :cond_25

    const/16 v2, 0xc8

    const/16 v5, 0x12f

    const/16 v9, 0xc9

    if-eq v4, v2, :cond_18

    if-eq v4, v9, :cond_16

    const-string v2, "code"

    const-string v13, "OneID disable or network unavailable"

    const/16 v14, 0x12e

    const/4 v15, 0x4

    const-string v8, " data = "

    const-string v10, "code = "

    const/16 v11, 0x12d

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    move v1, v3

    goto/16 :goto_f

    .line 232
    :pswitch_0
    :try_start_1
    sget-object v2, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v4, "-->WHAT_REQUEST_ODID"

    invoke-virtual {v2, v4}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 233
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 234
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/sdk/oneid/data/AppIdInfo;

    .line 235
    iget-object v4, v1, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 237
    sget-boolean v4, Lcom/transsion/sdk/oneid/OneID;->a:Z

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/transsion/sdk/oneid/e;->k:Landroid/content/Context;

    invoke-static {v4}, Lcom/transsion/sdk/oneid/d;->h(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 243
    :cond_1
    iget-object v4, v1, Lcom/transsion/sdk/oneid/e;->l:Lcom/transsion/sdk/oneid/data/OdIdInfo;

    if-eqz v4, :cond_0

    .line 244
    iput v2, v4, Lcom/transsion/sdk/oneid/data/OdIdInfo;->appid:I

    .line 245
    sget-object v4, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--> mOdidInfo set appID :"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/transsion/sdk/oneid/e;->l:Lcom/transsion/sdk/oneid/data/OdIdInfo;

    invoke-virtual {v11}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 246
    new-instance v4, Loneid/k;

    iget-object v9, v1, Lcom/transsion/sdk/oneid/e;->l:Lcom/transsion/sdk/oneid/data/OdIdInfo;

    invoke-direct {v4, v9}, Loneid/k;-><init>(Lcom/transsion/sdk/oneid/data/OdIdInfo;)V

    invoke-virtual {v4}, Loneid/k;->a()Loneid/j;

    move-result-object v4

    .line 247
    sget-object v9, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v4, Loneid/j;->a:I

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Loneid/j;->b:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 248
    iget v8, v4, Loneid/j;->a:I

    if-nez v8, :cond_2

    .line 249
    iget-object v4, v4, Loneid/j;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v1, v4, v2, v0}, Lcom/transsion/sdk/oneid/e;->a(Ljava/lang/String;ILcom/transsion/sdk/oneid/data/AppIdInfo;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    if-ne v8, v4, :cond_3

    .line 250
    sget-object v4, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v8, "onOdidRequestGatewayError"

    invoke-virtual {v4, v8}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 251
    iget-object v4, v1, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 252
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 253
    iput v2, v4, Landroid/os/Message;->arg1:I

    .line 254
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_3
    if-eq v8, v15, :cond_0

    .line 255
    invoke-direct {v1, v2, v0}, Lcom/transsion/sdk/oneid/e;->a(ILcom/transsion/sdk/oneid/data/AppIdInfo;)V

    goto/16 :goto_0

    .line 256
    :cond_4
    :goto_1
    sget-object v0, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {v0, v13}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 257
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v3

    .line 258
    :pswitch_1
    sget-object v4, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v5, "-->WHAT_POST_ID_CHANGE"

    invoke-virtual {v4, v5}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 259
    iget-object v4, v1, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    invoke-virtual {v4, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 262
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 263
    iget-object v5, v1, Lcom/transsion/sdk/oneid/e;->i:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/sdk/oneid/data/IdChangeInfo;

    .line 264
    iget-object v7, v6, Lcom/transsion/sdk/oneid/data/IdChangeInfo;->pre_id:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 265
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 268
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    if-lez v5, :cond_8

    .line 270
    :try_start_2
    new-instance v5, Loneid/i;

    invoke-direct {v5, v4}, Loneid/i;-><init>(Ljava/util/ArrayList;)V

    .line 271
    invoke-virtual {v5}, Loneid/i;->a()Loneid/j;

    move-result-object v4

    .line 272
    sget-object v5, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Loneid/j;->a:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Loneid/j;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 273
    iget v5, v4, Loneid/j;->a:I

    if-nez v5, :cond_7

    const-wide/16 v6, 0x0

    .line 274
    iput-wide v6, v1, Lcom/transsion/sdk/oneid/e;->f:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 276
    :try_start_3
    new-instance v5, Lorg/json/JSONObject;

    iget-object v4, v4, Loneid/j;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 278
    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->k:Landroid/content/Context;

    iget-object v4, v1, Lcom/transsion/sdk/oneid/e;->i:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/transsion/sdk/oneid/d;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 279
    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 280
    invoke-direct {v1, v0}, Lcom/transsion/sdk/oneid/e;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 283
    :try_start_4
    sget-object v1, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    if-eq v5, v15, :cond_0

    .line 286
    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    invoke-static {v2, v14, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/transsion/sdk/oneid/e;->a(Landroid/os/Message;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 289
    :try_start_5
    sget-object v1, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 292
    :cond_8
    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 293
    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->k:Landroid/content/Context;

    iget-object v4, v1, Lcom/transsion/sdk/oneid/e;->i:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/transsion/sdk/oneid/d;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 294
    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 296
    :cond_9
    invoke-direct {v1, v0}, Lcom/transsion/sdk/oneid/e;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 297
    :pswitch_2
    sget-object v4, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v5, "-->WHAT_POST_FP_DATA"

    invoke-virtual {v4, v5}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 298
    iget-object v4, v1, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    invoke-virtual {v4, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 300
    sget-boolean v4, Lcom/transsion/sdk/oneid/OneID;->a:Z

    if-eqz v4, :cond_d

    iget-object v4, v1, Lcom/transsion/sdk/oneid/e;->k:Landroid/content/Context;

    invoke-static {v4}, Lcom/transsion/sdk/oneid/d;->h(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_a

    goto/16 :goto_3

    .line 306
    :cond_a
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 307
    new-instance v4, Loneid/g;

    iget-object v5, v1, Lcom/transsion/sdk/oneid/e;->d:Lcom/transsion/sdk/oneid/data/GroupFpInfo;

    invoke-direct {v4, v5}, Loneid/g;-><init>(Lcom/transsion/sdk/oneid/data/GroupFpInfo;)V

    invoke-virtual {v4}, Loneid/g;->a()Loneid/j;

    move-result-object v4

    .line 308
    sget-object v5, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Loneid/j;->a:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Loneid/j;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 309
    iget v5, v4, Loneid/j;->a:I

    if-nez v5, :cond_c

    const-wide/16 v6, 0x0

    .line 310
    iput-wide v6, v1, Lcom/transsion/sdk/oneid/e;->f:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 312
    :try_start_6
    new-instance v5, Lorg/json/JSONObject;

    iget-object v4, v4, Loneid/j;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 314
    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 315
    invoke-direct {v1, v0}, Lcom/transsion/sdk/oneid/e;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 317
    :cond_b
    iget-object v1, v1, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    invoke-static {v1, v14, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    .line 321
    :try_start_7
    sget-object v1, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    if-eq v5, v15, :cond_0

    .line 324
    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    invoke-static {v2, v11, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/transsion/sdk/oneid/e;->a(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 325
    :cond_d
    :goto_3
    sget-object v0, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {v0, v13}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    const-wide/16 v4, 0x0

    .line 326
    iput-wide v4, v1, Lcom/transsion/sdk/oneid/e;->f:J

    .line 327
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v3

    .line 328
    :pswitch_3
    sget-object v0, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v4, "-->WHAT_POST_FP_HASH"

    invoke-virtual {v0, v4}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 329
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    const/16 v4, 0x12c

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 331
    sget-boolean v0, Lcom/transsion/sdk/oneid/OneID;->a:Z

    if-eqz v0, :cond_15

    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/sdk/oneid/d;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_5

    .line 338
    :cond_e
    invoke-static {}, Loneid/m;->e()Loneid/m;

    move-result-object v0

    invoke-virtual {v0}, Loneid/m;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/gslb/GslbSdk;->isInitSuccess(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 339
    sget-object v0, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v2, "GslbSdk new domain is not ready"

    invoke-virtual {v0, v2}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 340
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/transsion/sdk/oneid/e;->a(Landroid/os/Message;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    return v3

    .line 346
    :cond_f
    :try_start_8
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->k:Landroid/content/Context;

    invoke-static {v0}, Loneid/b;->a(Landroid/content/Context;)Loneid/b;

    move-result-object v0

    const-string v4, "fp_hash"

    .line 347
    invoke-virtual {v0, v4}, Loneid/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_4

    :catch_3
    const-string v0, ""

    .line 351
    :goto_4
    :try_start_9
    iget-object v4, v1, Lcom/transsion/sdk/oneid/e;->e:Lcom/transsion/sdk/oneid/data/GroupHashInfo;

    invoke-virtual {v4}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/sdk/oneid/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 352
    sget-object v5, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " vs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 353
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 354
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 355
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    invoke-static {v0, v11, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 357
    :cond_10
    new-instance v0, Loneid/h;

    iget-object v5, v1, Lcom/transsion/sdk/oneid/e;->e:Lcom/transsion/sdk/oneid/data/GroupHashInfo;

    invoke-direct {v0, v5}, Loneid/h;-><init>(Lcom/transsion/sdk/oneid/data/GroupHashInfo;)V

    invoke-virtual {v0}, Loneid/h;->a()Loneid/j;

    move-result-object v0

    .line 358
    sget-object v5, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Loneid/j;->a:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Loneid/j;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 359
    iget v5, v0, Loneid/j;->a:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    if-nez v5, :cond_13

    .line 361
    :try_start_a
    new-instance v5, Lorg/json/JSONObject;

    iget-object v0, v0, Loneid/j;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_11

    const/4 v2, 0x0

    .line 363
    invoke-direct {v1, v2}, Lcom/transsion/sdk/oneid/e;->a(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    .line 364
    iput-wide v4, v1, Lcom/transsion/sdk/oneid/e;->f:J

    goto/16 :goto_0

    :cond_11
    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    .line 366
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    invoke-static {v0, v11, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const-wide/16 v4, 0x0

    .line 367
    iput-wide v4, v1, Lcom/transsion/sdk/oneid/e;->f:J

    goto/16 :goto_0

    :cond_12
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 369
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/transsion/sdk/oneid/e;->a(Landroid/os/Message;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    .line 372
    :try_start_b
    sget-object v1, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_13
    if-eq v5, v15, :cond_0

    .line 375
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/transsion/sdk/oneid/e;->a(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_14
    const/4 v2, 0x0

    .line 379
    invoke-direct {v1, v2}, Lcom/transsion/sdk/oneid/e;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 380
    :cond_15
    :goto_5
    sget-object v0, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {v0, v13}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    const-wide/16 v4, 0x0

    .line 381
    iput-wide v4, v1, Lcom/transsion/sdk/oneid/e;->f:J

    .line 382
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v3

    .line 534
    :cond_16
    sget-object v0, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v2, "-->WHAT_QUIT"

    invoke-virtual {v0, v2}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 535
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->j:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    if-eqz v0, :cond_0

    .line 537
    :try_start_c
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_17

    .line 538
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v2, 0x0

    .line 539
    iput-object v2, v1, Lcom/transsion/sdk/oneid/e;->c:Landroid/os/HandlerThread;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 542
    :cond_17
    :try_start_d
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->j:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/transsion/sdk/oneid/e;->j:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 543
    throw v0

    .line 544
    :cond_18
    sget-object v0, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v2, "-->WHAT_INIT 1.0.0.6"

    invoke-virtual {v0, v2}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 545
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->k:Landroid/content/Context;

    .line 546
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/sdk/oneid/R$string;->oneid_process_name:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 547
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 548
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 550
    :cond_19
    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->k:Landroid/content/Context;

    .line 551
    invoke-static {v2}, Lcom/transsion/sdk/oneid/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 552
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 554
    sget-object v0, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v2, "Only works in the main process"

    invoke-virtual {v0, v2}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 555
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    invoke-virtual {v0, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    return v3

    .line 559
    :cond_1a
    :try_start_e
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->h:Lcom/transsion/sdk/oneid/b;

    if-nez v0, :cond_1b

    .line 560
    new-instance v0, Lcom/transsion/sdk/oneid/b;

    invoke-direct {v0}, Lcom/transsion/sdk/oneid/b;-><init>()V

    iput-object v0, v1, Lcom/transsion/sdk/oneid/e;->h:Lcom/transsion/sdk/oneid/b;

    .line 561
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 563
    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->k:Landroid/content/Context;

    iget-object v4, v1, Lcom/transsion/sdk/oneid/e;->h:Lcom/transsion/sdk/oneid/b;

    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    .line 566
    :try_start_f
    sget-object v2, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 569
    :cond_1b
    :goto_6
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->k:Landroid/content/Context;

    const-string v2, "ire-oneid.shalltry.com"

    const-string v4, "oneid-dev-sg.shalltry.com"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Lcom/transsion/gslb/GslbSdk;->init(Landroid/content/Context;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$InitListener;)V

    .line 571
    new-instance v0, Lcom/transsion/sdk/oneid/data/GroupFpInfo;

    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->k:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/transsion/sdk/oneid/data/GroupFpInfo;-><init>(Landroid/content/Context;Landroid/os/Handler$Callback;)V

    iput-object v0, v1, Lcom/transsion/sdk/oneid/e;->d:Lcom/transsion/sdk/oneid/data/GroupFpInfo;

    .line 572
    new-instance v2, Lcom/transsion/sdk/oneid/data/GroupHashInfo;

    invoke-direct {v2, v0}, Lcom/transsion/sdk/oneid/data/GroupHashInfo;-><init>(Lcom/transsion/sdk/oneid/data/GroupFpInfo;)V

    iput-object v2, v1, Lcom/transsion/sdk/oneid/e;->e:Lcom/transsion/sdk/oneid/data/GroupHashInfo;

    .line 573
    new-instance v0, Lcom/transsion/sdk/oneid/data/OdIdInfo;

    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->d:Lcom/transsion/sdk/oneid/data/GroupFpInfo;

    invoke-direct {v0, v2}, Lcom/transsion/sdk/oneid/data/OdIdInfo;-><init>(Lcom/transsion/sdk/oneid/data/GroupFpInfo;)V

    iput-object v0, v1, Lcom/transsion/sdk/oneid/e;->l:Lcom/transsion/sdk/oneid/data/OdIdInfo;

    .line 574
    sget-object v0, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--> new mOdidInfo "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/transsion/sdk/oneid/e;->l:Lcom/transsion/sdk/oneid/data/OdIdInfo;

    invoke-virtual {v4}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 575
    iget-wide v8, v1, Lcom/transsion/sdk/oneid/e;->g:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-nez v0, :cond_1c

    .line 576
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->k:Landroid/content/Context;

    .line 577
    invoke-static {v0}, Loneid/b;->a(Landroid/content/Context;)Loneid/b;

    move-result-object v0

    const-string v2, "last_post_time"

    invoke-virtual {v0, v2}, Loneid/b;->a(Ljava/lang/String;)I

    move-result v0

    int-to-long v8, v0

    mul-long/2addr v8, v6

    iput-wide v8, v1, Lcom/transsion/sdk/oneid/e;->g:J

    .line 579
    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 580
    iget-wide v8, v1, Lcom/transsion/sdk/oneid/e;->g:J

    cmp-long v0, v6, v8

    const-wide/16 v10, 0xbb8

    const-wide/16 v12, 0x1770

    if-ltz v0, :cond_1e

    sub-long v8, v6, v8

    const-wide/32 v14, 0x5265c00

    cmp-long v0, v8, v14

    if-ltz v0, :cond_1d

    goto :goto_7

    .line 587
    :cond_1d
    sget-object v0, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v2, "Post time not yet reached"

    invoke-virtual {v0, v2}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    goto :goto_9

    .line 588
    :cond_1e
    :goto_7
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 589
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    .line 590
    invoke-static {}, Loneid/m;->e()Loneid/m;

    move-result-object v2

    invoke-virtual {v2}, Loneid/m;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/gslb/GslbSdk;->isInitSuccess(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move-wide v8, v10

    goto :goto_8

    :cond_1f
    move-wide v8, v12

    :goto_8
    const/16 v2, 0x12c

    .line 591
    invoke-virtual {v0, v2, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 600
    :cond_20
    :goto_9
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 601
    invoke-static {}, Loneid/m;->e()Loneid/m;

    move-result-object v0

    invoke-virtual {v0}, Loneid/m;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/gslb/GslbSdk;->isInitSuccess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_a

    :cond_21
    move-wide v10, v12

    .line 602
    :goto_a
    iget-object v0, v1, Lcom/transsion/sdk/oneid/e;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 603
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 604
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/sdk/oneid/data/AppIdInfo;

    .line 605
    iget-object v8, v1, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    invoke-static {v8, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    .line 606
    iput v4, v8, Landroid/os/Message;->arg1:I

    .line 607
    iput-object v2, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 610
    iget-wide v12, v2, Lcom/transsion/sdk/oneid/data/AppIdInfo;->lastRequestTime:J

    cmp-long v4, v6, v12

    if-ltz v4, :cond_23

    sub-long v14, v6, v12

    iget-wide v3, v2, Lcom/transsion/sdk/oneid/data/AppIdInfo;->waitTime:J

    cmp-long v14, v14, v3

    if-ltz v14, :cond_22

    goto :goto_c

    :cond_22
    add-long/2addr v12, v3

    sub-long/2addr v12, v6

    .line 612
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_d

    :cond_23
    :goto_c
    move-wide v3, v10

    .line 614
    :goto_d
    iget-object v12, v1, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    invoke-virtual {v12, v5, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 615
    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->b:Landroid/os/Handler;

    invoke-virtual {v2, v8, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_24
    const/4 v3, 0x0

    goto :goto_b

    .line 624
    :cond_25
    sget-object v3, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v4, "-->WHAT_GET_PROP_RET"

    invoke-virtual {v3, v4}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 625
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 626
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_27

    const-string v3, "UNKNOWN"

    .line 627
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 628
    iget-object v3, v1, Lcom/transsion/sdk/oneid/e;->d:Lcom/transsion/sdk/oneid/data/GroupFpInfo;

    if-eqz v3, :cond_27

    .line 629
    iget-object v3, v3, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->dids:Lcom/transsion/sdk/oneid/data/UniqueIdInfo;

    iget-object v3, v3, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->tsid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 630
    iget-object v3, v1, Lcom/transsion/sdk/oneid/e;->d:Lcom/transsion/sdk/oneid/data/GroupFpInfo;

    iget-object v3, v3, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->dids:Lcom/transsion/sdk/oneid/data/UniqueIdInfo;

    iput-object v0, v3, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->tsid:Ljava/lang/String;

    .line 631
    iget-object v4, v1, Lcom/transsion/sdk/oneid/e;->e:Lcom/transsion/sdk/oneid/data/GroupHashInfo;

    invoke-virtual {v4, v3}, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->updateDidsHash(Lcom/transsion/sdk/oneid/data/UniqueIdInfo;)V

    .line 632
    iget-object v3, v1, Lcom/transsion/sdk/oneid/e;->l:Lcom/transsion/sdk/oneid/data/OdIdInfo;

    iput-object v0, v3, Lcom/transsion/sdk/oneid/data/OdIdInfo;->tsid:Ljava/lang/String;

    .line 633
    iget-object v1, v1, Lcom/transsion/sdk/oneid/e;->k:Landroid/content/Context;

    invoke-static {v1}, Loneid/b;->a(Landroid/content/Context;)Loneid/b;

    move-result-object v1

    .line 634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 636
    :try_start_10
    invoke-virtual {v1, v2, v0}, Loneid/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oneid_time"

    .line 637
    invoke-virtual {v1, v0, v3}, Loneid/b;->a(Ljava/lang/String;I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    .line 639
    :try_start_11
    sget-object v1, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    goto :goto_e

    .line 641
    :cond_26
    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->d:Lcom/transsion/sdk/oneid/data/GroupFpInfo;

    iget-object v2, v2, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->dids:Lcom/transsion/sdk/oneid/data/UniqueIdInfo;

    iget-object v2, v2, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->tsid:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 642
    new-instance v2, Lcom/transsion/sdk/oneid/data/IdChangeInfo;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    const-string v3, "tsid"

    :try_start_12
    iget-object v4, v1, Lcom/transsion/sdk/oneid/e;->d:Lcom/transsion/sdk/oneid/data/GroupFpInfo;

    iget-object v4, v4, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->dids:Lcom/transsion/sdk/oneid/data/UniqueIdInfo;

    iget-object v4, v4, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->tsid:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/transsion/sdk/oneid/data/IdChangeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/transsion/sdk/oneid/e;->a(Lcom/transsion/sdk/oneid/data/IdChangeInfo;)V

    .line 643
    iget-object v2, v1, Lcom/transsion/sdk/oneid/e;->d:Lcom/transsion/sdk/oneid/data/GroupFpInfo;

    iget-object v2, v2, Lcom/transsion/sdk/oneid/data/GroupFpInfo;->dids:Lcom/transsion/sdk/oneid/data/UniqueIdInfo;

    iput-object v0, v2, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->tsid:Ljava/lang/String;

    .line 644
    iget-object v3, v1, Lcom/transsion/sdk/oneid/e;->e:Lcom/transsion/sdk/oneid/data/GroupHashInfo;

    invoke-virtual {v3, v2}, Lcom/transsion/sdk/oneid/data/GroupHashInfo;->updateDidsHash(Lcom/transsion/sdk/oneid/data/UniqueIdInfo;)V

    .line 645
    iget-object v1, v1, Lcom/transsion/sdk/oneid/e;->l:Lcom/transsion/sdk/oneid/data/OdIdInfo;

    iput-object v0, v1, Lcom/transsion/sdk/oneid/data/OdIdInfo;->tsid:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    goto :goto_e

    :catch_7
    move-exception v0

    .line 826
    sget-object v1, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :cond_27
    :goto_e
    const/4 v1, 0x0

    :goto_f
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

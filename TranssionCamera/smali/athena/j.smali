.class public Lathena/j;
.super Lathena/i;
.source "source.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static volatile b:Lathena/j;


# instance fields
.field private c:I

.field private d:Landroid/os/Handler;

.field private e:I

.field private f:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lathena/i;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lathena/j;->c:I

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lathena/j;->f:J

    .line 27
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "Athena Worker"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 29
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lathena/j;->d:Landroid/os/Handler;

    const/16 p0, 0x12f

    .line 31
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lathena/j;
    .locals 2

    .line 1
    sget-object v0, Lathena/j;->b:Lathena/j;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lathena/k;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lathena/j;->b:Lathena/j;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lathena/j;

    invoke-direct {v1, p0}, Lathena/j;-><init>(Landroid/content/Context;)V

    sput-object v1, Lathena/j;->b:Lathena/j;

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
    sget-object p0, Lathena/j;->b:Lathena/j;

    return-object p0
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    .line 21
    iget p0, p0, Lathena/j;->c:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 22
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "appId"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 24
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "baseInfo"

    if-nez v0, :cond_0

    .line 25
    invoke-virtual {p0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/transsion/athena/data/AppIdData;->a(Landroid/content/Context;I)Lcom/transsion/athena/data/AppIdData;

    move-result-object p1

    .line 28
    iget-object p1, p1, Lcom/transsion/athena/data/AppIdData;->b:Ljava/lang/String;

    .line 29
    invoke-virtual {p0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :goto_0
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "content://com.transsion.dataservice.provider/bind"

    .line 32
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1

    .line 34
    :cond_1
    sget-object p0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string p1, "Failed to connect to DCS service"

    invoke-virtual {p0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private a(Lcom/transsion/athena/data/d;)V
    .locals 7

    .line 35
    iget p0, p0, Lathena/j;->c:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 36
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "content://com.transsion.dataservice.provider/property"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-array v5, v0, [Ljava/lang/String;

    iget-object p0, p1, Lcom/transsion/athena/data/d;->a:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p0, v5, v0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const-string v4, "prop_key = ?"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 40
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    iget-object v1, p1, Lcom/transsion/athena/data/d;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ga/AthenaAnalytics$f;

    if-eqz v1, :cond_0

    .line 44
    iget-object p1, p1, Lcom/transsion/athena/data/d;->a:Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Lcom/transsion/ga/AthenaAnalytics$f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 50
    :cond_1
    sget-object p0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string p1, "Failed to connect to DCS service"

    invoke-virtual {p0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    .line 9
    iget v0, p0, Lathena/j;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 10
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "trackObject"

    .line 11
    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "content://com.transsion.dataservice.provider/track"

    .line 13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 15
    :cond_0
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "Failed to connect to DCS service"

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 17
    iget-wide v0, p0, Lathena/j;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lathena/j;->f:J

    const/16 p1, 0x14

    int-to-long v2, p1

    .line 18
    rem-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-nez p1, :cond_1

    div-long/2addr v0, v2

    const-wide/16 v2, 0x5

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    .line 19
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lathena/k0;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 20
    invoke-direct {p0}, Lathena/j;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method private d()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.transsion.dataservice.provider/authorize"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v5, v3

    const/4 v3, 0x0

    const-string v4, "pkg = ?"

    const/4 v6, 0x0

    .line 4
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    sget-object v1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DCS authorize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ne v3, v7, :cond_0

    const-string v3, "enable"

    goto :goto_0

    :cond_0
    const-string v3, "disable"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 8
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v7, :cond_1

    .line 9
    iput v7, p0, Lathena/j;->c:I

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    .line 11
    iput v1, p0, Lathena/j;->c:I

    .line 13
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;J)V
    .locals 0

    .line 75
    iget-object p0, p0, Lathena/j;->d:Landroid/os/Handler;

    if-eqz p0, :cond_0

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 0

    .line 73
    iget-object p0, p0, Lathena/j;->d:Landroid/os/Handler;

    if-eqz p0, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    .locals 2

    .line 51
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "event"

    .line 53
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "tid"

    .line 54
    invoke-virtual {v0, p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "type"

    .line 55
    :try_start_1
    invoke-virtual {p2}, Lcom/transsion/athena/data/TrackData;->b()I

    move-result p3

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    invoke-virtual {p2}, Lcom/transsion/athena/data/TrackData;->a()Lorg/json/JSONObject;

    move-result-object p1

    .line 58
    sget-object p2, Lcom/transsion/athena/config/data/model/f;->h:Ljava/lang/String;

    const-string p2, "_eparam"

    .line 63
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 65
    sget-object p2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 67
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    iget p2, p0, Lathena/j;->e:I

    const/16 p3, 0x1388

    if-ge p2, p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 69
    iput p2, p0, Lathena/j;->e:I

    .line 70
    iget-object p2, p0, Lathena/j;->d:Landroid/os/Handler;

    const/16 p3, 0x12e

    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 71
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    iget-object p0, p0, Lathena/j;->d:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_4

    const/16 v1, 0x12f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x190

    if-eq v0, v1, :cond_1

    const/16 v1, 0x195

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/athena/data/d;

    invoke-direct {p0, p1}, Lathena/j;->a(Lcom/transsion/athena/data/d;)V

    goto :goto_0

    .line 19
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lathena/j;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_2
    iget-object p1, p0, Lathena/i;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/core/CoreUtil;->init(Landroid/content/Context;)V

    .line 21
    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->r()Z

    move-result p1

    invoke-static {p1}, Lcom/transsion/core/CoreUtil;->setDebug(Z)V

    .line 22
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {p1}, Lcom/transsion/core/log/ObjectLogUtils;->getBuilder()Lcom/transsion/core/log/ObjectLogUtils$Builder;

    move-result-object p1

    invoke-static {}, Lcom/transsion/athena/config/data/model/f;->r()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->setLogSwitch(Z)Lcom/transsion/core/log/ObjectLogUtils$Builder;

    .line 23
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "Athena SDK Version is 2.3.3.9"

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 24
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "Athena is in Lite mode"

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 25
    invoke-static {}, Lcom/transsion/athena/data/c;->b()I

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "HostAppId must be set up in LiteMode"

    .line 26
    invoke-static {p1}, Lathena/k0;->a(Ljava/lang/String;)V

    .line 28
    :cond_3
    invoke-direct {p0}, Lathena/j;->d()V

    goto :goto_0

    .line 29
    :cond_4
    iget v0, p0, Lathena/j;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lathena/j;->e:I

    .line 30
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lathena/j;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 40
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

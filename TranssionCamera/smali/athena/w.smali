.class public Lathena/w;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Lathena/w;


# instance fields
.field private b:Lathena/v;

.field private c:Ljava/lang/String;

.field private final d:Landroid/content/Context;

.field private e:Z

.field private f:J

.field private volatile g:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lathena/w;->f:J

    .line 6
    iput-object p1, p0, Lathena/w;->d:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lathena/w;
    .locals 1

    .line 1
    sget-object v0, Lathena/w;->a:Lathena/w;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lathena/w;

    invoke-direct {v0, p0}, Lathena/w;-><init>(Landroid/content/Context;)V

    sput-object v0, Lathena/w;->a:Lathena/w;

    .line 4
    :cond_0
    sget-object p0, Lathena/w;->a:Lathena/w;

    return-object p0
.end method


# virtual methods
.method public a(JJ)J
    .locals 1

    .line 14
    iget-boolean v0, p0, Lathena/w;->e:Z

    if-eqz v0, :cond_0

    .line 15
    iget-object p0, p0, Lathena/w;->b:Lathena/v;

    iget-wide p1, p0, Lathena/v;->a:J

    add-long/2addr p1, p3

    iget-wide p3, p0, Lathena/v;->b:J

    sub-long/2addr p1, p3

    :cond_0
    return-wide p1
.end method

.method public a()Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lathena/w;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lcom/transsion/athena/data/Track;)V
    .locals 6

    .line 5
    iget-boolean v0, p0, Lathena/w;->e:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lathena/w;->b:Lathena/v;

    iget-wide v0, v0, Lathena/v;->a:J

    .line 7
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackErTs()J

    move-result-wide v2

    iget-object p0, p0, Lathena/w;->b:Lathena/v;

    iget-wide v4, p0, Lathena/v;->b:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    const-wide v2, 0x17c376f1800L

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v0

    .line 11
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/transsion/athena/data/Track;->setTrackTs(J)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lathena/w;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    iget-object p0, p0, Lathena/w;->c:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/transsion/athena/data/Track;->setBootId(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 17
    iput-boolean p1, p0, Lathena/w;->g:Z

    if-eqz p1, :cond_0

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lathena/w;->f:J

    :cond_0
    return-void
.end method

.method public a(J)Z
    .locals 9

    .line 20
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncBaseTime serverTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bootId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lathena/w;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lathena/w;->g:Z

    const-wide/16 v1, -0x1

    .line 23
    iput-wide v1, p0, Lathena/w;->f:J

    const-wide v1, 0x17c376f1800L

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 26
    new-instance v8, Lathena/v;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v7, p0, Lathena/w;->c:Ljava/lang/String;

    move-object v2, v8

    move-wide v3, p1

    invoke-direct/range {v2 .. v7}, Lathena/v;-><init>(JJLjava/lang/String;)V

    iput-object v8, p0, Lathena/w;->b:Lathena/v;

    sub-long/2addr v0, p1

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/32 v0, 0x927c0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lathena/w;->e:Z

    .line 31
    :cond_0
    :try_start_0
    iget-object p1, p0, Lathena/w;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 32
    iget-object p1, p0, Lathena/w;->d:Landroid/content/Context;

    invoke-static {p1}, Lathena/n0;->a(Landroid/content/Context;)Lathena/n0;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "base_time"

    :try_start_1
    iget-object v0, p0, Lathena/w;->b:Lathena/v;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-wide v2, v0, Lathena/v;->a:J

    const-string v4, "serverTime"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    iget-wide v2, v0, Lathena/v;->b:J

    const-string v4, "elapsedRealtime"

    .line 66
    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v0, v0, Lathena/v;->c:Ljava/lang/String;

    const-string v2, "bootId"

    .line 67
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p1, p2, v0}, Lathena/n0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 71
    sget-object p2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 75
    new-instance p1, Lathena/v;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Lathena/w;->c:Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lathena/v;-><init>(JJLjava/lang/String;)V

    iput-object p1, p0, Lathena/w;->b:Lathena/v;

    .line 76
    iput-boolean v0, p0, Lathena/w;->e:Z

    .line 78
    :cond_2
    :goto_0
    iget-boolean p0, p0, Lathena/w;->e:Z

    return p0
.end method

.method public b()J
    .locals 4

    .line 1
    iget-object p0, p0, Lathena/w;->b:Lathena/v;

    if-eqz p0, :cond_0

    .line 2
    iget-wide v0, p0, Lathena/v;->a:J

    iget-wide v2, p0, Lathena/v;->b:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c()V
    .locals 8

    const-string v0, "base_time"

    .line 1
    :try_start_0
    iget-object v1, p0, Lathena/w;->d:Landroid/content/Context;

    invoke-static {v1}, Lathena/n0;->a(Landroid/content/Context;)Lathena/n0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lathena/n0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    sget-object v2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "baseTimeJs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Lathena/v;

    invoke-direct {v2, v1}, Lathena/v;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lathena/w;->b:Lathena/v;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    sget-object v2, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 8
    :cond_0
    :goto_0
    sget-object v1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const/4 v1, 0x0

    .line 771
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, "/proc/sys/kernel/random/boot_id"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v3, 0x400

    :try_start_2
    new-array v3, v3, [B

    .line 774
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    .line 775
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 782
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    .line 785
    sget-object v4, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    goto :goto_3

    :catch_2
    move-exception v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_3
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    .line 786
    :goto_1
    :try_start_4
    sget-object v4, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_2

    .line 790
    :cond_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_4
    move-exception v2

    .line 793
    sget-object v3, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :cond_2
    :goto_2
    move-object v3, v1

    .line 794
    :goto_3
    iput-object v3, p0, Lathena/w;->c:Ljava/lang/String;

    .line 795
    iget-object v2, p0, Lathena/w;->b:Lathena/v;

    if-eqz v2, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 796
    iget-object v2, p0, Lathena/w;->c:Ljava/lang/String;

    iget-object v3, p0, Lathena/w;->b:Lathena/v;

    iget-object v3, v3, Lathena/v;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 797
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 798
    iget-object v2, p0, Lathena/w;->b:Lathena/v;

    iget-wide v2, v2, Lathena/v;->a:J

    .line 799
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Lathena/w;->b:Lathena/v;

    iget-wide v6, v6, Lathena/v;->b:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    sub-long/2addr v2, v0

    .line 800
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    const/4 v0, 0x1

    .line 801
    iput-boolean v0, p0, Lathena/w;->e:Z

    goto :goto_4

    .line 804
    :cond_3
    iput-object v1, p0, Lathena/w;->b:Lathena/v;

    .line 805
    iget-object p0, p0, Lathena/w;->d:Landroid/content/Context;

    invoke-static {p0}, Lathena/n0;->a(Landroid/content/Context;)Lathena/n0;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lathena/n0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_4
    return-void

    :catchall_1
    move-exception p0

    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_5

    .line 806
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    .line 809
    sget-object v1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 811
    :cond_5
    :goto_6
    throw p0
.end method

.method public d()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lathena/w;->g:Z

    return p0
.end method

.method public e()Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lathena/w;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lathena/w;->f:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    return v1

    .line 5
    :cond_0
    iget-object v0, p0, Lathena/w;->b:Lathena/v;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lathena/v;->c:Ljava/lang/String;

    iget-object p0, p0, Lathena/w;->c:Ljava/lang/String;

    .line 6
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

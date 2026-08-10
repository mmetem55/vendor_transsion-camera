.class public Lcom/transsion/ga/c;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static volatile a:Lcom/transsion/ga/c;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/ga/c;->b:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/transsion/ga/c;
    .locals 1

    .line 7
    sget-object v0, Lcom/transsion/ga/c;->a:Lcom/transsion/ga/c;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ga/c;->a:Lcom/transsion/ga/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/transsion/ga/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/transsion/ga/c;->a:Lcom/transsion/ga/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/transsion/ga/c;

    invoke-direct {v1, p0}, Lcom/transsion/ga/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transsion/ga/c;->a:Lcom/transsion/ga/c;

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

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/ga/d;)V
    .locals 6

    .line 8
    invoke-static {}, Lcom/transsion/athena/data/c;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 10
    sget-object p0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string p1, "trackException tid not configure"

    invoke-virtual {p0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    return-void

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/ga/d;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "addJSON"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 16
    new-instance v2, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v2}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v3, "count"

    const/4 v4, 0x1

    .line 17
    invoke-virtual {v2, v3, v4, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;II)Lcom/transsion/athena/data/TrackData;

    move-result-object v2

    const-string v3, "eid"

    .line 18
    invoke-virtual {v2, v3, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    move-result-object v2

    .line 19
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "pid"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v3, v5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;II)Lcom/transsion/athena/data/TrackData;

    move-result-object v2

    .line 20
    invoke-virtual {p1}, Lcom/transsion/ga/d;->b()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "extra"

    invoke-virtual {v2, v4, v3, v5}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Landroid/os/Bundle;I)Lcom/transsion/athena/data/TrackData;

    move-result-object v2

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 23
    instance-of v3, p1, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v3, :cond_1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 30
    :cond_2
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 32
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x800

    if-le v3, v4, :cond_4

    const/4 v3, 0x0

    .line 33
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :cond_4
    :goto_1
    const-string v3, "stackTrace"

    .line 34
    invoke-virtual {v2, v3, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    move-result-object p1

    const-string v2, "sql"

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-wide/16 v1, 0x0

    .line 38
    :try_start_0
    iget-object p0, p0, Lcom/transsion/ga/c;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const-string p0, "usableSpace"

    .line 42
    invoke-virtual {p1, p0, v1, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;J)Lcom/transsion/athena/data/TrackData;

    .line 44
    :cond_5
    invoke-static {v0}, Lcom/transsion/ga/AthenaAnalytics;->getInstance(I)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object p0

    const-string v1, "ev_athena"

    invoke-virtual {p0, v1, p1, v0}, Lcom/transsion/ga/AthenaAnalytics;->track(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;I)V

    :cond_6
    return-void
.end method

.class public Lgs1/gs1/gs1/gs1;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static volatile gs10:Lgs1/gs1/gs1/gs1;


# instance fields
.field public gs1:Ljava/lang/String;

.field public gs2:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public gs3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgs1/gs1/gs1/gs3;",
            ">;"
        }
    .end annotation
.end field

.field public gs4:J

.field public gs5:J

.field public gs6:Ljava/lang/String;

.field public gs7:J

.field public gs8:J

.field public gs9:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "gslb_"

    .line 2
    iput-object v0, p0, Lgs1/gs1/gs1/gs1;->gs1:Ljava/lang/String;

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lgs1/gs1/gs1/gs1;->gs6:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lgs1/gs1/gs1/gs1;->gs7:J

    .line 20
    iput-wide v0, p0, Lgs1/gs1/gs1/gs1;->gs8:J

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgs1/gs1/gs1/gs1;->gs2:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgs1/gs1/gs1/gs1;->gs3:Ljava/util/List;

    const-wide/32 v0, 0x5265c00

    .line 33
    iput-wide v0, p0, Lgs1/gs1/gs1/gs1;->gs5:J

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgs1/gs1/gs1/gs1;->gs1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    sget-object v1, Lcom/transsion/gslb/GslbSdk;->gs2:Landroid/content/Context;

    .line 38
    invoke-static {v1}, Lgs1/gs1/gs1/gs5;->gs1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgs1/gs1/gs1/gs1;->gs1:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    sget-object v1, Lcom/transsion/gslb/GslbSdk;->gs2:Landroid/content/Context;

    .line 42
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgs1/gs1/gs1/gs1;->gs1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgs1/gs1/gs1/gs1;->gs9:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lgs1/gs1/gs1/gs1;->gs9:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lgs1/gs1/gs1/gs5;->gs1(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 48
    array-length v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 52
    :try_start_0
    aget-object v2, v0, v1

    .line 53
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    .line 54
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const-string v6, ","

    .line 58
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 60
    array-length v6, v2

    move v7, v1

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v8, v2, v7

    const-string v9, "#"

    .line 62
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 64
    array-length v9, v8

    if-ne v9, v4, :cond_2

    .line 65
    aget-object v9, v8, v1

    aget-object v8, v8, v5

    invoke-interface {v3, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 66
    :cond_3
    :goto_1
    iput-object v3, p0, Lgs1/gs1/gs1/gs1;->gs2:Ljava/util/Map;

    .line 67
    aget-object v1, v0, v5

    iput-object v1, p0, Lgs1/gs1/gs1/gs1;->gs6:Ljava/lang/String;

    .line 68
    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lgs1/gs1/gs1/gs1;->gs5:J

    const/4 v1, 0x3

    .line 69
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lgs1/gs1/gs1/gs1;->gs4:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 72
    sget-object v1, Lgs1/gs1/gs1/gs5;->gs1:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 73
    :goto_2
    iget-object v0, p0, Lgs1/gs1/gs1/gs1;->gs2:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 74
    iget-object v0, p0, Lgs1/gs1/gs1/gs1;->gs2:Ljava/util/Map;

    const-string v1, "dsu.shalltry.com"

    const-string v2, "blank"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lgs1/gs1/gs1/gs1;->gs2:Ljava/util/Map;

    const-string v1, "dsc.shalltry.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lgs1/gs1/gs1/gs1;->gs2:Ljava/util/Map;

    const-string v1, "api.twibida.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_4
    invoke-virtual {p0}, Lgs1/gs1/gs1/gs1;->gs1()V

    return-void
.end method

.method public static gs6()Lgs1/gs1/gs1/gs1;
    .locals 2

    .line 1
    sget-object v0, Lgs1/gs1/gs1/gs1;->gs10:Lgs1/gs1/gs1/gs1;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lgs1/gs1/gs1/gs1;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lgs1/gs1/gs1/gs1;->gs10:Lgs1/gs1/gs1/gs1;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lgs1/gs1/gs1/gs1;

    invoke-direct {v1}, Lgs1/gs1/gs1/gs1;-><init>()V

    sput-object v1, Lgs1/gs1/gs1/gs1;->gs10:Lgs1/gs1/gs1/gs1;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lgs1/gs1/gs1/gs1;->gs10:Lgs1/gs1/gs1/gs1;

    return-object v0
.end method


# virtual methods
.method public final gs1()V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lgs1/gs1/gs1/gs1;->gs7:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    const-wide/16 v3, 0x0

    if-lez v2, :cond_0

    .line 4
    iput-wide v3, p0, Lgs1/gs1/gs1/gs1;->gs8:J

    .line 7
    :cond_0
    iget-wide v5, p0, Lgs1/gs1/gs1/gs1;->gs4:J

    cmp-long v2, v5, v3

    if-lez v2, :cond_3

    sub-long v5, v0, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    iget-wide v7, p0, Lgs1/gs1/gs1/gs1;->gs5:J

    cmp-long v2, v5, v7

    if-lez v2, :cond_3

    .line 8
    iget-wide v5, p0, Lgs1/gs1/gs1/gs1;->gs8:J

    cmp-long v2, v5, v3

    if-nez v2, :cond_1

    .line 9
    iput-wide v0, p0, Lgs1/gs1/gs1/gs1;->gs7:J

    :cond_1
    const-wide/16 v0, 0x4

    cmp-long v0, v5, v0

    if-gez v0, :cond_2

    .line 13
    sget-object v0, Lcom/transsion/gslb/GslbSdk;->gs1:Lgs1/gs1/gs1/gs6;

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v0}, Lgs1/gs1/gs1/gs6;->gs3()V

    .line 15
    iget-object v1, v0, Lgs1/gs1/gs1/gs6;->gs1:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 16
    iget-object v0, v0, Lgs1/gs1/gs1/gs6;->gs1:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 17
    :cond_2
    iget-wide v0, p0, Lgs1/gs1/gs1/gs1;->gs8:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lgs1/gs1/gs1/gs1;->gs8:J

    :cond_3
    return-void
.end method

.method public gs1(Lgs1/gs1/gs1/gs3;)V
    .locals 8

    .line 19
    iget-object v0, p1, Lgs1/gs1/gs1/gs3;->gs1:[Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v4, v2

    move v5, v4

    move v3, v1

    .line 23
    :goto_0
    iget-object v6, p1, Lgs1/gs1/gs1/gs3;->gs1:[Ljava/lang/String;

    array-length v7, v6

    if-ge v2, v7, :cond_3

    .line 24
    aget-object v7, v6, v2

    invoke-static {v7}, Lgs1/gs1/gs1/gs5;->gs1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 25
    iget-object v6, p1, Lgs1/gs1/gs1/gs3;->gs1:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    .line 30
    :cond_0
    iget-object v3, p0, Lgs1/gs1/gs1/gs1;->gs2:Ljava/util/Map;

    iget-object v6, p1, Lgs1/gs1/gs1/gs3;->gs1:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    .line 33
    iget-object v3, p0, Lgs1/gs1/gs1/gs1;->gs2:Ljava/util/Map;

    iget-object v4, p1, Lgs1/gs1/gs1/gs3;->gs1:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string v6, "blank"

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v1

    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {p0, v3}, Lgs1/gs1/gs1/gs1;->gs1(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move v5, v1

    :cond_2
    :goto_1
    move v3, v0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 41
    iget-object v0, p1, Lgs1/gs1/gs1/gs3;->gs2:Lcom/transsion/gslb/GslbSdk$InitListener;

    invoke-interface {v0}, Lcom/transsion/gslb/GslbSdk$InitListener;->onInitFail()V

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_5

    .line 44
    invoke-virtual {p0}, Lgs1/gs1/gs1/gs1;->gs5()V

    goto :goto_3

    :cond_5
    if-nez v5, :cond_7

    .line 47
    iget-object p1, p1, Lgs1/gs1/gs1/gs3;->gs2:Lcom/transsion/gslb/GslbSdk$InitListener;

    if-eqz p1, :cond_6

    .line 48
    new-instance v0, Ljava/util/HashMap;

    iget-object p0, p0, Lgs1/gs1/gs1/gs1;->gs2:Ljava/util/Map;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v0}, Lcom/transsion/gslb/GslbSdk$InitListener;->onInitSuccess(Ljava/util/Map;)V

    :cond_6
    return-void

    .line 52
    :cond_7
    :goto_3
    iget-object p0, p0, Lgs1/gs1/gs1/gs1;->gs3:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method

.method public final gs1(Ljava/lang/String;)Z
    .locals 0

    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "blank"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public gs2()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object p0, p0, Lgs1/gs1/gs1/gs1;->gs2:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public gs3()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lgs1/gs1/gs1/gs1;->gs2:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lgs1/gs1/gs1/gs1;->gs1(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public gs4()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lgs1/gs1/gs1/gs1;->gs3:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgs1/gs1/gs1/gs3;

    .line 2
    iget-object v2, v1, Lgs1/gs1/gs1/gs3;->gs2:Lcom/transsion/gslb/GslbSdk$InitListener;

    if-eqz v2, :cond_3

    .line 4
    iget-object v2, v1, Lgs1/gs1/gs1/gs3;->gs1:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v6, v2, v4

    .line 5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lgs1/gs1/gs1/gs1;->gs2:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lgs1/gs1/gs1/gs1;->gs1(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    .line 10
    iget-object v1, v1, Lgs1/gs1/gs1/gs3;->gs2:Lcom/transsion/gslb/GslbSdk$InitListener;

    invoke-interface {v1}, Lcom/transsion/gslb/GslbSdk$InitListener;->onInitFail()V

    goto :goto_0

    .line 13
    :cond_2
    iget-object v1, v1, Lgs1/gs1/gs1/gs3;->gs2:Lcom/transsion/gslb/GslbSdk$InitListener;

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lgs1/gs1/gs1/gs1;->gs2:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Lcom/transsion/gslb/GslbSdk$InitListener;->onInitSuccess(Ljava/util/Map;)V

    goto :goto_0

    .line 15
    :cond_3
    iget-object v1, v1, Lgs1/gs1/gs1/gs3;->gs3:Ljava/lang/String;

    goto :goto_0

    .line 25
    :cond_4
    iget-object p0, p0, Lgs1/gs1/gs1/gs1;->gs3:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public final gs5()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgs1/gs1/gs1/gs1;->gs2:Ljava/util/Map;

    invoke-static {v1}, Lgs1/gs1/gs1/gs5;->gs1(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgs1/gs1/gs1/gs1;->gs6:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lgs1/gs1/gs1/gs1;->gs5:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lgs1/gs1/gs1/gs1;->gs4:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lgs1/gs1/gs1/gs1;->gs9:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 12
    :goto_0
    :try_start_3
    sget-object v0, Lgs1/gs1/gs1/gs5;->gs1:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    .line 16
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 21
    :catch_3
    :cond_1
    throw p0
.end method

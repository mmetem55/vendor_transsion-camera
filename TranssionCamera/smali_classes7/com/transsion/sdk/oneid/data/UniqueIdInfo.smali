.class public Lcom/transsion/sdk/oneid/data/UniqueIdInfo;
.super Lcom/transsion/sdk/oneid/data/OneBaseInfo;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public oaid:Ljava/lang/String;

.field public opid:Ljava/lang/String;

.field public tsid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler$Callback;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    const-string v0, "oneid_time"

    const-string v1, "oneid"

    const-string v2, "oaid"

    const-string v3, "opid"

    .line 1
    invoke-direct {p0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;-><init>()V

    const-string v4, ""

    .line 2
    iput-object v4, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->tsid:Ljava/lang/String;

    .line 3
    iput-object v4, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;

    .line 4
    iput-object v4, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->oaid:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/transsion/sdk/oneid/d;->i(Landroid/content/Context;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 10
    invoke-static {p1}, Loneid/b;->a(Landroid/content/Context;)Loneid/b;

    move-result-object v5

    const/4 v7, 0x0

    .line 13
    :try_start_0
    invoke-virtual {v5, v1}, Loneid/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->tsid:Ljava/lang/String;

    .line 14
    invoke-virtual {v5, v0}, Loneid/b;->a(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    .line 16
    sget-object v9, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 18
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->intValue()I

    move-result v8

    .line 19
    iget-object v9, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->tsid:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    sub-int v7, v8, v7

    .line 20
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-long v9, v7

    const-wide/32 v11, 0x15180

    cmp-long v7, v9, v11

    if-ltz v7, :cond_2

    .line 22
    :cond_0
    :try_start_1
    invoke-static {p1, v6}, Lcom/transsion/sdk/oneid/d;->a(Landroid/content/Context;Landroid/os/Handler$Callback;)Ljava/lang/String;

    move-result-object v7

    .line 23
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "UNKNOWN"

    .line 24
    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 25
    iget-object v9, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->tsid:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 26
    iput-object v7, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->tsid:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 28
    :try_start_2
    invoke-virtual {v5, v1, v7}, Loneid/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v5, v0, v8}, Loneid/b;->a(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 31
    :try_start_3
    sget-object v1, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    goto :goto_1

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->tsid:Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 34
    invoke-static {p1}, Lcom/transsion/sdk/oneid/e;->a(Landroid/content/Context;)Lcom/transsion/sdk/oneid/e;

    move-result-object v0

    new-instance v1, Lcom/transsion/sdk/oneid/data/IdChangeInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const-string v5, "tsid"

    :try_start_4
    iget-object v8, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->tsid:Ljava/lang/String;

    invoke-direct {v1, v5, v8, v7}, Lcom/transsion/sdk/oneid/data/IdChangeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, v1}, Lcom/transsion/sdk/oneid/e;->a(Lcom/transsion/sdk/oneid/data/IdChangeInfo;)V

    .line 36
    iput-object v7, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->tsid:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 40
    sget-object v1, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 41
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-eqz v1, :cond_2

    .line 43
    :try_start_5
    invoke-static {p1, p2}, Lcom/transsion/sdk/oneid/d;->a(Landroid/content/Context;Landroid/os/Handler$Callback;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 45
    :catch_3
    sget-object p2, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 54
    :cond_2
    :goto_1
    :try_start_6
    invoke-static {p1}, Loneid/b;->a(Landroid/content/Context;)Loneid/b;

    move-result-object p2

    invoke-virtual {p2, v3}, Loneid/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;

    .line 55
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    if-eqz p2, :cond_6

    .line 59
    :try_start_7
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_3

    .line 61
    new-instance p2, Ljava/io/File;

    invoke-static {}, Lcom/transsion/sdk/oneid/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    invoke-static {p2}, Lcom/transsion/sdk/oneid/d;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 64
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 65
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 74
    :catch_4
    :cond_3
    :try_start_8
    iget-object p2, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 86
    iget-object p2, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    if-eqz p2, :cond_5

    .line 88
    :try_start_9
    new-instance p2, Ljava/io/File;

    const-string v1, "/proc/sys/kernel/random/boot_id"

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/transsion/sdk/oneid/d;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 92
    :catch_5
    :try_start_a
    iget-object p2, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 93
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;

    .line 95
    :cond_4
    iget-object p2, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;

    invoke-static {p2}, Lcom/transsion/sdk/oneid/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;

    .line 100
    :cond_5
    invoke-static {p1}, Loneid/b;->a(Landroid/content/Context;)Loneid/b;

    move-result-object p2

    iget-object v1, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;

    invoke-virtual {p2, v3, v1}, Loneid/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 104
    :cond_6
    :try_start_b
    new-instance p2, Ljava/io/File;

    invoke-static {}, Lcom/transsion/sdk/oneid/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    .line 110
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 111
    invoke-static {p2}, Lcom/transsion/sdk/oneid/d;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 112
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 113
    sget-object v0, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "read opid success"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 114
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 117
    :cond_7
    iget-object p2, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 118
    invoke-static {p1}, Lcom/transsion/sdk/oneid/e;->a(Landroid/content/Context;)Lcom/transsion/sdk/oneid/e;

    move-result-object p2

    new-instance v0, Lcom/transsion/sdk/oneid/data/IdChangeInfo;

    iget-object v1, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v1}, Lcom/transsion/sdk/oneid/data/IdChangeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2, v0}, Lcom/transsion/sdk/oneid/e;->a(Lcom/transsion/sdk/oneid/data/IdChangeInfo;)V

    .line 120
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 121
    iput-object v4, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_2

    :catch_6
    move-exception p2

    .line 126
    :try_start_c
    sget-object v0, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_2

    :catch_7
    move-exception p2

    .line 129
    sget-object v0, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 133
    :cond_8
    :goto_2
    :try_start_d
    invoke-static {p1}, Loneid/b;->a(Landroid/content/Context;)Loneid/b;

    move-result-object p2

    .line 134
    invoke-virtual {p2, v2}, Loneid/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->oaid:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 137
    :try_start_e
    invoke-static {p1}, Loneid/e;->a(Landroid/content/Context;)Loneid/e$b;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Loneid/e$b;->a()Ljava/lang/String;

    move-result-object v6
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_3

    :catch_8
    move-exception v0

    .line 140
    :try_start_f
    sget-object v1, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 142
    :goto_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 143
    iget-object v0, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->oaid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 144
    iput-object v6, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->oaid:Ljava/lang/String;

    .line 145
    invoke-virtual {p2, v2, v6}, Loneid/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 146
    :cond_9
    iget-object p2, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->oaid:Ljava/lang/String;

    invoke-static {p2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 147
    invoke-static {p1}, Lcom/transsion/sdk/oneid/e;->a(Landroid/content/Context;)Lcom/transsion/sdk/oneid/e;

    move-result-object p1

    new-instance p2, Lcom/transsion/sdk/oneid/data/IdChangeInfo;

    iget-object v0, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->oaid:Ljava/lang/String;

    invoke-direct {p2, v2, v0, v6}, Lcom/transsion/sdk/oneid/data/IdChangeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1, p2}, Lcom/transsion/sdk/oneid/e;->a(Lcom/transsion/sdk/oneid/data/IdChangeInfo;)V

    .line 149
    iput-object v6, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->oaid:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_4

    :catch_9
    move-exception p0

    .line 153
    sget-object p1, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :cond_a
    :goto_4
    return-void
.end method

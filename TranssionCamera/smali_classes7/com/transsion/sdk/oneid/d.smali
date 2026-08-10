.class public Lcom/transsion/sdk/oneid/d;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static a:Lcom/transsion/core/log/ObjectLogUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/core/log/ObjectLogUtils$Builder;

    invoke-direct {v0}, Lcom/transsion/core/log/ObjectLogUtils$Builder;-><init>()V

    const-string v1, "OneID"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->setGlobalTag(Ljava/lang/String;)Lcom/transsion/core/log/ObjectLogUtils$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->setLogHeadSwitch(Z)Lcom/transsion/core/log/ObjectLogUtils$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->setBorderSwitch(Z)Lcom/transsion/core/log/ObjectLogUtils$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->create()Lcom/transsion/core/log/ObjectLogUtils;

    move-result-object v0

    sput-object v0, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .line 78
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;

    move-result-object v0

    .line 79
    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_fsid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 96
    :try_start_1
    sget-object v1, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, ""

    return-object v0

    .line 105
    :goto_0
    throw v0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 6

    const-wide/32 v0, 0x40000000

    cmp-long v2, p0, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    .line 106
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    long-to-float p0, p0

    long-to-float p1, v0

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v4, v3

    const-string p0, "%.1fGB"

    invoke-static {v2, p0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v2, p0, v0

    const/high16 v5, 0x42c80000    # 100.0f

    if-ltz v2, :cond_2

    long-to-float p0, p0

    long-to-float p1, v0

    div-float/2addr p0, p1

    .line 109
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    cmpl-float v0, p0, v5

    if-lez v0, :cond_1

    const-string v0, "%.0fMB"

    goto :goto_0

    :cond_1
    const-string v0, "%.1fMB"

    :goto_0
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide/16 v0, 0x400

    cmp-long v2, p0, v0

    if-ltz v2, :cond_4

    long-to-float p0, p0

    long-to-float p1, v0

    div-float/2addr p0, p1

    .line 112
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    cmpl-float v0, p0, v5

    if-lez v0, :cond_3

    const-string v0, "%.0fKB"

    goto :goto_1

    :cond_3
    const-string v0, "%.1fKB"

    :goto_1
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 114
    :cond_4
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, "%dB"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, "com.android.internal.os.PowerProfile"

    .line 115
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 116
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 118
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "getBatteryCapacity"

    :try_start_1
    new-array v2, v5, [Ljava/lang/Class;

    .line 119
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    .line 120
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    .line 121
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v0, 0x0

    .line 127
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler$Callback;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "content://com.transsion.dataservice.provider/property"

    .line 2
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const-string v4, "prop_key = ?"

    :try_start_1
    const-string p0, "oneid"

    .line 3
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 6
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p0

    .line 17
    :cond_0
    :try_start_2
    new-instance v1, Lcom/transsion/sdk/oneid/c;

    invoke-direct {v1, p0, p1}, Lcom/transsion/sdk/oneid/c;-><init>(Landroid/content/Context;Landroid/os/Handler$Callback;)V

    .line 18
    invoke-virtual {v1}, Lcom/transsion/sdk/oneid/c;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    .line 24
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string p0, ""

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 25
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v0, :cond_3

    .line 28
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 30
    :cond_3
    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 63
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v0, "android.os.SystemProperties"

    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 69
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "get"

    .line 70
    invoke-virtual {p0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 73
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v3

    .line 74
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, ""

    :goto_0
    return-object p0

    :catch_1
    move-exception p0

    .line 76
    throw p0
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p0, 0x400

    :try_start_1
    new-array p0, p0, [B

    .line 33
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 35
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v1}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 37
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catchall_0
    move-exception p0

    .line 38
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 44
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    .line 46
    throw p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "SHA-256"

    .line 47
    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 49
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 52
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 53
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/16 v4, 0x30

    .line 55
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 62
    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/transsion/sdk/oneid/data/IdChangeInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 128
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-string v8, "oaid"

    const-string v9, "opid"

    if-eqz v7, :cond_9

    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/sdk/oneid/data/IdChangeInfo;

    .line 129
    iget-object v10, v7, Lcom/transsion/sdk/oneid/data/IdChangeInfo;->id_type:Ljava/lang/String;

    const/4 v11, -0x1

    .line 130
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    const v13, 0x33ee6d

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v2, 0x1

    if-eq v12, v13, :cond_3

    const v8, 0x3426bc

    if-eq v12, v8, :cond_2

    const v8, 0x3677da

    if-eq v12, v8, :cond_1

    const v8, 0x371d06

    if-eq v12, v8, :cond_0

    goto :goto_1

    :cond_0
    const-string v8, "vaid"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v11, v15

    goto :goto_1

    :cond_1
    const-string v8, "tsid"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v11, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v11, v14

    goto :goto_1

    :cond_3
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v11, v2

    :cond_4
    :goto_1
    if-eqz v11, :cond_8

    if-eq v11, v2, :cond_7

    if-eq v11, v15, :cond_6

    if-eq v11, v14, :cond_5

    goto :goto_0

    .line 134
    :cond_5
    iget-object v6, v7, Lcom/transsion/sdk/oneid/data/IdChangeInfo;->new_id:Ljava/lang/String;

    goto :goto_0

    .line 135
    :cond_6
    iget-object v5, v7, Lcom/transsion/sdk/oneid/data/IdChangeInfo;->new_id:Ljava/lang/String;

    goto :goto_0

    .line 136
    :cond_7
    iget-object v4, v7, Lcom/transsion/sdk/oneid/data/IdChangeInfo;->new_id:Ljava/lang/String;

    goto :goto_0

    .line 137
    :cond_8
    iget-object v3, v7, Lcom/transsion/sdk/oneid/data/IdChangeInfo;->new_id:Ljava/lang/String;

    goto :goto_0

    .line 144
    :cond_9
    invoke-static/range {p0 .. p0}, Loneid/b;->a(Landroid/content/Context;)Loneid/b;

    move-result-object v1

    .line 145
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    const-string v7, "oneid"

    .line 148
    invoke-virtual {v1, v7, v3}, Loneid/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "oneid_time"

    .line 149
    invoke-virtual {v1, v3, v2}, Loneid/b;->a(Ljava/lang/String;I)V

    .line 150
    sget-object v2, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v3, "sync tsid success"

    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 156
    :catch_0
    :cond_a
    :try_start_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-nez v2, :cond_b

    .line 158
    :try_start_4
    invoke-virtual {v1, v8, v4}, Loneid/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    sget-object v1, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v2, "sync oaid success"

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 165
    :catch_1
    :cond_b
    :try_start_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 167
    :cond_c
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/transsion/sdk/oneid/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 169
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 171
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_14

    .line 173
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 174
    invoke-static {v1}, Lcom/transsion/sdk/oneid/d;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 175
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_f

    .line 176
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_2

    .line 179
    :cond_d
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 182
    :cond_e
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 183
    sget-object v2, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v3, "createNewFile success"

    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    :cond_f
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_10

    .line 188
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :cond_10
    const-string v3, ""

    .line 191
    invoke-virtual {v2, v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 193
    invoke-virtual {v2, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    sget-object v3, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v4, "sync opid success"

    invoke-virtual {v3, v4}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    goto :goto_3

    .line 195
    :cond_11
    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 196
    invoke-static/range {p0 .. p0}, Loneid/b;->a(Landroid/content/Context;)Loneid/b;

    move-result-object v4

    invoke-virtual {v4, v9, v3}, Loneid/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    sget-object v3, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v4, "cover opid success"

    invoke-virtual {v3, v4}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 200
    :cond_12
    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 201
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    sget-object v0, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v3, "sync vaid success"

    invoke-virtual {v0, v3}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 205
    :cond_13
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 206
    :try_start_6
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 207
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 208
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 209
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    .line 211
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_b
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    :catch_2
    move-exception v0

    .line 213
    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    :catch_3
    move-exception v0

    .line 214
    sget-object v1, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :cond_14
    :goto_5
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 11

    .line 13
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    .line 14
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    move-wide v4, v2

    move-wide v6, v4

    :cond_0
    :goto_0
    mul-long v8, v4, v6

    cmp-long v10, v8, v0

    if-gez v10, :cond_1

    const/4 v8, 0x1

    shl-long/2addr v4, v8

    const-wide/16 v8, 0x200

    cmp-long v8, v4, v8

    if-lez v8, :cond_0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v6, v4

    move-wide v4, v2

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {v8, v9}, Lcom/transsion/sdk/oneid/d;->a(J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "0"

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 19
    :try_start_0
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 35
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x40

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 3
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 4
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_1

    .line 6
    array-length v0, p0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    .line 7
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    or-int/lit16 v2, v2, 0x100

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    const-string v1, "phone"

    .line 1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    .line 3
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    const-string v1, "phone"

    .line 1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    .line 3
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 6
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 7
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v4, "base.apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_3

    .line 14
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_2

    .line 18
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 21
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/sdk/oneid/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "activity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 2
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 6
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v0, v1}, Lcom/transsion/sdk/oneid/d;->a(J)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "0"

    return-object p0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, ""

    if-eqz p0, :cond_1

    .line 5
    new-instance v3, Lcom/transsion/sdk/oneid/d$a;

    invoke-direct {v3}, Lcom/transsion/sdk/oneid/d$a;-><init>()V

    invoke-static {p0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 12
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 13
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v5, "base.apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result p0

    if-lez p0, :cond_4

    .line 20
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 24
    :cond_2
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_2
    if-ge v0, v2, :cond_3

    .line 28
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 31
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/sdk/oneid/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v2
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x4

    .line 13
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    .line 14
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    :catch_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return v0
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.hoffnung"

    const-string v2, "com.transsion.dataservice.provider.DCSProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x80

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v0, "tran_dcs_version"

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "1.0.2.1"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

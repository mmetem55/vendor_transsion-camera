.class public Lcom/transsion/ga/e;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Ljava/lang/String; = null

.field private static b:Ljava/lang/String; = ""


# direct methods
.method public static a()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 1
    sget-object v1, Lcom/transsion/ga/e;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    sget-object v0, Lcom/transsion/ga/e;->a:Ljava/lang/String;

    return-object v0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/transsion/core/utils/EncoderUtil;->EncoderByAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    sput-object v1, Lcom/transsion/ga/e;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_2
    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 7

    .line 10
    :try_start_0
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "getImei"

    const/4 v3, 0x1

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "getDeviceId"

    :try_start_2
    new-array v4, v3, [Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 19
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 20
    invoke-static {v1}, Lcom/transsion/core/utils/EncoderUtil;->EncoderByAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lathena/s;",
            ">;"
        }
    .end annotation

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 25
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 28
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 31
    :goto_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_c

    const/4 v4, 0x0

    .line 35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CellInfo;

    .line 36
    instance-of v6, v5, Landroid/telephony/CellInfoGsm;

    const/16 v7, 0x63

    const v8, 0x7fffffff

    if-eqz v6, :cond_4

    .line 37
    move-object v6, v5

    check-cast v6, Landroid/telephony/CellInfoGsm;

    .line 38
    invoke-virtual {v6}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v9

    .line 39
    invoke-virtual {v6}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellSignalStrengthGsm;->getAsuLevel()I

    move-result v15

    .line 40
    invoke-virtual {v9}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v6

    if-lez v6, :cond_a

    invoke-virtual {v9}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v6

    if-lez v6, :cond_a

    if-eq v15, v7, :cond_a

    .line 41
    invoke-virtual {v9}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v4

    if-eq v4, v8, :cond_3

    invoke-virtual {v9}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v4

    if-ne v4, v8, :cond_2

    goto :goto_1

    .line 45
    :cond_2
    new-instance v4, Lathena/s;

    invoke-virtual {v9}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v6

    invoke-static {v6}, Lathena/k0;->a(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v6

    invoke-static {v6}, Lathena/k0;->a(I)Ljava/lang/String;

    move-result-object v12

    .line 46
    invoke-virtual {v9}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v13

    invoke-virtual {v9}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v14

    invoke-virtual {v5}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v16

    move-object v10, v4

    invoke-direct/range {v10 .. v16}, Lathena/s;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    goto/16 :goto_4

    .line 47
    :cond_3
    :goto_1
    new-instance v11, Lathena/s;

    .line 48
    invoke-virtual {v9}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v7

    invoke-virtual {v9}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v8

    invoke-virtual {v5}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v10

    move-object v4, v11

    move-object v5, v3

    move-object v6, v1

    move v9, v15

    invoke-direct/range {v4 .. v10}, Lathena/s;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    goto/16 :goto_4

    .line 54
    :cond_4
    instance-of v6, v5, Landroid/telephony/CellInfoWcdma;

    if-eqz v6, :cond_7

    .line 55
    move-object v6, v5

    check-cast v6, Landroid/telephony/CellInfoWcdma;

    .line 56
    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v9

    .line 57
    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuLevel()I

    move-result v15

    .line 58
    invoke-virtual {v9}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v6

    if-lez v6, :cond_a

    invoke-virtual {v9}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v6

    if-lez v6, :cond_a

    if-eq v15, v7, :cond_a

    .line 59
    invoke-virtual {v9}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v4

    if-eq v4, v8, :cond_6

    invoke-virtual {v9}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v4

    if-ne v4, v8, :cond_5

    goto :goto_2

    .line 63
    :cond_5
    new-instance v4, Lathena/s;

    invoke-virtual {v9}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v6

    invoke-static {v6}, Lathena/k0;->a(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v6

    invoke-static {v6}, Lathena/k0;->a(I)Ljava/lang/String;

    move-result-object v12

    .line 64
    invoke-virtual {v9}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v13

    invoke-virtual {v9}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v14

    invoke-virtual {v5}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v16

    move-object v10, v4

    invoke-direct/range {v10 .. v16}, Lathena/s;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    goto/16 :goto_4

    .line 65
    :cond_6
    :goto_2
    new-instance v11, Lathena/s;

    .line 66
    invoke-virtual {v9}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v7

    invoke-virtual {v9}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v8

    invoke-virtual {v5}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v10

    move-object v4, v11

    move-object v5, v3

    move-object v6, v1

    move v9, v15

    invoke-direct/range {v4 .. v10}, Lathena/s;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    goto :goto_4

    .line 72
    :cond_7
    instance-of v6, v5, Landroid/telephony/CellInfoLte;

    if-eqz v6, :cond_a

    .line 73
    move-object v6, v5

    check-cast v6, Landroid/telephony/CellInfoLte;

    .line 74
    invoke-virtual {v6}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v9

    .line 75
    invoke-virtual {v6}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellSignalStrengthLte;->getAsuLevel()I

    move-result v15

    .line 76
    invoke-virtual {v9}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v6

    if-lez v6, :cond_a

    invoke-virtual {v9}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v6

    if-lez v6, :cond_a

    if-eq v15, v7, :cond_a

    .line 77
    invoke-virtual {v9}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v4

    if-eq v4, v8, :cond_9

    invoke-virtual {v9}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v4

    if-ne v4, v8, :cond_8

    goto :goto_3

    .line 81
    :cond_8
    new-instance v4, Lathena/s;

    invoke-virtual {v9}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v6

    invoke-static {v6}, Lathena/k0;->a(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v6

    invoke-static {v6}, Lathena/k0;->a(I)Ljava/lang/String;

    move-result-object v12

    .line 82
    invoke-virtual {v9}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v13

    invoke-virtual {v9}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v14

    invoke-virtual {v5}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v16

    move-object v10, v4

    invoke-direct/range {v10 .. v16}, Lathena/s;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    goto :goto_4

    .line 83
    :cond_9
    :goto_3
    new-instance v11, Lathena/s;

    .line 84
    invoke-virtual {v9}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v7

    invoke-virtual {v9}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v8

    invoke-virtual {v5}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v10

    move-object v4, v11

    move-object v5, v3

    move-object v6, v1

    move v9, v15

    invoke-direct/range {v4 .. v10}, Lathena/s;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    :cond_a
    :goto_4
    if-eqz v4, :cond_b

    .line 92
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 93
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    .line 100
    :cond_c
    new-instance v0, Lcom/transsion/ga/e$a;

    invoke-direct {v0}, Lcom/transsion/ga/e$a;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v2
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .line 42
    :try_start_0
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/transsion/core/utils/AppUtil;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 7

    .line 32
    :try_start_0
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "getSubscriberId"

    const/4 v3, 0x1

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 37
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-static {p0}, Lcom/transsion/core/utils/EncoderUtil;->EncoderByAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 2
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "android.app.ActivityThread"

    const/4 v1, 0x0

    .line 9
    :try_start_0
    const-class v2, Landroid/app/Application;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "currentProcessName"

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    .line 10
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    return-object v0

    :catchall_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :try_start_2
    const-string v0, "activity"

    .line 21
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 22
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 24
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 25
    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 26
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-object v1
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/transsion/core/deviceinfo/DeviceInfo;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/transsion/core/deviceinfo/DeviceInfo;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 8

    const-string v0, ""

    .line 1
    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/transsion/ga/e;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    .line 3
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "get"

    const/4 v4, 0x2

    :try_start_1
    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v7, 0x1

    aput-object v1, v5, v7

    .line 4
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "ro.tranos.version"

    aput-object v3, v2, v6

    aput-object v0, v2, v7

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/transsion/ga/e;->b:Ljava/lang/String;

    .line 6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v2, v4, [Ljava/lang/Object;

    const-string v4, "ro.os_product.version"

    aput-object v4, v2, v6

    aput-object v0, v2, v7

    .line 7
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/transsion/ga/e;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 13
    :catch_0
    :cond_0
    sget-object v0, Lcom/transsion/ga/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 8

    const-string v0, ""

    .line 3
    :try_start_0
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 11
    :goto_0
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "unknown"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "android.os.SystemProperties"

    .line 12
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v3, "get"

    const/4 v4, 0x1

    :try_start_2
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ro.serialno"

    aput-object v5, v4, v7

    .line 14
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v2

    .line 19
    :catch_1
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/transsion/core/utils/EncoderUtil;->EncoderByAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.class public Lcom/transsion/sdk/oneid/data/FingerprintInfo;
.super Lcom/transsion/sdk/oneid/data/OneBaseInfo;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bluetooth_mac:Ljava/lang/String;

.field public gms_lctn:Ljava/lang/String;

.field public gsf:Ljava/lang/String;

.field public hdid:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public sn:Ljava/lang/String;

.field public sys_app_hash_id:Ljava/lang/String;

.field public usr_app_hash_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds",
            "MissingPermission"
        }
    .end annotation

    const-string v0, "phone"

    .line 1
    invoke-direct {p0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;-><init>()V

    const-string v1, ""

    .line 2
    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->sn:Ljava/lang/String;

    .line 3
    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->gsf:Ljava/lang/String;

    .line 4
    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->usr_app_hash_id:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->sys_app_hash_id:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->gms_lctn:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->bluetooth_mac:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->hdid:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->imsi:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->imei:Ljava/lang/String;

    .line 17
    :try_start_0
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->sn:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 19
    :catch_0
    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->sn:Ljava/lang/String;

    .line 25
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->sn:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_0

    const-string v2, "unknown"

    :try_start_2
    iget-object v3, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->sn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "ro.serialno"

    .line 26
    invoke-static {p1, v2}, Lcom/transsion/sdk/oneid/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->sn:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 31
    :catch_1
    :cond_1
    iget-object v2, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->sn:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 32
    iget-object v2, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->sn:Ljava/lang/String;

    invoke-static {v2}, Lcom/transsion/sdk/oneid/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->sn:Ljava/lang/String;

    :cond_2
    const/4 v2, 0x1

    :try_start_3
    const-string v3, "content://com.google.android.gsf.gservices"

    .line 36
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, "android_id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 40
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 41
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->gsf:Ljava/lang/String;

    goto :goto_1

    .line 43
    :cond_3
    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->gsf:Ljava/lang/String;

    :goto_1
    if-eqz v3, :cond_4

    .line 46
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 52
    :catch_2
    :cond_4
    invoke-static {p1}, Lcom/transsion/sdk/oneid/d;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->usr_app_hash_id:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/transsion/sdk/oneid/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->sys_app_hash_id:Ljava/lang/String;

    const/4 v3, 0x0

    .line 56
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.google.android.gms"

    .line 58
    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 60
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v4}, Lcom/transsion/sdk/oneid/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->gms_lctn:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 67
    :catch_3
    :cond_5
    :try_start_5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 69
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v4

    .line 70
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_6

    .line 71
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 72
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 73
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 76
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 77
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 78
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/transsion/sdk/oneid/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->bluetooth_mac:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    .line 83
    :catch_4
    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->bluetooth_mac:Ljava/lang/String;

    .line 86
    :cond_7
    :goto_3
    invoke-static {}, Lcom/transsion/sdk/oneid/d;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->hdid:Ljava/lang/String;

    .line 93
    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 94
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    const-string v5, "getSubscriberId"

    :try_start_7
    new-array v6, v2, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 96
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 97
    invoke-static {v1}, Lcom/transsion/sdk/oneid/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->imsi:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 107
    :catch_5
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    const-string v1, "getImei"

    :try_start_9
    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v3

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 109
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    const-string v1, "getDeviceId"

    :try_start_a
    new-array v4, v2, [Ljava/lang/Class;

    aput-object v5, v4, v3

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 112
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 114
    :cond_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 115
    invoke-static {v0}, Lcom/transsion/sdk/oneid/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/FingerprintInfo;->imei:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :catch_6
    :cond_a
    return-void
.end method

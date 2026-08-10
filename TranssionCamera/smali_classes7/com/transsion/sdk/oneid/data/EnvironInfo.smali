.class public Lcom/transsion/sdk/oneid/data/EnvironInfo;
.super Lcom/transsion/sdk/oneid/data/OneBaseInfo;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public device_name:Ljava/lang/String;

.field public dhcp:Ljava/lang/String;

.field public ipaddrv4:Ljava/lang/String;

.field public lang:Ljava/lang/String;

.field public mcc:Ljava/lang/String;

.field public mnc:Ljava/lang/String;

.field public tz:Ljava/lang/String;

.field public wifi_ap_mac:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const-string v0, "GMT+00:00"

    const-string v1, "wlan0"

    .line 1
    invoke-direct {p0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;-><init>()V

    const-string v2, ""

    .line 2
    iput-object v2, p0, Lcom/transsion/sdk/oneid/data/EnvironInfo;->ipaddrv4:Ljava/lang/String;

    .line 4
    iput-object v2, p0, Lcom/transsion/sdk/oneid/data/EnvironInfo;->dhcp:Ljava/lang/String;

    .line 5
    iput-object v2, p0, Lcom/transsion/sdk/oneid/data/EnvironInfo;->wifi_ap_mac:Ljava/lang/String;

    .line 6
    iput-object v2, p0, Lcom/transsion/sdk/oneid/data/EnvironInfo;->mcc:Ljava/lang/String;

    .line 7
    iput-object v2, p0, Lcom/transsion/sdk/oneid/data/EnvironInfo;->mnc:Ljava/lang/String;

    .line 8
    iput-object v2, p0, Lcom/transsion/sdk/oneid/data/EnvironInfo;->tz:Ljava/lang/String;

    .line 9
    iput-object v2, p0, Lcom/transsion/sdk/oneid/data/EnvironInfo;->lang:Ljava/lang/String;

    .line 10
    iput-object v2, p0, Lcom/transsion/sdk/oneid/data/EnvironInfo;->device_name:Ljava/lang/String;

    .line 17
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 18
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 19
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 21
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 22
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 23
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    instance-of v5, v4, Ljava/net/Inet4Address;

    if-eqz v5, :cond_1

    .line 24
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/sdk/oneid/data/EnvironInfo;->ipaddrv4:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 41
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 42
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 44
    iget v4, v4, Landroid/net/DhcpInfo;->serverAddress:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v5, "%d.%d.%d.%d"

    const/4 v6, 0x4

    :try_start_2
    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v7, v4, 0xff

    .line 46
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    shr-int/lit8 v7, v4, 0x8

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x2

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    .line 47
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/sdk/oneid/data/EnvironInfo;->dhcp:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 56
    :catch_1
    :cond_3
    :try_start_3
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 57
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 58
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 59
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    if-eqz v1, :cond_6

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    array-length v5, v1

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_5

    aget-byte v7, v1, v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const-string v8, "%02X:"

    :try_start_4
    new-array v9, v2, [Ljava/lang/Object;

    .line 63
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v9, v3

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 65
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/sdk/oneid/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/EnvironInfo;->wifi_ap_mac:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 77
    :catch_2
    :cond_6
    invoke-static {p1}, Lcom/transsion/sdk/oneid/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/EnvironInfo;->mcc:Ljava/lang/String;

    .line 78
    invoke-static {p1}, Lcom/transsion/sdk/oneid/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/EnvironInfo;->mnc:Ljava/lang/String;

    .line 80
    :try_start_5
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/sdk/oneid/data/EnvironInfo;->tz:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 82
    :catch_3
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/EnvironInfo;->tz:Ljava/lang/String;

    .line 84
    :goto_2
    iget-object v1, p0, Lcom/transsion/sdk/oneid/data/EnvironInfo;->tz:Ljava/lang/String;

    const-string v2, "GMT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 85
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/EnvironInfo;->tz:Ljava/lang/String;

    .line 87
    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/EnvironInfo;->lang:Ljava/lang/String;

    .line 90
    :try_start_6
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/EnvironInfo;->device_name:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    :goto_3
    iget-object v0, p0, Lcom/transsion/sdk/oneid/data/EnvironInfo;->device_name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 97
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "device_name"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/EnvironInfo;->device_name:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    :cond_8
    return-void
.end method

.class public Lcom/meicam/sdk/NvsStatisticsInfo;
.super Ljava/lang/Object;
.source "NvsStatisticsInfo.java"


# static fields
.field private static NV_OS_TYPE_ANDROID:I = 0x1


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/meicam/sdk/NvsStatisticsInfo;->context:Landroid/content/Context;

    return-void
.end method

.method private static toMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "MD5"

    .line 81
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 85
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 86
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/meicam/sdk/NvsStatisticsInfo;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .line 35
    iget-object p0, p0, Lcom/meicam/sdk/NvsStatisticsInfo;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 36
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 46
    :try_start_0
    invoke-static {p0}, Lcom/meicam/sdk/NvsStatisticsInfo;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-object p0
.end method

.method public getLngAndLat()Ljava/util/ArrayList;
    .locals 2

    .line 74
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v0, 0x0

    .line 75
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getModel()Ljava/lang/String;
    .locals 0

    .line 54
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object p0
.end method

.method public getOsType()I
    .locals 0

    .line 58
    sget p0, Lcom/meicam/sdk/NvsStatisticsInfo;->NV_OS_TYPE_ANDROID:I

    return p0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 0

    .line 62
    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object p0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 3

    .line 29
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 31
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/meicam/sdk/NvsStatisticsInfo;->context:Landroid/content/Context;

    return-void
.end method

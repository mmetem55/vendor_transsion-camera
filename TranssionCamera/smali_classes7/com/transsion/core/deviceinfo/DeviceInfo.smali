.class public Lcom/transsion/core/deviceinfo/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation


# static fields
.field private static mGAId:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/transsion/core/deviceinfo/DeviceInfo;->mGAId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    sput-object p0, Lcom/transsion/core/deviceinfo/DeviceInfo;->mGAId:Ljava/lang/String;

    return-object p0
.end method

.method public static getGAId()Ljava/lang/String;
    .locals 2

    .line 122
    sget-object v0, Lcom/transsion/core/deviceinfo/DeviceInfo;->mGAId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/transsion/core/deviceinfo/DeviceInfo$1;

    invoke-direct {v1}, Lcom/transsion/core/deviceinfo/DeviceInfo$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 134
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 136
    :cond_1
    sget-object v0, Lcom/transsion/core/deviceinfo/DeviceInfo;->mGAId:Ljava/lang/String;

    return-object v0
.end method

.method public static getGAIdInThread()Ljava/lang/String;
    .locals 2

    .line 150
    invoke-static {}, Lcom/transsion/core/deviceinfo/DeviceInfo;->isCurrentMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Lcom/transsion/core/deviceinfo/DeviceInfo;->getGAId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 154
    :cond_0
    sget-object v0, Lcom/transsion/core/deviceinfo/DeviceInfo;->mGAId:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    sget-object v0, Lcom/transsion/core/deviceinfo/DeviceInfo;->mGAId:Ljava/lang/String;

    return-object v0

    .line 160
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/core/deviceinfo/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/transsion/core/deviceinfo/AdvertisingIdClient$AdInfo;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/transsion/core/deviceinfo/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/core/deviceinfo/DeviceInfo;->mGAId:Ljava/lang/String;

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "advertisingId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/core/deviceinfo/DeviceInfo;->mGAId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/core/log/LogUtils;->i(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    :goto_0
    sget-object v0, Lcom/transsion/core/deviceinfo/DeviceInfo;->mGAId:Ljava/lang/String;

    return-object v0
.end method

.method public static getSimOperator()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 215
    :try_start_0
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    .line 216
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    return-object v0

    .line 220
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private static isCurrentMainThread()Z
    .locals 2

    .line 141
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

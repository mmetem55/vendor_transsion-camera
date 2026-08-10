.class final Lcom/transsion/core/deviceinfo/DeviceInfo$1;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/core/deviceinfo/DeviceInfo;->getGAId()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 127
    :try_start_0
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/core/deviceinfo/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/transsion/core/deviceinfo/AdvertisingIdClient$AdInfo;

    move-result-object p0

    .line 128
    invoke-virtual {p0}, Lcom/transsion/core/deviceinfo/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/core/deviceinfo/DeviceInfo;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "advertisingId is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/core/deviceinfo/DeviceInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/core/log/LogUtils;->i(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

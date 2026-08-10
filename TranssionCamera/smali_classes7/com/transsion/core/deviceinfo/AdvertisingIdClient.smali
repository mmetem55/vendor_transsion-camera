.class Lcom/transsion/core/deviceinfo/AdvertisingIdClient;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/core/deviceinfo/AdvertisingIdClient$AdvertisingInterface;,
        Lcom/transsion/core/deviceinfo/AdvertisingIdClient$AdvertisingConnection;,
        Lcom/transsion/core/deviceinfo/AdvertisingIdClient$AdInfo;
    }
.end annotation


# direct methods
.method static getAdvertisingIdInfo(Landroid/content/Context;)Lcom/transsion/core/deviceinfo/AdvertisingIdClient$AdInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 51
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    new-instance v0, Lcom/transsion/core/deviceinfo/AdvertisingIdClient$AdvertisingConnection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/core/deviceinfo/AdvertisingIdClient$AdvertisingConnection;-><init>(Lcom/transsion/core/deviceinfo/AdvertisingIdClient$1;)V

    .line 58
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    .line 60
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 61
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    :try_start_1
    new-instance v1, Lcom/transsion/core/deviceinfo/AdvertisingIdClient$AdvertisingInterface;

    .line 64
    invoke-virtual {v0}, Lcom/transsion/core/deviceinfo/AdvertisingIdClient$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/transsion/core/deviceinfo/AdvertisingIdClient$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 65
    new-instance v3, Lcom/transsion/core/deviceinfo/AdvertisingIdClient$AdInfo;

    invoke-virtual {v1}, Lcom/transsion/core/deviceinfo/AdvertisingIdClient$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v4

    .line 66
    invoke-virtual {v1, v2}, Lcom/transsion/core/deviceinfo/AdvertisingIdClient$AdvertisingInterface;->isLimitAdTrackingEnabled(Z)Z

    move-result v1

    invoke-direct {v3, v4, v1}, Lcom/transsion/core/deviceinfo/AdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v3

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 69
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 72
    throw v1

    .line 74
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Google Play connection failed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    .line 54
    throw p0

    .line 47
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot be called from the main thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

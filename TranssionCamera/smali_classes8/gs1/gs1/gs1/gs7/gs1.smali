.class public Lgs1/gs1/gs1/gs7/gs1;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgs1/gs1/gs1/gs7/gs1$gs4;,
        Lgs1/gs1/gs1/gs7/gs1$gs3;,
        Lgs1/gs1/gs1/gs7/gs1$gs2;
    }
.end annotation


# direct methods
.method public static gs1(Landroid/content/Context;)Lgs1/gs1/gs1/gs7/gs1$gs2;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    new-instance v0, Lgs1/gs1/gs1/gs7/gs1$gs3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgs1/gs1/gs1/gs7/gs1$gs3;-><init>(Lgs1/gs1/gs1/gs7/gs1$gs1;)V

    .line 13
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 16
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    :try_start_1
    invoke-virtual {v0}, Lgs1/gs1/gs1/gs7/gs1$gs3;->gs1()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 20
    new-instance v3, Lgs1/gs1/gs1/gs7/gs1$gs4;

    invoke-direct {v3, v1}, Lgs1/gs1/gs1/gs7/gs1$gs4;-><init>(Landroid/os/IBinder;)V

    .line 21
    new-instance v1, Lgs1/gs1/gs1/gs7/gs1$gs2;

    invoke-virtual {v3}, Lgs1/gs1/gs1/gs7/gs1$gs4;->gs1()Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-virtual {v3, v2}, Lgs1/gs1/gs1/gs7/gs1$gs4;->gs1(Z)Z

    move-result v2

    invoke-direct {v1, v4, v2}, Lgs1/gs1/gs1/gs7/gs1$gs2;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 29
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 32
    throw v1

    .line 34
    :cond_1
    :goto_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Google Play connection failed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    .line 35
    throw p0

    .line 36
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot be called from the main thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.class public Lcom/transsion/core/utils/Commutil;
.super Ljava/lang/Object;
.source "Commutil.java"


# direct methods
.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x1

    .line 35
    :try_start_0
    const-class v1, Landroid/os/Environment;

    const-string v2, "sUserRequired"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 37
    new-instance v2, Landroid/os/Environment;

    invoke-direct {v2}, Landroid/os/Environment;-><init>()V

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 46
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v1
.end method

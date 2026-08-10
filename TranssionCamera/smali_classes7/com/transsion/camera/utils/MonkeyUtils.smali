.class public Lcom/transsion/camera/utils/MonkeyUtils;
.super Ljava/lang/Object;
.source "MonkeyUtils.java"


# static fields
.field private static mSpecialMonkeySupported:Z


# direct methods
.method public static init(Landroid/content/Context;)V
    .locals 4

    .line 13
    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v0

    const-string p0, "persist.sys.special_functions_supported"

    const-string v2, "1"

    .line 14
    invoke-static {p0, v2}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 15
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p0, :cond_1

    const-wide/16 v2, 0xfa0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    .line 17
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->isLowMemory()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lcom/transsion/camera/utils/MonkeyUtils;->mSpecialMonkeySupported:Z

    return-void
.end method

.method public static isLowMemory()Z
    .locals 4

    .line 25
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailableMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static specialMonkeySupported()Z
    .locals 1

    .line 21
    sget-boolean v0, Lcom/transsion/camera/utils/MonkeyUtils;->mSpecialMonkeySupported:Z

    return v0
.end method

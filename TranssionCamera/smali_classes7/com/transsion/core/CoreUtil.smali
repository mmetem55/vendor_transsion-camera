.class public Lcom/transsion/core/CoreUtil;
.super Ljava/lang/Object;
.source "CoreUtil.java"


# static fields
.field private static context:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static isDebug:Z

.field private static logForceOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    .line 59
    sget-object v0, Lcom/transsion/core/CoreUtil;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "u should init first"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 36
    sget-object v0, Lcom/transsion/core/CoreUtil;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/transsion/core/CoreUtil;->context:Landroid/content/Context;

    .line 40
    invoke-static {}, Lcom/transsion/core/deviceinfo/DeviceInfo;->getGAId()Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/core/utils/SharedPreferencesUtil;->bindApplication(Landroid/content/Context;)V

    return-void
.end method

.method public static isLogForceOpen()Z
    .locals 1

    .line 85
    sget-boolean v0, Lcom/transsion/core/CoreUtil;->logForceOpen:Z

    return v0
.end method

.method public static setDebug(Z)V
    .locals 0

    .line 76
    sput-boolean p0, Lcom/transsion/core/CoreUtil;->isDebug:Z

    return-void
.end method

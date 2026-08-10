.class public Lcom/bytedance/labcv/core/util/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "bef_effect_ai"

.field private static isDebug:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 29
    sget-boolean v0, Lcom/bytedance/labcv/core/util/LogUtils;->isDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "bef_effect_ai"

    .line 30
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bef_effect_ai"

    .line 36
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .line 23
    sget-boolean v0, Lcom/bytedance/labcv/core/util/LogUtils;->isDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "bef_effect_ai"

    .line 24
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static syncIsDebug(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lcom/bytedance/labcv/core/util/LogUtils;->isDebug:Z

    .line 42
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isDebug ="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/bytedance/labcv/core/util/LogUtils;->isDebug:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "bef_effect_ai"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    .line 17
    sget-boolean v0, Lcom/bytedance/labcv/core/util/LogUtils;->isDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "bef_effect_ai"

    .line 18
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

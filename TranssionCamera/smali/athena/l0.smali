.class public Lathena/l0;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Ljava/lang/String; = ""

.field private static b:Z


# direct methods
.method public static a()Ljava/lang/String;
    .locals 2

    .line 5
    sget-object v0, Lathena/l0;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    sget-object v0, Lathena/l0;->a:Ljava/lang/String;

    return-object v0

    .line 8
    :cond_0
    invoke-static {}, Lcom/transsion/sdk/oneid/OneID;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "OneID isEnable = true"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 10
    sget-boolean v0, Lathena/l0;->b:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/sdk/oneid/OneID;->instance()Lcom/transsion/sdk/oneid/OneID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sdk/oneid/OneID;->getVAID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    sput-object v0, Lathena/l0;->a:Ljava/lang/String;

    .line 12
    :cond_2
    sget-object v0, Lathena/l0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/transsion/sdk/oneid/OneID;->init(Landroid/content/Context;I)V

    const/4 p0, 0x1

    .line 2
    sput-boolean p0, Lathena/l0;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    sget-object p1, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

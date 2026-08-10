.class public Lcom/transsion/infra/gateway/core/utils/ContextUtils;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# static fields
.field private static context:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public static getContext()Landroid/content/Context;
    .locals 2

    .line 20
    sget-object v0, Lcom/transsion/infra/gateway/core/utils/ContextUtils;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "u should init first"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/transsion/infra/gateway/core/utils/ContextUtils;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/transsion/infra/gateway/core/utils/ContextUtils;->context:Landroid/content/Context;

    return-void
.end method

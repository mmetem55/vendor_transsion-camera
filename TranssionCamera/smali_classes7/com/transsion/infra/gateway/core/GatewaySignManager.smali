.class public Lcom/transsion/infra/gateway/core/GatewaySignManager;
.super Ljava/lang/Object;
.source "GatewaySignManager.java"


# direct methods
.method public static doSign(Lcom/transsion/infra/gateway/core/bean/RequestBean;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestBean"
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/transsion/infra/gateway/core/utils/GatewayCoreUtils;->L:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestBean"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 26
    invoke-static {p0}, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;->doSign(Lcom/transsion/infra/gateway/core/bean/RequestBean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 21
    invoke-static {p0}, Lcom/transsion/infra/gateway/core/utils/ContextUtils;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static needRetryForTimeIssue(ILjava/lang/String;Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "response",
            "key"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0xc8

    if-eq p0, v1, :cond_1

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    :try_start_0
    sget-object p0, Lcom/transsion/infra/gateway/core/utils/GatewayCoreUtils;->L:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 36
    const-class p0, Lcom/transsion/infra/gateway/core/bean/GatewayResponse;

    invoke-static {p1, p0}, Lcom/transsion/json/Tson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/infra/gateway/core/bean/GatewayResponse;

    const-string p1, "GW.4410"

    .line 38
    iget-object v1, p0, Lcom/transsion/infra/gateway/core/bean/GatewayResponse;->errorCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 39
    sget-object p1, Lcom/transsion/infra/gateway/core/utils/GatewayCoreUtils;->L:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    const-string v1, "verify sign failed, retrying update time"

    invoke-virtual {p1, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 40
    iget-object p0, p0, Lcom/transsion/infra/gateway/core/bean/GatewayResponse;->errorMsg:Ljava/lang/String;

    .line 42
    invoke-virtual {p2}, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/infra/gateway/core/sercurity/Crypto;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class p1, Lcom/transsion/infra/gateway/core/bean/TimeBean;

    invoke-static {p0, p1}, Lcom/transsion/json/Tson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/infra/gateway/core/bean/TimeBean;

    .line 43
    iget-wide p1, p0, Lcom/transsion/infra/gateway/core/bean/TimeBean;->time:J

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-lez p1, :cond_1

    .line 44
    invoke-static {}, Lcom/transsion/infra/gateway/core/utils/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;

    move-result-object p1

    const-string p2, "time_offset"

    iget-wide v1, p0, Lcom/transsion/infra/gateway/core/bean/TimeBean;->time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {p1, p2, v1, v2}, Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;->saveLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 50
    sget-object p1, Lcom/transsion/infra/gateway/core/utils/GatewayCoreUtils;->L:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    invoke-virtual {p1, p0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return v0
.end method

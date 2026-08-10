.class public Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;
.super Ljava/lang/Object;
.source "HttpSigner.java"


# instance fields
.field private final signer:Lcom/transsion/infra/gateway/core/sercurity/Signer;


# direct methods
.method public constructor <init>(Lcom/transsion/infra/gateway/core/sercurity/Signer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signer"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;->signer:Lcom/transsion/infra/gateway/core/sercurity/Signer;

    return-void
.end method

.method private buildPathAndParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 182
    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;->splitQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 184
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "?"

    .line 185
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 174
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static doSign(Lcom/transsion/infra/gateway/core/bean/RequestBean;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestBean"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 37
    sget-object p0, Lcom/transsion/infra/gateway/core/utils/GatewayCoreUtils;->L:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    const-string v1, "request bean is null"

    invoke-virtual {p0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    return-object v0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getMethod()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 42
    sget-object p0, Lcom/transsion/infra/gateway/core/utils/GatewayCoreUtils;->L:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    const-string v1, "request method is null"

    invoke-virtual {p0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    return-object v0

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    sget-object p0, Lcom/transsion/infra/gateway/core/utils/GatewayCoreUtils;->L:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    const-string v1, "request url is null"

    invoke-virtual {p0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    return-object v0

    .line 51
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getKey()Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;

    move-result-object v1

    const-string v2, "request key is null"

    if-nez v1, :cond_3

    .line 52
    sget-object p0, Lcom/transsion/infra/gateway/core/utils/GatewayCoreUtils;->L:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    invoke-virtual {p0, v2}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    return-object v0

    .line 56
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getKey()Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 57
    sget-object p0, Lcom/transsion/infra/gateway/core/utils/GatewayCoreUtils;->L:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    invoke-virtual {p0, v2}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    return-object v0

    .line 63
    :cond_4
    invoke-static {}, Lcom/transsion/infra/gateway/core/utils/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;

    move-result-object v0

    const-string v1, "time_offset"

    invoke-virtual {v0, v1}, Lcom/transsion/infra/gateway/core/utils/SafeStringUtils;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 65
    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getKey()Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/transsion/infra/gateway/core/sercurity/BasicSigner;

    invoke-direct {v1, v0}, Lcom/transsion/infra/gateway/core/sercurity/BasicSigner;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance v4, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;

    invoke-direct {v4, v1}, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;-><init>(Lcom/transsion/infra/gateway/core/sercurity/Signer;)V

    .line 68
    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getAccept()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getKey()Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->getAlgorithm()Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;

    move-result-object v12

    move-wide v10, v2

    invoke-virtual/range {v4 .. v12}, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;->sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;)Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getKey()Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->getKeyVersion()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 70
    sget-object v0, Lcom/transsion/infra/gateway/core/utils/GatewayCoreUtils;->L:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x-tr-signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    return-object p0
.end method

.method private formatUrlMap(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paraMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 137
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 139
    new-instance p1, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner$1;

    invoke-direct {p1, p0}, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner$1;-><init>(Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 147
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v1, ""

    .line 149
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    .line 153
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 157
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 160
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private generateContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "accept",
            "contentType",
            "url",
            "body",
            "timeStamp"
        }
    .end annotation

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v2, 0x0

    const-string v4, ""

    if-nez v0, :cond_1

    .line 93
    :try_start_0
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    int-to-long v5, v0

    .line 94
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 95
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    const v7, 0x19000

    if-le v0, v7, :cond_0

    const/4 v0, 0x0

    move-object v8, p5

    .line 96
    invoke-virtual {p5, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/infra/gateway/core/utils/EncoderUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_0
    move-object v8, p5

    .line 98
    invoke-static {p5}, Lcom/transsion/infra/gateway/core/utils/EncoderUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-wide v5, v2

    .line 101
    :goto_0
    sget-object v7, Lcom/transsion/infra/gateway/core/utils/GatewayCoreUtils;->L:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateContent exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->e(Ljava/lang/Object;)V

    goto :goto_1

    .line 104
    :cond_1
    sget-object v0, Lcom/transsion/infra/gateway/core/utils/GatewayCoreUtils;->L:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    const-string v5, "request body is null"

    invoke-virtual {v0, v5}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    move-wide v5, v2

    :goto_1
    move-object v0, v4

    .line 108
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_2

    move-object v8, v4

    goto :goto_3

    :cond_2
    move-object v8, p2

    .line 109
    :goto_3
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_3

    move-object v8, v4

    goto :goto_4

    :cond_3
    move-object v8, p3

    .line 110
    :goto_4
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v2, v5, v2

    if-nez v2, :cond_4

    move-object v2, v4

    goto :goto_5

    .line 111
    :cond_4
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, p6

    .line 112
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_6

    :cond_5
    move-object v4, v0

    :goto_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p0

    move-object v3, p4

    .line 114
    invoke-direct {p0, p4}, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;->buildPathAndParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    sget-object v0, Lcom/transsion/infra/gateway/core/utils/GatewayCoreUtils;->L:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private splitQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "queryString"
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "&"

    .line 122
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 123
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, p1, v4

    const-string v6, "="

    .line 124
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 126
    :try_start_0
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 128
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 131
    :cond_0
    invoke-direct {p0, v1}, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;->formatUrlMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "accept",
            "contentType",
            "url",
            "body",
            "timeStamp",
            "algorithm"
        }
    .end annotation

    .line 79
    invoke-direct/range {p0 .. p7}, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;->generateContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 80
    iget-object p0, p0, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;->signer:Lcom/transsion/infra/gateway/core/sercurity/Signer;

    invoke-virtual {p0, p8, p1}, Lcom/transsion/infra/gateway/core/sercurity/Signer;->sign(Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

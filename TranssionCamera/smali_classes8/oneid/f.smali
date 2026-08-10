.class public Loneid/f;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# static fields
.field private static a:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\d+"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Loneid/f;->a:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Z)Loneid/j;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Loneid/j<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Post url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nBody : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Loneid/j;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Loneid/j;-><init>(ILjava/lang/Object;)V

    .line 14
    :try_start_0
    invoke-static {}, Loneid/c;->a()Ljava/lang/String;

    move-result-object v3

    .line 15
    new-instance v4, Loneid/d;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Loneid/d;-><init>([B)V

    .line 16
    invoke-virtual {v4, p1}, Loneid/d;->a(Ljava/lang/String;)[B

    move-result-object p1

    .line 18
    new-instance v4, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1Encrypter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v5, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAoj6/eaT17WcI4r6GJxLVIDfQkYLRLGWyObKO1kj1FS+7NvAIIhNxjNpplefKGWSLOyuKdkLlH53q+HQeyo3ngDf3IPp8evvBfWaoCk1H33q35hm+W+XKsL5bMbzZhJDVEqYpebXRqL6Cz+79xyWPEHbp1l2G5FKQ76/tKAqZ+7LNeEBhgoX1duXcAXrSR7dOP6loh2DUwagVta/o2poAVzxKQKDJeJs0+VV741yJSjjVMGWAl0enK4MA0lvtmin6LVQMgNuHL5UXmdrbsEcbiVvE7z9Ol6MGDRzxyUBufklb3Orr9tbLNydKJ0mrdHZMcg8yGpuJMMOOs+CBiqA+MQIDAQAB"

    :try_start_1
    invoke-direct {v4, v5}, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1Encrypter;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v4, v3}, Lcom/transsion/sdk/oneid/crypto/crypter/RsaEcsPKCS1Encrypter;->encrypt(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    :try_start_2
    instance-of v6, v5, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v6, :cond_1

    .line 27
    sget-object v6, Loneid/f;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v6, :cond_0

    .line 28
    invoke-static {}, Loneid/l;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 30
    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    sput-object v6, Loneid/f;->a:Ljavax/net/ssl/SSLSocketFactory;

    .line 34
    :cond_0
    sget-object v6, Loneid/f;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v6, :cond_1

    .line 35
    move-object v7, v5

    check-cast v7, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v7, v6}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 36
    move-object v6, v5

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v7, Loneid/l;->a:Loneid/l$b;

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    const-string v6, "POST"

    const-string v7, "application/json"

    const-string v8, "*/*"

    if-eqz p2, :cond_2

    .line 45
    :try_start_3
    new-instance p2, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;

    invoke-static {}, Loneid/m;->e()Loneid/m;

    move-result-object v9

    invoke-virtual {v9}, Loneid/m;->c()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;->HmacMD5:Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;

    invoke-direct {p2, v9, v4, v10}, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;-><init>(Ljava/lang/String;ILcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;)V

    .line 49
    new-instance v4, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;

    invoke-direct {v4}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;-><init>()V

    invoke-virtual {v4, v6}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->method(Ljava/lang/String;)Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;

    move-result-object v4

    .line 50
    invoke-virtual {v4, v8}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->accept(Ljava/lang/String;)Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;

    move-result-object v4

    .line 51
    invoke-virtual {v4, v7}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->contentType(Ljava/lang/String;)Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;

    move-result-object v4

    .line 52
    invoke-virtual {v4, p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->url(Ljava/lang/String;)Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;

    move-result-object p0

    .line 53
    invoke-virtual {p0, p2}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->key(Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;)Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;

    move-result-object p0

    .line 54
    invoke-virtual {p0, p1}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->body(Ljava/lang/String;)Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;

    move-result-object p0

    .line 55
    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->build()Lcom/transsion/infra/gateway/core/bean/RequestBean;

    move-result-object p0

    .line 56
    sget-object v4, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Gateway requestBean : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 58
    invoke-static {p0}, Lcom/transsion/infra/gateway/core/GatewaySignManager;->doSign(Lcom/transsion/infra/gateway/core/bean/RequestBean;)Ljava/lang/String;

    move-result-object p0

    .line 59
    sget-object v4, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Gateway sign : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    const-string v4, "x-tr-signature"

    .line 60
    invoke-virtual {v5, v4, p0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object p2, v2

    :goto_0
    const-string p0, "accept"

    .line 63
    invoke-virtual {v5, p0, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Content-Type"

    .line 64
    invoke-virtual {v5, p0, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string p0, "Content-Length"

    .line 65
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, p0, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 p0, 0x4e20

    .line 68
    invoke-virtual {v5, p0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 p0, 0x7530

    .line 69
    invoke-virtual {v5, p0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 p0, 0x1

    .line 72
    invoke-virtual {v5, p0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 74
    invoke-virtual {v5, p0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 76
    new-instance v4, Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 78
    invoke-virtual {v4, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 81
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 83
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 85
    sget-object v4, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " code:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    const/16 v3, 0xc8

    if-ne p1, v3, :cond_6

    .line 89
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 90
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    :goto_1
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "{}"

    .line 100
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 102
    new-instance v1, Loneid/j;

    invoke-direct {v1, p0, v2}, Loneid/j;-><init>(ILjava/lang/Object;)V

    goto :goto_2

    .line 103
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 105
    new-instance p0, Loneid/j;

    invoke-direct {p0, v1, v2}, Loneid/j;-><init>(ILjava/lang/Object;)V

    move-object v1, p0

    :goto_2
    move-object v0, v1

    goto :goto_3

    .line 116
    :cond_5
    new-instance p0, Loneid/j;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v3}, Loneid/j;-><init>(ILjava/lang/Object;)V

    move-object v0, p0

    .line 120
    :goto_3
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V

    .line 121
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_9

    :cond_6
    const-string p0, "429&503&504"

    .line 122
    :try_start_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 123
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    .line 124
    new-instance p1, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 126
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    :goto_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 129
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 131
    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 132
    new-instance p1, Loneid/j;

    const/4 p2, 0x4

    invoke-direct {p1, p2, p0}, Loneid/j;-><init>(ILjava/lang/Object;)V

    move-object v0, p1

    goto/16 :goto_9

    :cond_8
    const/16 p0, 0x190

    if-lt p1, p0, :cond_c

    if-eqz p2, :cond_c

    .line 134
    sget-object p0, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result from server : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 135
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    .line 136
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    :goto_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 145
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-static {p1, v2, p2}, Lcom/transsion/infra/gateway/core/GatewaySignManager;->needRetryForTimeIssue(ILjava/lang/String;Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 149
    new-instance p1, Loneid/j;

    const/4 p2, 0x3

    invoke-direct {p1, p2, v2}, Loneid/j;-><init>(ILjava/lang/Object;)V

    move-object v0, p1

    .line 151
    :cond_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 152
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_9

    :goto_6
    move-object v2, v5

    goto :goto_7

    :catchall_0
    move-exception p0

    move-object v2, v5

    goto :goto_a

    :catch_0
    move-exception p0

    goto :goto_6

    :catchall_1
    move-exception p0

    goto :goto_a

    :catch_1
    move-exception p0

    .line 163
    :goto_7
    :try_start_6
    instance-of p1, p0, Ljava/net/UnknownHostException;

    if-eqz p1, :cond_b

    .line 164
    sget-object p1, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    goto :goto_8

    .line 166
    :cond_b
    sget-object p1, Lcom/transsion/sdk/oneid/d;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_8
    if-eqz v2, :cond_d

    move-object v5, v2

    .line 162
    :cond_c
    :goto_9
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    return-object v0

    :goto_a
    if-eqz v2, :cond_e

    .line 170
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 172
    :cond_e
    throw p0
.end method

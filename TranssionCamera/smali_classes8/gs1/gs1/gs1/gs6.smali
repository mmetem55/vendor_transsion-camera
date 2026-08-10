.class public Lgs1/gs1/gs1/gs6;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static gs6:Lgs1/gs1/gs1/gs6;


# instance fields
.field public gs1:Landroid/os/Handler;

.field public gs2:Landroid/os/HandlerThread;

.field public gs3:I

.field public final gs4:Ljava/util/concurrent/locks/ReentrantLock;

.field public gs5:Lgs1/gs1/gs1/gs1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lgs1/gs1/gs1/gs6;->gs2:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lgs1/gs1/gs1/gs6;->gs3:I

    .line 13
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lgs1/gs1/gs1/gs6;->gs4:Ljava/util/concurrent/locks/ReentrantLock;

    .line 31
    invoke-virtual {p0}, Lgs1/gs1/gs1/gs6;->gs3()V

    .line 32
    iget-object p0, p0, Lgs1/gs1/gs1/gs6;->gs1:Landroid/os/Handler;

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static gs4()Lgs1/gs1/gs1/gs6;
    .locals 2

    .line 1
    sget-object v0, Lgs1/gs1/gs1/gs6;->gs6:Lgs1/gs1/gs1/gs6;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lgs1/gs1/gs1/gs6;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lgs1/gs1/gs1/gs6;->gs6:Lgs1/gs1/gs1/gs6;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lgs1/gs1/gs1/gs6;

    invoke-direct {v1}, Lgs1/gs1/gs1/gs6;-><init>()V

    sput-object v1, Lgs1/gs1/gs1/gs6;->gs6:Lgs1/gs1/gs1/gs6;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lgs1/gs1/gs1/gs6;->gs6:Lgs1/gs1/gs1/gs6;

    return-object v0
.end method


# virtual methods
.method public gs1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lgs1/gs1/gs1/gs6;->gs1:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lgs1/gs1/gs1/gs6;->gs1:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public gs1(Lgs1/gs1/gs1/gs3;)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Lgs1/gs1/gs1/gs6;->gs3()V

    .line 5
    iget-object v0, p0, Lgs1/gs1/gs1/gs6;->gs1:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    iget-object p0, p0, Lgs1/gs1/gs1/gs6;->gs1:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final gs1(Ljava/util/List;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 8
    :try_start_0
    invoke-static {}, Lcom/transsion/core/CoreUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lgs1/gs1/gs1/gs7/gs1;->gs1(Landroid/content/Context;)Lgs1/gs1/gs1/gs7/gs1$gs2;

    move-result-object v1

    .line 9
    iget-object v1, v1, Lgs1/gs1/gs1/gs7/gs1$gs2;->gs1:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    sget-object v2, Lgs1/gs1/gs1/gs5;->gs1:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    :cond_0
    sget-object v1, Lgs1/gs1/gs1/gs5;->gs1:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v2, "Unable to get the device\'s gaid"

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p0}, Lgs1/gs1/gs1/gs6;->gs2()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v2, "00000000-0000-0000-0000-000000000000"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 19
    sget-object v1, Lgs1/gs1/gs1/gs5;->gs1:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v2, "gaid tracking is limited"

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p0}, Lgs1/gs1/gs1/gs6;->gs2()Ljava/lang/String;

    move-result-object v1

    .line 24
    :cond_2
    sget-object v2, Lgs1/gs1/gs1/gs5;->gs1:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device id is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 26
    invoke-static {v1}, Lcom/transsion/core/utils/EncoderUtil;->EncoderByAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-static {}, Lcom/transsion/gslb/GslbSdk;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 29
    invoke-static {}, Lcom/transsion/gslb/GslbSdk;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    :cond_3
    const/4 v3, 0x0

    .line 33
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5

    const-string v5, "appId"

    .line 34
    :try_start_2
    sget-object v6, Lcom/transsion/gslb/GslbSdk;->gs2:Landroid/content/Context;

    .line 35
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "key"

    .line 36
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    iget-object v5, p0, Lgs1/gs1/gs1/gs6;->gs5:Lgs1/gs1/gs1/gs1;

    .line 39
    iget-object v5, v5, Lgs1/gs1/gs1/gs1;->gs6:Ljava/lang/String;

    .line 40
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5

    const-string v7, "oldKey"

    const-string v8, ""

    if-nez v6, :cond_5

    :try_start_3
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    .line 43
    :cond_4
    invoke-static {v5}, Lcom/transsion/core/utils/EncoderUtil;->EncoderByAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 44
    :cond_5
    :goto_1
    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    :goto_2
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 50
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 51
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 54
    :cond_6
    invoke-static {}, Lcom/transsion/gslb/GslbSdk;->getMcc()Ljava/lang/String;

    move-result-object p1

    const-string v6, "domains"

    .line 55
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5

    const-string v5, "mcc"

    .line 56
    :try_start_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 57
    invoke-static {}, Lcom/transsion/core/deviceinfo/DeviceInfo;->getSimOperator()Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-lt v6, v7, :cond_7

    .line 59
    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_7
    move-object p1, v8

    :cond_8
    :goto_4
    if-nez p1, :cond_9

    move-object p1, v8

    .line 60
    :cond_9
    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5

    const-string p1, "locale"

    .line 61
    :try_start_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a

    move-object v5, v8

    :cond_a
    invoke-virtual {v4, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    const-string p1, "language"

    .line 62
    :try_start_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_b

    move-object v5, v8

    :cond_b
    invoke-virtual {v4, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    const-string p1, "model"

    .line 63
    :try_start_7
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v5, :cond_c

    move-object v5, v8

    :cond_c
    invoke-virtual {v4, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_5

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    sget-object v5, Lcom/transsion/gslb/GslbSdk;->gs2:Landroid/content/Context;

    .line 73
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/core/utils/EncoderUtil;->EncoderByAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "https://gslb.shalltry.com/gslb/domain/convert"

    .line 74
    sget-object v5, Lgs1/gs1/gs1/gs5;->gs1:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "begin net connect: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 75
    new-instance v5, Lgs1/gs1/gs1/gs4;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v0}, Lgs1/gs1/gs1/gs4;-><init>(ILjava/lang/Object;)V

    if-eqz p1, :cond_d

    move-object v8, p1

    :cond_d
    const/16 v7, 0xc8

    const/4 v9, 0x1

    .line 86
    :try_start_8
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 88
    :try_start_9
    instance-of v11, v10, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v11, :cond_f

    .line 89
    sget-object v11, Lgs1/gs1/gs1/gs5;->gs2:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v11, :cond_e

    .line 90
    invoke-static {}, Lgs1/gs1/gs1/gs7/gs2;->gs1()Ljavax/net/ssl/SSLContext;

    move-result-object v11

    if-eqz v11, :cond_e

    .line 92
    invoke-virtual {v11}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v11

    sput-object v11, Lgs1/gs1/gs1/gs5;->gs2:Ljavax/net/ssl/SSLSocketFactory;

    .line 96
    :cond_e
    sget-object v11, Lgs1/gs1/gs1/gs5;->gs2:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v11, :cond_f

    .line 97
    move-object v12, v10

    check-cast v12, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v12, v11}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 98
    move-object v11, v10

    check-cast v11, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v12, Lgs1/gs1/gs1/gs7/gs2;->gs1:Lgs1/gs1/gs1/gs7/gs2$gs2;

    invoke-virtual {v11, v12}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_f
    const-string v11, "accept"

    const-string v12, "*/*"

    .line 102
    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "Content-Type"

    const-string v12, "application/json"

    .line 103
    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const-string v11, "Content-Length"

    .line 104
    :try_start_a
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "X-Gslb-Sign"

    .line 105
    invoke-virtual {v10, v11, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "POST"

    .line 107
    invoke-virtual {v10, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v2, 0x4e20

    .line 108
    invoke-virtual {v10, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v2, 0x7530

    .line 109
    invoke-virtual {v10, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 112
    invoke-virtual {v10, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 114
    invoke-virtual {v10, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 116
    new-instance v2, Ljava/io/PrintWriter;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v2, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 118
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 121
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 123
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 124
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v8

    .line 125
    sget-object v11, Lgs1/gs1/gs1/gs5;->gs1:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "url:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " code:"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Post Data:"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v11, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    if-ne v2, v7, :cond_13

    .line 128
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 129
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v4, p1, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    :goto_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_10

    .line 135
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 138
    :cond_10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "{}"

    .line 139
    invoke-static {v8, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 141
    new-instance v4, Lgs1/gs1/gs1/gs4;

    invoke-direct {v4, v9, v0}, Lgs1/gs1/gs1/gs4;-><init>(ILjava/lang/Object;)V

    goto :goto_6

    .line 142
    :cond_11
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 144
    new-instance v4, Lgs1/gs1/gs1/gs4;

    invoke-direct {v4, v6, v0}, Lgs1/gs1/gs1/gs4;-><init>(ILjava/lang/Object;)V

    :goto_6
    move-object v5, v4

    goto :goto_7

    .line 147
    :cond_12
    new-instance v0, Lgs1/gs1/gs1/gs4;

    invoke-direct {v0, v3, v4}, Lgs1/gs1/gs1/gs4;-><init>(ILjava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object v5, v0

    .line 150
    :goto_7
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 151
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception p1

    goto :goto_9

    :catchall_1
    move-exception p1

    move-object v0, v10

    goto :goto_8

    :catchall_2
    move-exception p1

    :goto_8
    move-object v10, v0

    .line 154
    :goto_9
    :try_start_c
    sget-object v0, Lgs1/gs1/gs1/gs5;->gs1:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v10, :cond_14

    .line 157
    :cond_13
    :goto_a
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 158
    :cond_14
    iget p1, v5, Lgs1/gs1/gs1/gs4;->gs1:I

    if-nez p1, :cond_1b

    .line 159
    sget-object p1, Lgs1/gs1/gs1/gs5;->gs1:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get data success, data is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lgs1/gs1/gs1/gs4;->gs2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 160
    iget-object p0, p0, Lgs1/gs1/gs1/gs6;->gs5:Lgs1/gs1/gs1/gs1;

    iget-object p1, v5, Lgs1/gs1/gs1/gs4;->gs2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 161
    iput-object v1, p0, Lgs1/gs1/gs1/gs1;->gs6:Ljava/lang/String;

    .line 162
    :try_start_d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 163
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "message"

    .line 164
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eq p1, v7, :cond_15

    .line 166
    sget-object p0, Lgs1/gs1/gs1/gs5;->gs1:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error message is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 170
    :cond_15
    new-instance p1, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_4

    const-wide/32 v1, 0x5265c00

    :try_start_e
    const-string v4, "data"

    .line 172
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "overrideFlag"

    .line 173
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    :try_start_f
    const-string v5, "expireTime"

    .line 174
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    int-to-long v5, v5

    :try_start_10
    const-string v7, "domainPairs"

    .line 176
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 179
    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 180
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 181
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_c

    :catch_2
    move-exception v0

    move-wide v5, v1

    goto :goto_c

    :catch_3
    move-exception v0

    move-wide v5, v1

    move v4, v3

    .line 185
    :goto_c
    :try_start_11
    sget-object v7, Lgs1/gs1/gs1/gs5;->gs1:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 186
    :cond_16
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    iget-object v7, p0, Lgs1/gs1/gs1/gs1;->gs2:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 188
    invoke-virtual {p0, v7}, Lgs1/gs1/gs1/gs1;->gs1(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    if-eqz v4, :cond_17

    .line 189
    :cond_18
    iget-object v7, p0, Lgs1/gs1/gs1/gs1;->gs2:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 190
    :cond_19
    iput-wide v5, p0, Lgs1/gs1/gs1/gs1;->gs5:J

    cmp-long p1, v5, v1

    if-gez p1, :cond_1a

    .line 192
    iput-wide v1, p0, Lgs1/gs1/gs1/gs1;->gs5:J

    .line 195
    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lgs1/gs1/gs1/gs1;->gs4:J

    .line 196
    invoke-virtual {p0}, Lgs1/gs1/gs1/gs1;->gs5()V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_4

    move v3, v9

    goto :goto_e

    :catch_4
    move-exception p0

    .line 201
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_e
    return v3

    .line 202
    :cond_1b
    sget-object p0, Lgs1/gs1/gs1/gs5;->gs1:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get data error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v5, Lgs1/gs1/gs1/gs4;->gs1:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->d(Ljava/lang/Object;)V

    return v3

    :catchall_3
    move-exception p0

    if-eqz v10, :cond_1c

    .line 203
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 205
    :cond_1c
    throw p0

    :catch_5
    move-exception p0

    .line 206
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return v3
.end method

.method public final gs2()Ljava/lang/String;
    .locals 4

    const-string p0, "deviceID"

    const-string v0, ""

    .line 1
    :try_start_0
    sget-object v1, Lcom/transsion/gslb/GslbSdk;->gs2:Landroid/content/Context;

    const-string v2, "gslb"

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 8
    :catch_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 11
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    .line 14
    :try_start_2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_1
    return-object v0
.end method

.method public final gs3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lgs1/gs1/gs1/gs6;->gs4:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    iget-object v0, p0, Lgs1/gs1/gs1/gs6;->gs2:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GSLB Worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgs1/gs1/gs1/gs6;->gs2:Landroid/os/HandlerThread;

    const/16 v1, 0xa

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 6
    iget-object v0, p0, Lgs1/gs1/gs1/gs6;->gs2:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 7
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lgs1/gs1/gs1/gs6;->gs2:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lgs1/gs1/gs1/gs6;->gs1:Landroid/os/Handler;

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lgs1/gs1/gs1/gs6;->gs1:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lgs1/gs1/gs1/gs6;->gs1:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_1
    :goto_0
    iget-object p0, p0, Lgs1/gs1/gs1/gs6;->gs4:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 17
    :try_start_1
    sget-object v1, Lgs1/gs1/gs1/gs5;->gs1:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    iget-object p0, p0, Lgs1/gs1/gs1/gs6;->gs4:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lgs1/gs1/gs1/gs6;->gs4:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 20
    throw v0

    :cond_2
    :goto_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_7

    const-wide/16 v3, 0x3a98

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 75
    :pswitch_0
    sget-object p1, Lgs1/gs1/gs1/gs5;->gs1:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "-->WHAT_SYNC_DATA."

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 76
    sget-object p1, Lcom/transsion/gslb/GslbSdk;->gs2:Landroid/content/Context;

    .line 77
    invoke-static {p1}, Lgs1/gs1/gs1/gs5;->gs2(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 78
    iget-object p1, p0, Lgs1/gs1/gs1/gs6;->gs5:Lgs1/gs1/gs1/gs1;

    invoke-virtual {p1}, Lgs1/gs1/gs1/gs1;->gs2()Ljava/util/List;

    move-result-object p1

    .line 79
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 80
    invoke-virtual {p0, p1}, Lgs1/gs1/gs1/gs6;->gs1(Ljava/util/List;)Z

    .line 83
    :cond_0
    iget-object p1, p0, Lgs1/gs1/gs1/gs6;->gs1:Landroid/os/Handler;

    const/16 v0, 0x67

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 85
    :cond_1
    iget-object p1, p0, Lgs1/gs1/gs1/gs6;->gs1:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    iget-object p0, p0, Lgs1/gs1/gs1/gs6;->gs1:Landroid/os/Handler;

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 87
    :pswitch_1
    sget-object p1, Lgs1/gs1/gs1/gs5;->gs1:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "-->WHAT_CHECK_EMPTY."

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 88
    sget-object p1, Lcom/transsion/gslb/GslbSdk;->gs2:Landroid/content/Context;

    .line 89
    invoke-static {p1}, Lgs1/gs1/gs1/gs5;->gs2(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 90
    iget-object p1, p0, Lgs1/gs1/gs1/gs6;->gs1:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 91
    iget-object p0, p0, Lgs1/gs1/gs1/gs6;->gs1:Landroid/os/Handler;

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 95
    :cond_2
    iget-object p1, p0, Lgs1/gs1/gs1/gs6;->gs5:Lgs1/gs1/gs1/gs1;

    invoke-virtual {p1}, Lgs1/gs1/gs1/gs1;->gs3()Ljava/util/List;

    move-result-object p1

    .line 96
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 98
    invoke-virtual {p0, p1}, Lgs1/gs1/gs1/gs6;->gs1(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 100
    iget-object p1, p0, Lgs1/gs1/gs1/gs6;->gs5:Lgs1/gs1/gs1/gs1;

    invoke-virtual {p1}, Lgs1/gs1/gs1/gs1;->gs4()V

    .line 101
    invoke-virtual {p0}, Lgs1/gs1/gs1/gs6;->gs1()V

    goto/16 :goto_1

    .line 105
    :cond_3
    iget p1, p0, Lgs1/gs1/gs1/gs6;->gs3:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgs1/gs1/gs1/gs6;->gs3:I

    const/4 v0, 0x3

    if-lt p1, v0, :cond_4

    .line 108
    iget-object p1, p0, Lgs1/gs1/gs1/gs6;->gs5:Lgs1/gs1/gs1/gs1;

    invoke-virtual {p1}, Lgs1/gs1/gs1/gs1;->gs4()V

    .line 109
    iget-object p1, p0, Lgs1/gs1/gs1/gs6;->gs1:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 110
    iget-object p0, p0, Lgs1/gs1/gs1/gs6;->gs1:Landroid/os/Handler;

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 113
    :cond_4
    invoke-virtual {p0}, Lgs1/gs1/gs1/gs6;->gs1()V

    goto/16 :goto_1

    .line 118
    :cond_5
    iget-object p1, p0, Lgs1/gs1/gs1/gs6;->gs1:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    iget-object p0, p0, Lgs1/gs1/gs1/gs6;->gs1:Landroid/os/Handler;

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 120
    :pswitch_2
    sget-object v0, Lgs1/gs1/gs1/gs5;->gs1:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v3, "-->WHAT_ADD_DOMAIN."

    invoke-virtual {v0, v3}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 121
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lgs1/gs1/gs1/gs3;

    .line 122
    iget-object v0, p1, Lgs1/gs1/gs1/gs3;->gs1:[Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 123
    iput v1, p0, Lgs1/gs1/gs1/gs6;->gs3:I

    .line 126
    :cond_6
    iget-object v0, p0, Lgs1/gs1/gs1/gs6;->gs5:Lgs1/gs1/gs1/gs1;

    invoke-virtual {v0, p1}, Lgs1/gs1/gs1/gs1;->gs1(Lgs1/gs1/gs1/gs3;)V

    .line 128
    invoke-virtual {p0}, Lgs1/gs1/gs1/gs6;->gs1()V

    .line 130
    iget-object p1, p0, Lgs1/gs1/gs1/gs6;->gs1:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 131
    iget-object p0, p0, Lgs1/gs1/gs1/gs6;->gs1:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 132
    :pswitch_3
    sget-object p1, Lcom/transsion/gslb/GslbSdk;->gs2:Landroid/content/Context;

    .line 133
    invoke-static {p1}, Lcom/transsion/core/CoreUtil;->init(Landroid/content/Context;)V

    .line 134
    sget-object p1, Lgs1/gs1/gs1/gs5;->gs1:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "-->WHAT_INIT."

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 136
    :try_start_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 137
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    new-instance v0, Lgs1/gs1/gs1/gs2;

    invoke-direct {v0}, Lgs1/gs1/gs1/gs2;-><init>()V

    .line 139
    sget-object v2, Lcom/transsion/gslb/GslbSdk;->gs2:Landroid/content/Context;

    .line 140
    invoke-virtual {v2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 142
    sget-object v0, Lgs1/gs1/gs1/gs5;->gs1:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 145
    :goto_0
    sget-object p1, Lgs1/gs1/gs1/gs5;->gs1:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "GSLB SDK version is 1.0.1.3"

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 146
    invoke-static {}, Lgs1/gs1/gs1/gs1;->gs6()Lgs1/gs1/gs1/gs1;

    move-result-object p1

    iput-object p1, p0, Lgs1/gs1/gs1/gs6;->gs5:Lgs1/gs1/gs1/gs1;

    goto :goto_1

    .line 219
    :cond_7
    sget-object p1, Lgs1/gs1/gs1/gs5;->gs1:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "-->WHAT_QUIT."

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 220
    iget-object p1, p0, Lgs1/gs1/gs1/gs6;->gs4:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 222
    :try_start_1
    iget-object p1, p0, Lgs1/gs1/gs1/gs6;->gs2:Landroid/os/HandlerThread;

    if-eqz p1, :cond_8

    .line 223
    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    const/4 p1, 0x0

    .line 224
    iput-object p1, p0, Lgs1/gs1/gs1/gs6;->gs2:Landroid/os/HandlerThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :cond_8
    iget-object p0, p0, Lgs1/gs1/gs1/gs6;->gs4:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lgs1/gs1/gs1/gs6;->gs4:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 228
    throw p1

    :cond_9
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

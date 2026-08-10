.class public Lcom/transsion/hubsdk/bp/TranThubBpManager;
.super Ljava/lang/Object;
.source "TranThubBpManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubBpManager"

.field private static mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static mService:Lcom/transsion/hubsdk/bp/ITranThubBp;


# direct methods
.method public static synthetic $r8$lambda$-mXWVW516o1EJySqbSMKhyNqU7w(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->lambda$recordTimeout$2(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lri3tRZcRHMWwVdJJFlPgga_sgA(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->lambda$recordException$0(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UIAgRsYqY3I6fVrGQOAM7MB3JU0(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->lambda$recordTimeout$3(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yFTwotkr8cbg_OyW-ysKJ2AZVkg(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->lambda$recordException$1(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "thub_bp"

    .line 62
    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/transsion/hubsdk/bp/ITranThubBp$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/bp/ITranThubBp;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->mService:Lcom/transsion/hubsdk/bp/ITranThubBp;

    .line 64
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private static getExcpInfo(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 271
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 272
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 273
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 274
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p0

    .line 275
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 277
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$recordException$0(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .line 86
    sget-object v0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Catch Thub-sdk Exception form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->mService:Lcom/transsion/hubsdk/bp/ITranThubBp;

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/bp/ITranThubBp;->recordExcp(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    .line 94
    :goto_0
    sget-object v1, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recordException.catchEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v0, 0x13ad0c66

    .line 97
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    sget v4, Lcom/transsion/hubsdk/common/version/TranVersion;->THUBCORE_VERSION:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-static {p1, p0}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->localExceptionLog(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " eStr="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {v4, v0, v2, v3, p0}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->trancareLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 104
    :cond_0
    invoke-static {}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->tneLog()V

    return-void
.end method

.method private static synthetic lambda$recordException$1(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .line 126
    sget-object v0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Catch Thub-sdk Exception form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->mService:Lcom/transsion/hubsdk/bp/ITranThubBp;

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/bp/ITranThubBp;->recordExcp(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    .line 134
    :goto_0
    sget-object v1, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recordException.catchEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v0, 0x13ad0c66

    .line 137
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    sget v4, Lcom/transsion/hubsdk/common/version/TranVersion;->THUBCORE_VERSION:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-static {p1, p0}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->localExceptionLog(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " eStr="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {v4, v0, v2, v3, p0}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->trancareLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$recordTimeout$2(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V
    .locals 6

    .line 166
    sget-object v0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thub-sdk Timeout from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 170
    :try_start_0
    sget-object v1, Lcom/transsion/hubsdk/bp/TranThubBpManager;->mService:Lcom/transsion/hubsdk/bp/ITranThubBp;

    invoke-interface {v1, p0}, Lcom/transsion/hubsdk/bp/ITranThubBp;->recordTimeout(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 172
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    move v1, v0

    .line 174
    :goto_0
    sget-object v2, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordTimeout.catchEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const v3, 0x13ad0c66

    .line 178
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 179
    sget v4, Lcom/transsion/hubsdk/common/version/TranVersion;->THUBCORE_VERSION:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-static {p1, p0}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->localExceptionLog(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 183
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v5, 0x7d0

    if-le p1, v5, :cond_0

    .line 184
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 187
    :cond_0
    invoke-static {v4, v3, v1, v2, p0}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->trancareLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 190
    :cond_1
    invoke-static {}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->tneLog()V

    return-void
.end method

.method private static synthetic lambda$recordTimeout$3(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V
    .locals 6

    .line 213
    sget-object v0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thub-sdk Timeout form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 217
    :try_start_0
    sget-object v1, Lcom/transsion/hubsdk/bp/TranThubBpManager;->mService:Lcom/transsion/hubsdk/bp/ITranThubBp;

    invoke-interface {v1, p0}, Lcom/transsion/hubsdk/bp/ITranThubBp;->recordTimeout(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 219
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    move v1, v0

    .line 221
    :goto_0
    sget-object v2, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordTimeout.catchEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const v3, 0x13ad0c66

    .line 225
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 226
    sget v4, Lcom/transsion/hubsdk/common/version/TranVersion;->THUBCORE_VERSION:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 229
    invoke-static {p1, p0}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->localExceptionLog(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 230
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v5, 0x7d0

    if-le p1, v5, :cond_0

    .line 231
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 234
    :cond_0
    invoke-static {v4, v3, v1, v2, p0}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->trancareLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static localExceptionLog(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 256
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "MM-dd HH:mm:ss"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 257
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-static {p0}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->getExcpInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  \r\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/16 p1, 0x7d0

    if-le p0, p1, :cond_0

    const/4 p0, 0x0

    .line 261
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 263
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static recordException(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string p0, "33101"

    .line 75
    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 76
    sget-object p0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string p1, "recordException fail, incompatible version"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide v0, 0xd96e64c116L

    .line 80
    invoke-static {v0, v1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->isEnabled(J)Z

    move-result p0

    if-nez p0, :cond_1

    .line 81
    sget-object p0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string p1, "Thub-sdk thub_excpc(933860000022) is not enable!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 85
    :cond_1
    sget-object p0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/transsion/hubsdk/bp/TranThubBpManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/transsion/hubsdk/bp/TranThubBpManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static recordException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "33101"

    .line 115
    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    sget-object p0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string p1, "recordException fail, incompatible version"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide v0, 0xd96e64c116L

    .line 120
    invoke-static {v0, v1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->isEnabled(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    sget-object p0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string p1, "Thub-sdk thub_excpc(933860000022) is not enable!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 125
    :cond_1
    sget-object v0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/transsion/hubsdk/bp/TranThubBpManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/bp/TranThubBpManager$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static recordTimeout(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    const-string p0, "33101"

    .line 154
    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 155
    sget-object p0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string p1, "recordException fail, incompatible version"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide v0, 0xd96e64c116L

    .line 159
    invoke-static {v0, v1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->isEnabled(J)Z

    move-result p0

    if-nez p0, :cond_1

    .line 160
    sget-object p0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string p1, "Thub-sdk thub_excpc(933860000022) is not enable!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 163
    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 165
    sget-object p2, Lcom/transsion/hubsdk/bp/TranThubBpManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/transsion/hubsdk/bp/TranThubBpManager$$ExternalSyntheticLambda1;

    invoke-direct {p3, p1, p0}, Lcom/transsion/hubsdk/bp/TranThubBpManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static recordTimeout(Ljava/lang/String;J)V
    .locals 3

    const-string v0, "33101"

    .line 201
    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    sget-object p0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string p1, "recordException fail, incompatible version"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide v0, 0xd96e64c116L

    .line 206
    invoke-static {v0, v1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->isEnabled(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    sget-object p0, Lcom/transsion/hubsdk/bp/TranThubBpManager;->TAG:Ljava/lang/String;

    const-string p1, "Thub-sdk thub_excpc(933860000022) is not enable!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 210
    :cond_1
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 212
    sget-object p1, Lcom/transsion/hubsdk/bp/TranThubBpManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/transsion/hubsdk/bp/TranThubBpManager$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v0}, Lcom/transsion/hubsdk/bp/TranThubBpManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/util/concurrent/TimeoutException;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static tneLog()V
    .locals 6

    .line 249
    new-instance v0, Lcom/transsion/hubsdk/api/app/TranActivityManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/app/TranActivityManager;-><init>()V

    .line 250
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string v1, "0x01010001"

    const-wide/16 v2, 0x200

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->startTNE(Ljava/lang/String;JILjava/lang/String;)V

    return-void
.end method

.method private static trancareLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    .line 240
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "c_v"

    .line 241
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "s_v"

    .line 242
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "s_t"

    .line 243
    invoke-virtual {v0, p0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "t_i"

    .line 244
    invoke-virtual {v0, p0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-wide p0, 0xd96e740369L

    .line 245
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "thub_excp_info"

    const/4 p2, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->serverLog(Ljava/lang/Long;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

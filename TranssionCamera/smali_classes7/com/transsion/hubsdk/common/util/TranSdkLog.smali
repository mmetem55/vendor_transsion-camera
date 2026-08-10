.class public Lcom/transsion/hubsdk/common/util/TranSdkLog;
.super Ljava/lang/Object;
.source "TranSdkLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/common/util/TranSdkLog$Default;
    }
.end annotation


# static fields
.field private static sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/transsion/hubsdk/common/util/TranSdkLog$Default;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog$Default;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 64
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/common/util/ITranLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 82
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/common/util/ITranLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 46
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/common/util/ITranLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static setLogLevel(I)I
    .locals 1

    .line 37
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/common/util/ITranLogger;->setLogLevel(I)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 73
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/common/util/ITranLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.class Lcom/transsion/hubsdk/common/util/TranSdkLog$Default;
.super Ljava/lang/Object;
.source "TranSdkLog.java"

# interfaces
.implements Lcom/transsion/hubsdk/common/util/ITranLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/common/util/TranSdkLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Default"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 126
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 144
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 108
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setLogLevel(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 135
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.class public Lgs1/gs1/gs1/gs2;
.super Landroid/content/BroadcastReceiver;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 2
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    :try_start_0
    invoke-static {p1}, Lgs1/gs1/gs1/gs5;->gs2(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5
    sget-object p0, Lcom/transsion/gslb/GslbSdk;->gs1:Lgs1/gs1/gs1/gs6;

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Lgs1/gs1/gs1/gs6;->gs3()V

    .line 7
    invoke-virtual {p0}, Lgs1/gs1/gs1/gs6;->gs1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    sget-object p1, Lgs1/gs1/gs1/gs5;->gs1:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

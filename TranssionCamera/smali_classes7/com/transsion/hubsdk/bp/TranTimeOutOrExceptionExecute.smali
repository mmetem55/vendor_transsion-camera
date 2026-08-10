.class public Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;
.super Ljava/lang/Object;
.source "TranTimeOutOrExceptionExecute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mTranContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recordTimeout(Ljava/lang/String;J)V
    .locals 2

    const-wide/16 v0, 0xc8

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    .line 85
    iget-object p0, p0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->mTranContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 86
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->recordTimeout(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->recordTimeout(Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 71
    :try_start_0
    invoke-interface {p1}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;->run()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 73
    iget-object v2, p0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->mTranContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->mTranContext:Landroid/content/Context;

    invoke-static {v2, p2, p1}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->recordException(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {p2, p1}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->recordException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    .line 79
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, p2, v2, v3}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->recordTimeout(Ljava/lang/String;J)V

    return-object p1
.end method

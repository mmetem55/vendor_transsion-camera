.class public Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;
.super Ljava/lang/Object;
.source "TranThubTrancareManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;


# direct methods
.method public static synthetic $r8$lambda$CPbAjLBRi_8CcCADiYBzuXor5o4(JLjava/lang/String;ILandroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$serverLogInternal$5(JLjava/lang/String;ILandroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CYyRlHQMoFnUFb3N0pzcTdSErHg(ILjava/lang/String;ILandroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$serverLogInternal$4(ILjava/lang/String;ILandroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dKNQq0nsGh6vyaS0Q_o5_WhDH9Y(J)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$isEnabledInternal$3(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$isEnabledInternal$3(J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->isEnabled(J)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$serverLogInternal$4(ILjava/lang/String;ILandroid/os/Bundle;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->serverLog(ILjava/lang/String;ILandroid/os/Bundle;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$serverLogInternal$5(JLjava/lang/String;ILandroid/os/Bundle;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0, p2, p3, p4}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->serverLog(Ljava/lang/Long;Ljava/lang/String;ILandroid/os/Bundle;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public isEnabledInternal(J)Z
    .locals 1

    .line 56
    new-instance p0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda2;-><init>(J)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public serverLogInternal(ILjava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .line 63
    new-instance p0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda1;-><init>(ILjava/lang/String;ILandroid/os/Bundle;)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public serverLogInternal(JLjava/lang/String;ILandroid/os/Bundle;)V
    .locals 7

    .line 71
    new-instance p0, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v6, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda0;-><init>(JLjava/lang/String;ILandroid/os/Bundle;)V

    const-string p1, "trancare"

    invoke-virtual {p0, v6, p1}, Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

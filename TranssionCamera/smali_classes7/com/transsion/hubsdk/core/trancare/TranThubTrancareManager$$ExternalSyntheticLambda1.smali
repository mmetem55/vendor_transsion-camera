.class public final synthetic Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda1;->f$3:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda1;->f$0:I

    iget-object v1, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda1;->f$2:I

    iget-object p0, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda1;->f$3:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->$r8$lambda$CYyRlHQMoFnUFb3N0pzcTdSErHg(ILjava/lang/String;ILandroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

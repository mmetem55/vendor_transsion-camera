.class abstract Lcom/transsion/camera/feature/common/BaseCapture$PendingState;
.super Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;
.source "BaseCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/common/BaseCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PendingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/common/BaseCapture;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/common/BaseCapture;Ljava/lang/String;)V
    .locals 1

    .line 575
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    const/4 v0, 0x0

    .line 576
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;Ljava/lang/String;Lcom/transsion/camera/feature/common/BaseCapture$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/common/BaseCapture;Ljava/lang/String;Lcom/transsion/camera/feature/common/BaseCapture$1;)V
    .locals 0

    .line 573
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected captureFinished()V
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$1700(Lcom/transsion/camera/feature/common/BaseCapture;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/common/BaseCapture;->access$1702(Lcom/transsion/camera/feature/common/BaseCapture;Z)Z

    .line 597
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$1600(Lcom/transsion/camera/feature/common/BaseCapture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/common/BaseCapture;->access$1602(Lcom/transsion/camera/feature/common/BaseCapture;Z)Z

    .line 599
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$1000(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->entry()V

    goto :goto_0

    .line 601
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$800(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->entry()V

    goto :goto_0

    .line 604
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$1000(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->entry()V

    :goto_0
    return-void
.end method

.method protected createStream()V
    .locals 1

    .line 581
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$1102(Lcom/transsion/camera/feature/common/BaseCapture;Z)Z

    return-void
.end method

.method protected destroyStream()V
    .locals 1

    .line 591
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$1702(Lcom/transsion/camera/feature/common/BaseCapture;Z)Z

    return-void
.end method

.method protected onStreamAvailable()V
    .locals 1

    .line 586
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$1602(Lcom/transsion/camera/feature/common/BaseCapture;Z)Z

    return-void
.end method

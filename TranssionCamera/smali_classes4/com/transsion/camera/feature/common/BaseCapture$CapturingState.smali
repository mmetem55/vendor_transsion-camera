.class Lcom/transsion/camera/feature/common/BaseCapture$CapturingState;
.super Lcom/transsion/camera/feature/common/BaseCapture$PendingState;
.source "BaseCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/common/BaseCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CapturingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/common/BaseCapture;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/common/BaseCapture;)V
    .locals 2

    .line 612
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture$CapturingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    const-string v0, "CapturingState"

    const/4 v1, 0x0

    .line 613
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;Ljava/lang/String;Lcom/transsion/camera/feature/common/BaseCapture$1;)V

    return-void
.end method


# virtual methods
.method protected destroyStream()V
    .locals 0

    .line 642
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;->destroyStream()V

    .line 643
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$CapturingState;->stopCapture()Z

    return-void
.end method

.method protected onEntry()V
    .locals 0

    .line 618
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CapturingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->doCapture()V

    return-void
.end method

.method protected shouldEmitData()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected shutterClick()V
    .locals 0

    .line 628
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$CapturingState;->stopCapture()Z

    return-void
.end method

.method protected stopCapture()Z
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CapturingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/common/BaseCapture;->access$1300(Lcom/transsion/camera/feature/common/BaseCapture;Z)V

    .line 634
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CapturingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$1400(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/IDataStream;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/common/IDataStream;->updateState(Z)V

    .line 635
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CapturingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->doStopCapture()Z

    move-result v0

    .line 636
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CapturingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$1900(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->entry()V

    return v0
.end method

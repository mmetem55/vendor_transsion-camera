.class Lcom/transsion/camera/feature/common/BaseCapture$CaptureSavingState;
.super Lcom/transsion/camera/feature/common/BaseCapture$PendingState;
.source "BaseCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/common/BaseCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureSavingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/common/BaseCapture;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/common/BaseCapture;)V
    .locals 2

    .line 669
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureSavingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    const-string v0, "SavingState"

    const/4 v1, 0x0

    .line 670
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;Ljava/lang/String;Lcom/transsion/camera/feature/common/BaseCapture$1;)V

    return-void
.end method


# virtual methods
.method protected captureFail()V
    .locals 3

    .line 675
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureFail mPendingDestroy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureSavingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v2}, Lcom/transsion/camera/feature/common/BaseCapture;->access$1700(Lcom/transsion/camera/feature/common/BaseCapture;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 676
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;->captureFinished()V

    return-void
.end method

.method protected captureSuccess()V
    .locals 3

    .line 681
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureSuccess mPendingDestroy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureSavingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v2}, Lcom/transsion/camera/feature/common/BaseCapture;->access$1700(Lcom/transsion/camera/feature/common/BaseCapture;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 682
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;->captureFinished()V

    return-void
.end method

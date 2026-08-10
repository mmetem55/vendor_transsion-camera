.class Lcom/transsion/camera/feature/common/BaseCapture$CaptureEnableState;
.super Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;
.source "BaseCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/common/BaseCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureEnableState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/common/BaseCapture;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/common/BaseCapture;)V
    .locals 2

    .line 488
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureEnableState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    const-string v0, "CaptureAvailableState"

    const/4 v1, 0x0

    .line 489
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;Ljava/lang/String;Lcom/transsion/camera/feature/common/BaseCapture$1;)V

    return-void
.end method


# virtual methods
.method protected shutterClick()V
    .locals 0

    .line 494
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureEnableState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$1200(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->entry()V

    return-void
.end method

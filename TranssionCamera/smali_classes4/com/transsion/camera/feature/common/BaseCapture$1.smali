.class Lcom/transsion/camera/feature/common/BaseCapture$1;
.super Ljava/lang/Object;
.source "BaseCapture.java"

# interfaces
.implements Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/common/BaseCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/common/BaseCapture;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/common/BaseCapture;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture$1;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamAvailable(III)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$1;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$000(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->onStreamAvailable()V

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$1;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/feature/common/BaseCapture;->onStreamAvailable(III)V

    .line 86
    iget-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture$1;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {p1}, Lcom/transsion/camera/feature/common/BaseCapture;->access$100(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$1;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$100(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;->onStreamReady()V

    :cond_0
    return-void
.end method

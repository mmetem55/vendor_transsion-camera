.class Lcom/transsion/camera/feature/common/BaseCapture$2;
.super Ljava/lang/Object;
.source "BaseCapture.java"

# interfaces
.implements Lcom/transsion/camera/feature/common/IDataStream$IDataListener;


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

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture$2;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Landroid/util/Pair;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "[B>;III)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$2;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$000(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->shouldEmitData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$2;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/common/BaseCapture;->onDataAvailable(Landroid/util/Pair;III)V

    :cond_0
    return-void
.end method

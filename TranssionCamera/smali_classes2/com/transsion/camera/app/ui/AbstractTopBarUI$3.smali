.class Lcom/transsion/camera/app/ui/AbstractTopBarUI$3;
.super Ljava/lang/Object;
.source "AbstractTopBarUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IModuleTransfer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractTopBarUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransfer(Z)V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 419
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 420
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->access$200(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    :cond_0
    return-void
.end method

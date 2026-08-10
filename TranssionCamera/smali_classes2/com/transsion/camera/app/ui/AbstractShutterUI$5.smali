.class Lcom/transsion/camera/app/ui/AbstractShutterUI$5;
.super Ljava/lang/Object;
.source "AbstractShutterUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IModuleTransfer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractShutterUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransfer(Z)V
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->access$500(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->access$502(Lcom/transsion/camera/app/ui/AbstractShutterUI;Z)Z

    .line 633
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->access$600(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    :cond_0
    return-void
.end method

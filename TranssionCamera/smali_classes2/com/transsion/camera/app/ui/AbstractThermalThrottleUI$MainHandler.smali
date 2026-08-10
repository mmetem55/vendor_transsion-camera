.class Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI$MainHandler;
.super Landroid/os/Handler;
.source "AbstractThermalThrottleUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI$MainHandler;->this$0:Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    if-eq v0, p1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI$MainHandler;->this$0:Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->access$300(Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI$MainHandler;->this$0:Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->access$200(Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;)V

    goto :goto_0

    .line 62
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI$MainHandler;->this$0:Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->access$100(Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;)V

    goto :goto_0

    .line 59
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI$MainHandler;->this$0:Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;->access$000(Lcom/transsion/camera/app/ui/AbstractThermalThrottleUI;I)V

    :goto_0
    return-void
.end method

.class Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FrontAdjustUIHandler;
.super Landroid/os/Handler;
.source "FrontDualFlashAdjustUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrontAdjustUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FrontAdjustUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$1;)V
    .locals 0

    .line 320
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FrontAdjustUIHandler;-><init>(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 323
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 324
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 345
    :pswitch_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FrontAdjustUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->access$1300(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V

    goto :goto_0

    .line 333
    :pswitch_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FrontAdjustUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->access$1000(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V

    goto :goto_0

    .line 330
    :pswitch_2
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FrontAdjustUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->access$900(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V

    goto :goto_0

    .line 326
    :pswitch_3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FrontAdjustUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->hideAdjustUI()V

    .line 327
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FrontAdjustUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->access$800(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;I)V

    goto :goto_0

    .line 340
    :pswitch_4
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FrontAdjustUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->access$800(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;I)V

    .line 341
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FrontAdjustUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->access$1202(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Z)Z

    .line 342
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FrontAdjustUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->hideAdjustUI()V

    goto :goto_0

    .line 336
    :pswitch_5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FrontAdjustUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->access$1102(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Z)Z

    .line 337
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FrontAdjustUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->doHideAnimation()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

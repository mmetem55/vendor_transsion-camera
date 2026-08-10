.class public Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;
.super Landroid/os/Handler;
.source "AbstractFlashAdjustUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;


# direct methods
.method protected constructor <init>(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 545
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->handlerMsgExt(Landroid/os/Message;)V

    .line 546
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 563
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->access$400(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 564
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->access$500(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->access$200(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_0

    .line 558
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->access$000(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->access$100(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 559
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->access$300(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->access$200(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_0

    .line 555
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->doHideAnimation()V

    goto :goto_0

    .line 551
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->showAdjustUI()V

    .line 552
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->doShowAnimation()V

    goto :goto_0

    .line 548
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->updateAdjustUI(I)V

    :cond_5
    :goto_0
    return-void
.end method

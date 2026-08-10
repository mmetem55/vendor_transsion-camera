.class Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;
.super Landroid/os/Handler;
.source "LuminanceAdjustUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewLuminanceUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$1;)V
    .locals 0

    .line 494
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;-><init>(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 497
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 498
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 536
    :pswitch_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->processLuminanceFlashClick()V

    goto :goto_0

    .line 533
    :pswitch_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->processLuminancePreviewStart()V

    goto :goto_0

    .line 518
    :pswitch_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v2, 0x8

    .line 519
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 522
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->access$700(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 523
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->access$800(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    .line 526
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLuminanceSpreadProgressBar:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;

    if-eqz p1, :cond_2

    .line 527
    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->setAllowedMove(Z)V

    .line 530
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateLuminanceUIState(I)V

    goto :goto_0

    .line 504
    :pswitch_3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateLuminanceUIState(I)V

    .line 505
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    iput-boolean v0, p1, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isAnimationRunning:Z

    .line 506
    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideSpreadUI()V

    .line 507
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    iget-boolean v0, p1, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHintShown:Z

    if-nez v0, :cond_3

    .line 508
    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->showShrinkUI()V

    .line 510
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->setShrinkUIProgress()V

    .line 511
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->access$500(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 512
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->access$600(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    goto :goto_0

    .line 500
    :pswitch_4
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isAnimationRunning:Z

    .line 501
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->doHideAnimation()V

    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

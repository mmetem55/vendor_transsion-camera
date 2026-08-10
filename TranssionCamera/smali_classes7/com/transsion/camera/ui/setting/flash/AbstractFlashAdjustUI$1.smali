.class Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;
.super Ljava/lang/Object;
.source "AbstractFlashAdjustUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 582
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 585
    invoke-static {}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->access$600()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged: key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "key_conflict_ui_state"

    .line 586
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "value_filter_ui_on"

    .line 587
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->access$702(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;Z)Z

    goto :goto_0

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->access$702(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;Z)Z

    .line 593
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsSupport:Z

    if-nez v1, :cond_2

    return-void

    .line 596
    :cond_2
    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "torch"

    .line 597
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 598
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->getLuminanceValue()I

    move-result p2

    iput p2, p1, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLuminanceValue:I

    .line 599
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 600
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 602
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 603
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 605
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 606
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    :goto_1
    return-void
.end method

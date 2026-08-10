.class Lcom/transsion/camera/app/ArCoreMainActivity$4;
.super Ljava/lang/Object;
.source "ArCoreMainActivity.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ArCoreMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ArCoreMainActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ArCoreMainActivity;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/transsion/camera/app/ArCoreMainActivity$4;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideHint()V
    .locals 2

    .line 636
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$4;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1100(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/app/ArCoreMainActivity$UIHandler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 637
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$4;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1100(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/app/ArCoreMainActivity$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyModuleChangeStart(I)Z
    .locals 8

    const-string v0, "0"

    const/4 v1, 0x1

    const-string v2, "This is first time to run AR Shot !!"

    const-string v3, "1"

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne p1, v5, :cond_0

    .line 644
    iget-object v5, p0, Lcom/transsion/camera/app/ArCoreMainActivity$4;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {v5}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1200(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/camera/app/ArCoreMainActivity$4;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {v6}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1200(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    const-string v7, "isFirstRunFaceMoji"

    invoke-virtual {v5, v7, v3, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 646
    invoke-static {}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 648
    iget-object v2, p0, Lcom/transsion/camera/app/ArCoreMainActivity$4;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {v2}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1200(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/ArCoreMainActivity$4;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {v3}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1200(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v0, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 649
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$4;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1300(Lcom/transsion/camera/app/ArCoreMainActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 650
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$4;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1400(Lcom/transsion/camera/app/ArCoreMainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 651
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$4;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1500(Lcom/transsion/camera/app/ArCoreMainActivity;I)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x4

    if-ne p1, v5, :cond_1

    .line 654
    iget-object v5, p0, Lcom/transsion/camera/app/ArCoreMainActivity$4;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {v5}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1200(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/camera/app/ArCoreMainActivity$4;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {v6}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1200(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    const-string v7, "isFirstRunBodyMoji"

    invoke-virtual {v5, v7, v3, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 656
    invoke-static {}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 657
    iget-object v2, p0, Lcom/transsion/camera/app/ArCoreMainActivity$4;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {v2}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1200(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/ArCoreMainActivity$4;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {v3}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1200(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v0, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 658
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$4;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1300(Lcom/transsion/camera/app/ArCoreMainActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 659
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$4;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1400(Lcom/transsion/camera/app/ArCoreMainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 660
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$4;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1500(Lcom/transsion/camera/app/ArCoreMainActivity;I)V

    goto :goto_0

    :cond_1
    move v1, v4

    .line 664
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$4;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$300(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->setShowGuideStatus(Z)V

    return v1
.end method

.method public showHint(Ljava/lang/String;IZ)V
    .locals 3

    .line 621
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$4;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1100(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/app/ArCoreMainActivity$UIHandler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 622
    iget-object v0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$4;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1100(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/app/ArCoreMainActivity$UIHandler;

    move-result-object v0

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p3, :cond_0

    .line 625
    iget-object p2, p0, Lcom/transsion/camera/app/ArCoreMainActivity$4;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {p2}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1100(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/app/ArCoreMainActivity$UIHandler;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, v1, p3, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 627
    iget-object p2, p0, Lcom/transsion/camera/app/ArCoreMainActivity$4;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {p2}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1100(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/app/ArCoreMainActivity$UIHandler;

    move-result-object p2

    invoke-virtual {p2, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 628
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$4;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1100(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/app/ArCoreMainActivity$UIHandler;

    move-result-object p0

    const-wide/16 p2, 0xbb8

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 630
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ArCoreMainActivity$4;->this$0:Lcom/transsion/camera/app/ArCoreMainActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/ArCoreMainActivity;->access$1100(Lcom/transsion/camera/app/ArCoreMainActivity;)Lcom/transsion/camera/app/ArCoreMainActivity$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v1, p2, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.class Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$1;
.super Ljava/lang/Object;
.source "HelpGuideUIManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;
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
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 283
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 286
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->access$400(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Lcom/transsion/camera/app/ui/IHelpGuideUI;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 289
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->access$500(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->access$600(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "torch"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    .line 294
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->access$900(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    .line 295
    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->access$800(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dual_front_flash_state_key"

    const-string v2, "-1"

    .line 294
    invoke-virtual {p1, v1, v2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 296
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frontDualFlashState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    const-string v1, "front_dual_flash_ui_show"

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    invoke-static {v0, p2}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->access$1002(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;Z)Z

    .line 298
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->access$1000(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 299
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->access$400(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Lcom/transsion/camera/app/ui/IHelpGuideUI;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->updateVisibility(Z)V

    .line 300
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->access$1102(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;Z)Z

    goto :goto_0

    .line 301
    :cond_2
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->access$1100(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Z

    move-result p2

    if-eqz p2, :cond_3

    if-eq p1, v0, :cond_3

    .line 302
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->access$400(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Lcom/transsion/camera/app/ui/IHelpGuideUI;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->access$700(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->updateVisibility(Z)V

    :cond_3
    :goto_0
    return-void

    .line 290
    :cond_4
    :goto_1
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "back camera and no torch mode not support front dual flash, help guide ui should show"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 291
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->access$400(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Lcom/transsion/camera/app/ui/IHelpGuideUI;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->access$700(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->updateVisibility(Z)V

    return-void
.end method

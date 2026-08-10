.class Lcom/transsion/camera/app/SlaveScreenSelfHintActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SlaveScreenSelfHintActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity$1;->this$0:Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 148
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "transsion.action.VIP_SELFIE_SHOW_HINT_KEY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "key_vip_selfie_show_hint"

    const/4 v1, 0x0

    .line 151
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "key_vip_selfie_paused"

    .line 152
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 153
    invoke-static {}, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VIPCaptureReceiver, action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", showSelfieHint:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", is enter self hint:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity$1;->this$0:Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;

    .line 154
    invoke-static {p1}, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->access$100(Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;)Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", pause"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity$1;->this$0:Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->access$200(Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;)Lcom/transsion/camera/app/common/manager/AbstractVIPSelfieHintUIManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity$1;->this$0:Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->access$200(Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;)Lcom/transsion/camera/app/common/manager/AbstractVIPSelfieHintUIManager;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Lcom/transsion/camera/app/common/manager/AbstractVIPSelfieHintUIManager;->showOrHideVIPSelfHint(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

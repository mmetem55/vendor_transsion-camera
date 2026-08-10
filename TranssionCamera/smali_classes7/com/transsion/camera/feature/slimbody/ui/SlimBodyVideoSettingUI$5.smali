.class Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$5;
.super Ljava/lang/Object;
.source "SlimBodyVideoSettingUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;
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
.field final synthetic this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)V
    .locals 0

    .line 662
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$5;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 662
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$5;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_video_slimbody_face_beauty"

    .line 665
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$5;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$900(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 667
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$5;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$900(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    const-string v0, "key_video_facebeauty"

    .line 668
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 669
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$5;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$900(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 670
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$5;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$900(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method

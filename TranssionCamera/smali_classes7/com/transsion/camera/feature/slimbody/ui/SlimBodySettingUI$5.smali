.class Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$5;
.super Ljava/lang/Object;
.source "SlimBodySettingUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$5;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateProgressForUI(II)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$5;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$1000(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$5;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$1000(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifyProgress(II)V

    :cond_0
    return-void
.end method

.method public updateStateForUI(I)V
    .locals 6

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$5;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$800(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;Z)V

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$5;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$900(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$5$1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$5$1;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$5;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$5;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$1000(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$5;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$1000(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifyState(IZZ)V

    :cond_0
    if-ne p1, v1, :cond_3

    .line 223
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$5;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$1100(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)I

    move-result v0

    const-string v2, "0"

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    const-string v0, "1"

    .line 224
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$5;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v3}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 225
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$5;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v3}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 227
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_slimbody_facebeauty_switch"

    invoke-virtual {v3, v5, v0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 231
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$5;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v2, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$1200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;Z)V

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$5;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$1000(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$5;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$1000(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifyState(IZZ)V

    .line 236
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$5;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$1300(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;Z)V

    :cond_4
    return-void
.end method

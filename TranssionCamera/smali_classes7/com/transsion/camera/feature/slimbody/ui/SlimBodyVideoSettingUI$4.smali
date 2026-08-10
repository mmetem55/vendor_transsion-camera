.class Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$4;
.super Ljava/lang/Object;
.source "SlimBodyVideoSettingUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .locals 1

    const/16 v0, 0x64

    if-ne v0, p2, :cond_0

    .line 651
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-static {p2}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$900(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 652
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$900(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

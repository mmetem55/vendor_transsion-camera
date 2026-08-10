.class Lcom/transsion/camera/app/common/mode/ModeManager$GotoActivityListenerImpl;
.super Ljava/lang/Object;
.source "ModeManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/ModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GotoActivityListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/ModeManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V
    .locals 0

    .line 948
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGotoActivity(Landroid/content/Intent;I)V
    .locals 2

    .line 952
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 953
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.app.ReviewCameraActivity"

    .line 954
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2300(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/setting/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingManager;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "action_movie_review_activity_start"

    .line 956
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    .line 957
    invoke-virtual {v0, v1, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2400(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 962
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$GotoActivityListenerImpl;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2400(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;->onGotoActivity(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

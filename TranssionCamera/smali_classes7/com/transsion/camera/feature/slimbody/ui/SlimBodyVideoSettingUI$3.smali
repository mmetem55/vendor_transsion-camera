.class Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SlimBodyVideoSettingUI.java"


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

    .line 206
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 209
    invoke-static {}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationEnd mNotifyToUI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$700(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 210
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$700(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$800(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p0

    const/16 p1, 0x41

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 217
    invoke-static {}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationStart mNotifyToUI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$700(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 218
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$700(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$800(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p0

    const/16 p1, 0x40

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_0
    return-void
.end method

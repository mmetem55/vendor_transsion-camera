.class Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SlimBodySettingUI.java"


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

    .line 304
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$8;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 307
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$8;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$1700(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p0

    const/16 p1, 0x41

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$8;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$1700(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p0

    const/16 p1, 0x40

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

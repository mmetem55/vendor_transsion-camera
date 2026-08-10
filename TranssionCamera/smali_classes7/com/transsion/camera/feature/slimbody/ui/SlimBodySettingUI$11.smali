.class Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SlimBodySettingUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->showAnimation()V
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

    .line 887
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$11;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 890
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$11;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$2400(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

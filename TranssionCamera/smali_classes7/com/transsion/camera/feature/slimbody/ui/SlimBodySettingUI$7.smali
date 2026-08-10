.class Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$7;
.super Ljava/lang/Object;
.source "SlimBodySettingUI.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 291
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$7;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 294
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 295
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$7;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$1400(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$7;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$1400(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$7;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$1500(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;FF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 298
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$7;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$1600(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V

    :cond_0
    return-void
.end method

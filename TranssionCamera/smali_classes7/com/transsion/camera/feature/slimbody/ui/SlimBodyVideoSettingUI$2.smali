.class Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$2;
.super Ljava/lang/Object;
.source "SlimBodyVideoSettingUI.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 193
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 196
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$300(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$300(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$500(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;FF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 200
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$600(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)V

    :cond_0
    return-void
.end method

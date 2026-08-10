.class Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$1;
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

    .line 183
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$1;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 186
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$1;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$300(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$1;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$300(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

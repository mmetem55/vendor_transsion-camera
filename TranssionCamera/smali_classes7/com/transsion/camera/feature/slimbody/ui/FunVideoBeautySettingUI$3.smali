.class Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$3;
.super Ljava/lang/Object;
.source "FunVideoBeautySettingUI.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 108
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->access$300(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->access$300(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->access$400(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->access$500(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)V

    :cond_1
    return-void
.end method

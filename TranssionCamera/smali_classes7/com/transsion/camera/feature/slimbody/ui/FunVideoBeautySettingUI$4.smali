.class Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FunVideoBeautySettingUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;-><init>(Landroid/content/res/Resources;)V
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

    .line 152
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 155
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 159
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 163
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 164
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->access$300(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->access$300(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 167
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->access$600(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;Z)V

    return-void
.end method

.class Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$5;
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

    .line 173
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$5;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 176
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 180
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 181
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$5;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->access$300(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$5;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->access$300(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$5;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->access$600(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 188
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method

.class Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper;->startAnimation(Landroid/content/Context;ZLandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper;

.field final synthetic val$actionPanel:Landroid/view/View;

.field final synthetic val$cancelView:Landroid/view/View;

.field final synthetic val$doneView:Landroid/view/View;

.field final synthetic val$translateDistance:F


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper;Landroid/view/View;Landroid/view/View;Landroid/view/View;F)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper$1;->this$0:Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper;

    iput-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper$1;->val$actionPanel:Landroid/view/View;

    iput-object p3, p0, Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper$1;->val$doneView:Landroid/view/View;

    iput-object p4, p0, Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper$1;->val$cancelView:Landroid/view/View;

    iput p5, p0, Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper$1;->val$translateDistance:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 24
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper$1;->val$actionPanel:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper$1;->val$doneView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper$1;->val$cancelView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper$1;->val$actionPanel:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/feature/funvideo/ui/AnimatorHelper$1;->val$translateDistance:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

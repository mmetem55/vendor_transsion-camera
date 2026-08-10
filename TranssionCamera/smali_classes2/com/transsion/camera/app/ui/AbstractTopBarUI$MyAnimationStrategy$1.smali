.class Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AbstractTopBarUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->handleChildViewAnimationImpl(Landroid/view/View;IZIILandroid/animation/Animator$AnimatorListener;II)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;

.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;->this$1:Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 514
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 516
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_0

    .line 517
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 506
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 507
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_0

    .line 508
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

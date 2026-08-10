.class Lcom/transsion/camera/app/ui/anim/AnimationManager$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/anim/AnimationManager;->startFlipHideCoverAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$8;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 448
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 449
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$8;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->access$1000(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 454
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 455
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$8;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->access$1000(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 443
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method

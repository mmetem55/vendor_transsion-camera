.class Lcom/transsion/camera/app/ui/anim/AnimationManager$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/anim/AnimationManager;->runCoverAnimator(IIIIJ)V
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

    .line 258
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 267
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 268
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->resetRootParentLayout()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 261
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 262
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$6;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->resetRootParentLayout()V

    return-void
.end method

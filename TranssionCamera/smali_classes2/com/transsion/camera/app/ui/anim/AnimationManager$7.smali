.class Lcom/transsion/camera/app/ui/anim/AnimationManager$7;
.super Ljava/lang/Object;
.source "AnimationManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/anim/AnimationManager;->startFlipAnim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

.field final synthetic val$previewView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;Landroid/view/View;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;->val$previewView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 424
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;->val$previewView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 425
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->access$702(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 413
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;->val$previewView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 415
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->access$700(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 416
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->access$702(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)Z

    goto :goto_0

    .line 418
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->access$900(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 406
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;->val$previewView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 407
    iget-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->access$702(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)Z

    .line 408
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$7;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->access$802(Lcom/transsion/camera/app/ui/anim/AnimationManager;Z)Z

    return-void
.end method

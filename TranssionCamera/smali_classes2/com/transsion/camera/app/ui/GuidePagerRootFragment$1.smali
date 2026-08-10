.class Lcom/transsion/camera/app/ui/GuidePagerRootFragment$1;
.super Ljava/lang/Object;
.source "GuidePagerRootFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->exitWithFadeOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$1;->this$0:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$1;->this$0:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->access$102(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 131
    iget-object p1, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$1;->this$0:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->exit()V

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerRootFragment$1;->this$0:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->access$102(Lcom/transsion/camera/app/ui/GuidePagerRootFragment;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

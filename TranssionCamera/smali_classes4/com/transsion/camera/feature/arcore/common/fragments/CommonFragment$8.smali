.class Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CommonFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->doTranslationYdownAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$8;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 568
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$8;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$702(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 573
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$8;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mPlane:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 574
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 576
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$8;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$702(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 581
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$8;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$702(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;Z)Z

    return-void
.end method

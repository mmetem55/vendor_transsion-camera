.class Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$7;
.super Ljava/lang/Object;
.source "CommonFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->selectVoiceType(I)V
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

    .line 433
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$7;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 445
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$7;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$600(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)Landroid/widget/TextView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 440
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$7;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$600(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)Landroid/widget/TextView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

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

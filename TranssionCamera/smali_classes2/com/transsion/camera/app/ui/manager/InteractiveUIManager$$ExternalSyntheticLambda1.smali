.class public final synthetic Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

.field public final synthetic f$1:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda1;->f$1:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda1;->f$1:Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->$r8$lambda$-bqrxxq8GmBgF-RQbSeJOMB1d54(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

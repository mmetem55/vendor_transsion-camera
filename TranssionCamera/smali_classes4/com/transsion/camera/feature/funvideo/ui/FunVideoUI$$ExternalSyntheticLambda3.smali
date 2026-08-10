.class public final synthetic Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/view/ViewGroup$MarginLayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;ZLandroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    iput-boolean p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$$ExternalSyntheticLambda3;->f$1:Z

    iput-object p3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$$ExternalSyntheticLambda3;->f$2:Landroid/view/ViewGroup$MarginLayoutParams;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$$ExternalSyntheticLambda3;->f$1:Z

    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$$ExternalSyntheticLambda3;->f$2:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->$r8$lambda$mI4LLDAae81i8bmggiJxQsPPtAE(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;ZLandroid/view/ViewGroup$MarginLayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

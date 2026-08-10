.class Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$2;
.super Ljava/lang/Object;
.source "TakePictureCallBackView.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$2;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$2;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p3, 0x12c

    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$2;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/arcore/R$dimen;->picture_translation_end_x:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$2$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$2$1;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$2;)V

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 80
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

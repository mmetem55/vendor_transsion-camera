.class Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$2$1;
.super Ljava/lang/Object;
.source "TakePictureCallBackView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$2;->onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$2;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$2;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$2$1;->this$1:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$2$1;->this$1:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$2;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView$2;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

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

.class Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$2;
.super Ljava/lang/Object;
.source "ARCoreFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 72
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    return p2

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mArCoreSwitchButton:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFacemojiSwitchButton:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 83
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3

    goto :goto_0

    .line 86
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 87
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mArCoreSwitchButton:Landroid/view/View;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->viewDisappearaAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 91
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    .line 94
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :goto_0
    return p2
.end method

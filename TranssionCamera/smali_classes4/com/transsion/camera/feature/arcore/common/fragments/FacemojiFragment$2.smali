.class Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$2;
.super Ljava/lang/Object;
.source "FacemojiFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 86
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    return p2

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFacemojiSwitchButton:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mArCoreSwitchButton:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 97
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3

    goto :goto_0

    .line 100
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 101
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFacemojiSwitchButton:Landroid/view/View;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->viewDisappearaAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 105
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    .line 108
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$2;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :goto_0
    return p2
.end method

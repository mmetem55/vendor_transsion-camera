.class Lcom/transsion/camera/app/ui/BaseAppUI$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseAppUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;->runBottomBarRootAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/BaseAppUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .locals 0

    .line 3415
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$3;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 3418
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 3419
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$3;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3420
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$3;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget v0, p1, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    iget-object v1, p1, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateBottomBarLayout(IIZ)V

    .line 3421
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$3;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$4800(Lcom/transsion/camera/app/ui/BaseAppUI;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

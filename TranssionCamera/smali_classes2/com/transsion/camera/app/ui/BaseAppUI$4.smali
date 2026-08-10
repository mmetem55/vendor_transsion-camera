.class Lcom/transsion/camera/app/ui/BaseAppUI$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseAppUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;->sinkUI(ZIZ)V
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

    .line 3527
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$4;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 3542
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$4;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3543
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 3545
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$4;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz p0, :cond_1

    .line 3546
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->setEnable(Z)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 3530
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$4;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$4900(Lcom/transsion/camera/app/ui/BaseAppUI;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3531
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$4;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 3532
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 3533
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$4;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateGuideRightRootVisibleState(I)V

    .line 3535
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$4;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    if-eqz p0, :cond_1

    .line 3536
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->setEnable(Z)V

    :cond_1
    return-void
.end method

.class Lcom/transsion/camera/app/ui/BaseAppUI$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseAppUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;->runRootAnimatorWhenFormChanged(IZ)V
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

    .line 3997
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$6;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 4010
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 4011
    invoke-static {}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "[FoldUIForm]runRootAnimatorWhenFormChanged mRootAnimatorInSet onAnimationCancel"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4012
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$6;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIRoot:Landroid/view/ViewGroup;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 4013
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$6;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeInflateRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 4014
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$6;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 4015
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$6;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/16 v0, 0xa1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 4016
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$6;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenFormResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz p0, :cond_0

    const-string p1, "screen_form_state"

    const-string v0, "form_change_end"

    .line 4017
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 4000
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 4001
    invoke-static {}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "[FoldUIForm]runRootAnimatorWhenFormChanged end"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4002
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$6;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/16 v0, 0xa1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 4003
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$6;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenFormResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    if-eqz p0, :cond_0

    const-string p1, "screen_form_state"

    const-string v0, "form_change_end"

    .line 4004
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

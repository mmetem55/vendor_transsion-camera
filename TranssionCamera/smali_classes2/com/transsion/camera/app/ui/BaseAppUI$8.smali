.class Lcom/transsion/camera/app/ui/BaseAppUI$8;
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

.field final synthetic val$screenFormType:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;I)V
    .locals 0

    .line 4047
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$8;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iput p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI$8;->val$screenFormType:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 4062
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 4063
    invoke-static {}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "[FoldUIForm]runRootAnimatorWhenFormChanged mRootAnimatorOutSet onAnimationCancel"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4064
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$8;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/BaseAppUI;->mMainCtrlLayerRootParent:Landroid/view/ViewGroup;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 4065
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$8;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 4066
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$8;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeInflateRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 4067
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$8;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 4050
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 4051
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$8;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$8;->val$screenFormType:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$5100(Lcom/transsion/camera/app/ui/BaseAppUI;IZ)V

    .line 4052
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$8;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->access$500(Lcom/transsion/camera/app/ui/BaseAppUI;)Lcom/transsion/camera/app/ui/BaseAppUI$UIHandler;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/ui/BaseAppUI$8$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$8$1;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI$8;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

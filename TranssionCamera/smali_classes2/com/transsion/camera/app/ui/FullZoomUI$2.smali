.class Lcom/transsion/camera/app/ui/FullZoomUI$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FullZoomUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/FullZoomUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$2;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 401
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 402
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$2;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setEnable(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 395
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 396
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$2;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setEnable(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 389
    iget-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$2;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/FullZoomUI;->access$700(Lcom/transsion/camera/app/ui/FullZoomUI;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 390
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$2;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setEnable(Z)V

    return-void
.end method

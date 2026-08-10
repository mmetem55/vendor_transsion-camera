.class Lcom/transsion/camera/app/ui/FullZoomUI$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FullZoomUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/FullZoomUI;->hideWideCamera()V
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

    .line 420
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$3;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private updateView()V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$3;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->access$700(Lcom/transsion/camera/app/ui/FullZoomUI;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 430
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$3;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->access$700(Lcom/transsion/camera/app/ui/FullZoomUI;)Landroid/view/ViewGroup;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 435
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 436
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI$3;->updateView()V

    .line 437
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$3;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setEnable(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 423
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 424
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/FullZoomUI$3;->updateView()V

    .line 425
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$3;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setEnable(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 442
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 443
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$3;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->setEnable(Z)V

    return-void
.end method

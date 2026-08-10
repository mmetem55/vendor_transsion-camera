.class Lcom/transsion/camera/app/ui/FrontWideCameraUI$2;
.super Ljava/lang/Object;
.source "FrontWideCameraUI.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/FrontWideCameraUI;->translateWideCamera(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

.field final synthetic val$fadeOut:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Z)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$2;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$2;->val$fadeOut:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 290
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$2;->val$fadeOut:Z

    if-eqz p1, :cond_0

    .line 291
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$2;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$300(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Landroid/view/ViewGroup;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 283
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$2;->val$fadeOut:Z

    if-eqz p1, :cond_0

    .line 284
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$2;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$300(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Landroid/view/ViewGroup;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$2;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->access$300(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Landroid/view/ViewGroup;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

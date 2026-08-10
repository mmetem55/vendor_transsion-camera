.class Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AbstractCameraSwitcherUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->runAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 236
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 237
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->mCameraSwitcherView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 238
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->access$400(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->access$500(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->access$600(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;II)V

    .line 239
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->access$700(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

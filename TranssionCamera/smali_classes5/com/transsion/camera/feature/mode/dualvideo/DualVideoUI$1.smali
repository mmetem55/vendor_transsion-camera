.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DualVideoUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->access$000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->access$000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DualVideoPreviewUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Landroid/view/ViewGroup;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 110
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;Z)V

    .line 111
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Landroid/view/ViewGroup;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$1;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;Z)V

    return-void
.end method

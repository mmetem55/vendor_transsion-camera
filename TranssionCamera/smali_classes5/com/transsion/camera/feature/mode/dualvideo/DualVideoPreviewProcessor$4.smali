.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DualVideoPreviewProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->runMainScreenAnimator(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V
    .locals 0

    .line 1493
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$4;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1496
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1497
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$4;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$4;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    .line 1498
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1499
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$4;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$3802(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)Z

    :cond_1
    return-void
.end method

.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DualVideoPreviewUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->StartDualDeviceButtonAnimation()V
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

    .line 753
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$3;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 761
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$3;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$1200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 756
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$3;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->access$1200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

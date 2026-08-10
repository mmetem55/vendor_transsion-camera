.class Lcom/transsion/camera/app/ui/AbstractPreviewUI$5;
.super Ljava/lang/Object;
.source "AbstractPreviewUI.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractPreviewUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .locals 0

    .line 1009
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1018
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$800(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f08037a

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1019
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$300(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    move-result-object p0

    const/16 p1, 0x67

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1012
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$800(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1013
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$5;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$800(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

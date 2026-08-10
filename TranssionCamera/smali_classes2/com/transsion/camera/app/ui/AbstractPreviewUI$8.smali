.class Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;
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

    .line 1065
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1073
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$1100(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1074
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$1100(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$1100(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$900(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1075
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$8;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$1000(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

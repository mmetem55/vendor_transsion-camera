.class Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AODExitUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->dismissExitTipsIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$1;->this$1:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 497
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 498
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$1;->this$1:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->this$0:Lcom/transsion/camera/app/ui/AODExitUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AODExitUI;->access$2100(Lcom/transsion/camera/app/ui/AODExitUI;)Landroid/widget/TextView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 503
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 504
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$1;->this$1:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->this$0:Lcom/transsion/camera/app/ui/AODExitUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AODExitUI;->access$2100(Lcom/transsion/camera/app/ui/AODExitUI;)Landroid/widget/TextView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 491
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 492
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$1;->this$1:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;->this$0:Lcom/transsion/camera/app/ui/AODExitUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AODExitUI;->access$2100(Lcom/transsion/camera/app/ui/AODExitUI;)Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

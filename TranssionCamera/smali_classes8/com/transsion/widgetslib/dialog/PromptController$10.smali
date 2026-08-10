.class Lcom/transsion/widgetslib/dialog/PromptController$10;
.super Ljava/lang/Object;
.source "PromptController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/PromptController;->setupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/dialog/PromptController;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/view/ViewGroup;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$10;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController$10;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 600
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$10;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController$10;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {v1}, Lcom/transsion/widgetslib/dialog/PromptController;->access$1200(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$10;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    .line 601
    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/PromptController;->access$1300(Lcom/transsion/widgetslib/dialog/PromptController;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$10;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/PromptController;->access$1400(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController$10;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {v1}, Lcom/transsion/widgetslib/dialog/PromptController;->access$1300(Lcom/transsion/widgetslib/dialog/PromptController;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$10;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/PromptController;->access$1400(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x3

    .line 603
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v2, 0xc

    .line 604
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 605
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController$10;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {v2}, Lcom/transsion/widgetslib/dialog/PromptController;->access$1400(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController$10;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 609
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 610
    sget v0, Lcom/transsion/widgetslib/R$id;->os_module_dialog_damping_layout_title:I

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v0, 0x2

    .line 611
    sget v1, Lcom/transsion/widgetslib/R$id;->os_module_dialog_custom_view:I

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 612
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$10;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

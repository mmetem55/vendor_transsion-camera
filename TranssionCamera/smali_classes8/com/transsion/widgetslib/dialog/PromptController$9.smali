.class Lcom/transsion/widgetslib/dialog/PromptController$9;
.super Ljava/lang/Object;
.source "PromptController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/PromptController;->setList(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/dialog/PromptController;

.field final synthetic val$listener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$9;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController$9;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 488
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$9;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    .line 489
    iget-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController$9;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p2}, Lcom/transsion/widgetslib/dialog/PromptController;->access$700(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/content/DialogInterface;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 490
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$9;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->access$700(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/content/DialogInterface;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method

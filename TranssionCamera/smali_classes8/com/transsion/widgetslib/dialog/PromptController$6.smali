.class Lcom/transsion/widgetslib/dialog/PromptController$6;
.super Ljava/lang/Object;
.source "PromptController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/PromptController;->setMultiChoiceList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/dialog/PromptController;

.field final synthetic val$listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->val$listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

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

    .line 406
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->val$listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->access$1200(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->access$1000(Lcom/transsion/widgetslib/dialog/PromptController;)Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 407
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    iget-object p2, p1, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItems:[Z

    if-eqz p2, :cond_0

    .line 408
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->access$1000(Lcom/transsion/widgetslib/dialog/PromptController;)Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->setSelectedPst(I)V

    .line 410
    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->access$1100(Lcom/transsion/widgetslib/dialog/PromptController;)V

    .line 411
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->val$listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    .line 412
    invoke-static {p2}, Lcom/transsion/widgetslib/dialog/PromptController;->access$700(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/content/DialogInterface;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->access$1000(Lcom/transsion/widgetslib/dialog/PromptController;)Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->isItemChecked(I)Z

    move-result p0

    .line 411
    invoke-interface {p1, p2, p3, p0}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    :cond_1
    return-void
.end method

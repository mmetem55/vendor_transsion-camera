.class Lcom/transsion/widgetslib/dialog/PromptController$5;
.super Ljava/lang/Object;
.source "PromptController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/PromptController;->setSingleChoiceList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V
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

    .line 306
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$5;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController$5;->val$listener:Landroid/content/DialogInterface$OnClickListener;

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

    .line 309
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$5;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    .line 310
    iget-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController$5;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p2}, Lcom/transsion/widgetslib/dialog/PromptController;->access$700(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/content/DialogInterface;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 313
    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$5;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->access$1000(Lcom/transsion/widgetslib/dialog/PromptController;)Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 314
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$5;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->access$1000(Lcom/transsion/widgetslib/dialog/PromptController;)Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->setSelectedPst(I)V

    .line 316
    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$5;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->access$1100(Lcom/transsion/widgetslib/dialog/PromptController;)V

    return-void
.end method

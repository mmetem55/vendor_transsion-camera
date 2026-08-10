.class Lcom/transsion/widgetslib/widget/FootOperationBar$2;
.super Ljava/lang/Object;
.source "FootOperationBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/FootOperationBar;->addItemView(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/FootOperationBar;I)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$2;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iput p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 377
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$2;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$400(Lcom/transsion/widgetslib/widget/FootOperationBar;)Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 378
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$2;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$400(Lcom/transsion/widgetslib/widget/FootOperationBar;)Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;

    move-result-object p1

    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$2;->val$index:I

    invoke-interface {p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;->onItemClick(I)V

    .line 381
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$2;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$500(Lcom/transsion/widgetslib/widget/FootOperationBar;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 382
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$2;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$2;->val$index:I

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setItemSelectState(I)V

    goto :goto_0

    .line 384
    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$2;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iget p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$2;->val$index:I

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$600(Lcom/transsion/widgetslib/widget/FootOperationBar;IZ)V

    :cond_1
    :goto_0
    return-void
.end method

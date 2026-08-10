.class Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter$1;
.super Ljava/lang/Object;
.source "FootOperationBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;I)V
    .locals 0

    .line 1031
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter$1;->this$1:Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;

    iput p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1034
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter$1;->this$1:Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;

    iget-object p1, p1, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$400(Lcom/transsion/widgetslib/widget/FootOperationBar;)Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1035
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter$1;->this$1:Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;

    iget-object p1, p1, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$400(Lcom/transsion/widgetslib/widget/FootOperationBar;)Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;

    move-result-object p1

    iget v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter$1;->val$index:I

    invoke-interface {p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar$OnFootOptBarClickListener;->onItemClick(I)V

    .line 1037
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter$1;->this$1:Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$300(Lcom/transsion/widgetslib/widget/FootOperationBar;)Landroid/widget/ListPopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    return-void
.end method

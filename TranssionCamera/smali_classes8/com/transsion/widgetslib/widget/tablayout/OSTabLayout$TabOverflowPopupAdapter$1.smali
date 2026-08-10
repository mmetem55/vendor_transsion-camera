.class Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter$1;
.super Ljava/lang/Object;
.source "OSTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;I)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter$1;->this$1:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;

    iput p2, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 313
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter$1;->this$1:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;

    iget-object p1, p1, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;->this$0:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->access$700(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 314
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter$1;->this$1:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;

    iget-object p1, p1, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;->this$0:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->access$700(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$OnItemClickListener;->onItemClick(I)V

    .line 316
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter$1;->this$1:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;->this$0:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->access$800(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)Landroid/widget/ListPopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    return-void
.end method

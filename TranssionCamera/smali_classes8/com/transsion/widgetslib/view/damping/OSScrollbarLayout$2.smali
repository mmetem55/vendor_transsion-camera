.class Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "OSScrollbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->setOverScrollView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

.field final synthetic val$view:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$2;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    iput-object p2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$2;->val$view:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 182
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 183
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$2;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    if-lez p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$202(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Z)Z

    .line 184
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$2;->val$view:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    .line 185
    iget-object p2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$2;->val$view:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p2

    .line 187
    iget-object p3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$2;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$2;->val$view:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p3, v0, p2, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$300(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroid/view/View;II)V

    .line 188
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$2;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$400(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    return-void
.end method

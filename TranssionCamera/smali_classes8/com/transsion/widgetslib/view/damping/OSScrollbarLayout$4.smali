.class Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$4;
.super Ljava/lang/Object;
.source "OSScrollbarLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->drawScrollBar()V
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

    .line 222
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$4;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    iput-object p2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$4;->val$view:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$4;->val$view:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    .line 226
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$4;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$500(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$4;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {v1, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$502(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)I

    .line 231
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$4;->val$view:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    .line 232
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$4;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$602(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)I

    .line 234
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$4;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$4;->val$view:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$500(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I

    move-result v3

    invoke-static {v1, v2, v3, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$300(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroid/view/View;II)V

    .line 236
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$4;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$700(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    return-void
.end method

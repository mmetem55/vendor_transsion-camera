.class Lcom/transsion/widgetslib/adapter/RecyclerAdapter$1;
.super Ljava/lang/Object;
.source "RecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->onBindViewHolder(Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/adapter/RecyclerAdapter;

.field final synthetic val$data:Ljava/lang/Object;

.field final synthetic val$pst:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/adapter/RecyclerAdapter;Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$1;->this$0:Lcom/transsion/widgetslib/adapter/RecyclerAdapter;

    iput-object p2, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$1;->val$data:Ljava/lang/Object;

    iput p4, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$1;->val$pst:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 36
    iget-object p1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$1;->this$0:Lcom/transsion/widgetslib/adapter/RecyclerAdapter;

    iget-object v0, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$1;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$1;->val$data:Ljava/lang/Object;

    iget v2, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$1;->val$pst:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->onItemClick(Landroid/view/View;Ljava/lang/Object;I)V

    .line 38
    iget-object p1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$1;->this$0:Lcom/transsion/widgetslib/adapter/RecyclerAdapter;

    iget-object v0, p1, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 39
    iget-object v2, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$1;->val$view:Landroid/view/View;

    iget v3, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$1;->val$pst:I

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

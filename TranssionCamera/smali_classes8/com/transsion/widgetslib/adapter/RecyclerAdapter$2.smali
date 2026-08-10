.class Lcom/transsion/widgetslib/adapter/RecyclerAdapter$2;
.super Ljava/lang/Object;
.source "RecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 46
    iput-object p1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$2;->this$0:Lcom/transsion/widgetslib/adapter/RecyclerAdapter;

    iput-object p2, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$2;->val$data:Ljava/lang/Object;

    iput p4, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$2;->val$pst:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 49
    iget-object p1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$2;->this$0:Lcom/transsion/widgetslib/adapter/RecyclerAdapter;

    iget-object v0, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$2;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$2;->val$data:Ljava/lang/Object;

    iget p0, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$2;->val$pst:I

    invoke-virtual {p1, v0, v1, p0}, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->onItemLongClick(Landroid/view/View;Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.class Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter$1;
.super Ljava/lang/Object;
.source "RvAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/slimbody/holder/RvHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;

.field final synthetic val$holder:Lcom/transsion/camera/feature/slimbody/holder/RvHolder;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;Lcom/transsion/camera/feature/slimbody/holder/RvHolder;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter$1;->this$0:Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;

    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter$1;->val$holder:Lcom/transsion/camera/feature/slimbody/holder/RvHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter$1;->this$0:Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;

    iget-object v0, v0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mListener:Lcom/transsion/camera/feature/slimbody/listener/RvListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter$1;->val$holder:Lcom/transsion/camera/feature/slimbody/holder/RvHolder;

    .line 62
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    sget v1, Lcom/transsion/camera/feature/slimbody/R$layout;->slimbody_fake_item:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter$1;->val$holder:Lcom/transsion/camera/feature/slimbody/holder/RvHolder;

    .line 63
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    sget v1, Lcom/transsion/camera/feature/slimbody/R$layout;->slimbody_feature_back:I

    if-eq v0, v1, :cond_3

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter$1;->val$holder:Lcom/transsion/camera/feature/slimbody/holder/RvHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-static {}, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onClick]  mSelectedPosition:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter$1;->this$0:Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;

    iget v3, v3, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mSelectedPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter$1;->this$0:Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;

    iget v2, v1, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mSelectedPosition:I

    if-ne v2, v0, :cond_2

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    iget-object p0, v1, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mListener:Lcom/transsion/camera/feature/slimbody/listener/RvListener;

    iget-object v1, v1, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, p1, v1, v0}, Lcom/transsion/camera/feature/slimbody/listener/RvListener;->onClickSelectedItem(Landroid/view/View;Ljava/lang/Object;I)V

    goto :goto_1

    .line 72
    :cond_2
    :goto_0
    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->updateSelectedItemByPosition(I)V

    .line 73
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter$1;->this$0:Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;

    iget-object v2, v1, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mListener:Lcom/transsion/camera/feature/slimbody/listener/RvListener;

    iget-object v1, v1, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter$1;->this$0:Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;

    iget p0, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mOldSelectedPosition:I

    invoke-interface {v2, p1, v1, v0, p0}, Lcom/transsion/camera/feature/slimbody/listener/RvListener;->onItemSelected(Landroid/view/View;Ljava/lang/Object;II)V

    :cond_3
    :goto_1
    return-void
.end method

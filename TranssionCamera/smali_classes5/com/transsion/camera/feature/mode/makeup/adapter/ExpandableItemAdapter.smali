.class public abstract Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;
.source "ExpandableItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter$ExpandableToggleListener;
    }
.end annotation


# instance fields
.field private mExpandableToggleListener:Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter$ExpandableToggleListener;

.field protected mLowLight:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->mExpandableToggleListener:Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter$ExpandableToggleListener;

    return-void
.end method


# virtual methods
.method public collapse(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    .line 61
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 62
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->getItem(I)Lcom/transsion/camera/feature/mode/makeup/adapter/Item;

    move-result-object v3

    .line 63
    iget-object v3, v3, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->uniqueId:Ljava/lang/String;

    iget-object v4, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->uniqueId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->getAllItem()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 68
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;

    .line 70
    iget-object v3, v3, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->parentUniqueId:Ljava/lang/String;

    iget-object v4, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->uniqueId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 75
    :cond_3
    iput-boolean v0, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->isExpand:Z

    add-int/lit8 v0, v1, 0x1

    .line 76
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->getSubItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 77
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->mExpandableToggleListener:Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter$ExpandableToggleListener;

    if-eqz p0, :cond_4

    .line 79
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter$ExpandableToggleListener;->onCollapse(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    :cond_4
    return-void
.end method

.method public expand(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 27
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 28
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->getItem(I)Lcom/transsion/camera/feature/mode/makeup/adapter/Item;

    move-result-object v2

    .line 29
    iget-object v2, v2, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->uniqueId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->uniqueId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->getAllItem()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->getAllItem()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 35
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;

    .line 37
    iget-object v2, v2, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->parentUniqueId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->uniqueId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 41
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->getSubItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 42
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->getAllItem()Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->getSubItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    :cond_4
    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->isExpand:Z

    add-int/lit8 v1, v0, 0x1

    .line 46
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->getSubItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 47
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 49
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->mExpandableToggleListener:Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter$ExpandableToggleListener;

    if-eqz v1, :cond_5

    .line 50
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->getAllItem()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {v1, p0, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter$ExpandableToggleListener;->onExpand(Ljava/util/ArrayList;Lcom/transsion/camera/feature/mode/makeup/adapter/Item;I)V

    :cond_5
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 10
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;I)V

    return-void
.end method

.method public abstract onBindViewHolder(Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;I)V
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;

    move-result-object p0

    return-object p0
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;
.end method

.method public setExpandableToggleListener(Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter$ExpandableToggleListener;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->mExpandableToggleListener:Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter$ExpandableToggleListener;

    return-void
.end method

.method public toggle(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V
    .locals 1

    .line 96
    iget-boolean v0, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->isExpand:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->isExpand:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->expand(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->collapse(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    :goto_0
    return-void
.end method

.method public updateLowLight(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->mLowLight:Z

    .line 106
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

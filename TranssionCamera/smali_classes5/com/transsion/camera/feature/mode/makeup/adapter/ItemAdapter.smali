.class public abstract Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;",
        ">;"
    }
.end annotation


# instance fields
.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/makeup/adapter/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->mItems:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/makeup/adapter/Item;",
            ">;)V"
        }
    .end annotation

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-boolean v0, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->isExpand:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 36
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->getSubItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->getSubItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getAllItem()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/makeup/adapter/Item;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->mItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getItem(I)Lcom/transsion/camera/feature/mode/makeup/adapter/Item;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;

    return-object p0
.end method

.method public getItem(II)Lcom/transsion/camera/feature/mode/makeup/adapter/Item;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;

    .line 70
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->getType()I

    move-result v3

    if-ne v3, p1, :cond_0

    iget v3, v2, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->id:I

    if-ne v3, p2, :cond_0

    move-object v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getItemCount()I
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->getType()I

    move-result p0

    return p0
.end method

.method public getItems(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/makeup/adapter/Item;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 81
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;

    .line 82
    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->getType()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 83
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public setItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 96
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 97
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->getItem(I)Lcom/transsion/camera/feature/mode/makeup/adapter/Item;

    move-result-object v2

    .line 98
    iget-object v2, v2, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->uniqueId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->uniqueId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->getAllItem()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->getAllItem()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 106
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 107
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;

    .line 108
    iget-object v2, v2, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->parentUniqueId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->uniqueId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 113
    :cond_3
    iget-boolean v1, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->isExpand:Z

    if-eqz v1, :cond_4

    .line 114
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->getSubItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 115
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->getAllItem()Ljava/util/ArrayList;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->getSubItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    :cond_4
    return-void
.end method

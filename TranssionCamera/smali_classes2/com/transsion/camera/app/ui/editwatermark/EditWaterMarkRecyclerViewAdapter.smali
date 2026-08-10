.class public Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "EditWaterMarkRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mEditWatermarkUIItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;->mEditWatermarkUIItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getEditWaterMarkUIItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;->mEditWatermarkUIItems:Ljava/util/List;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;->mEditWatermarkUIItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;->onBindViewHolder(Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter$ItemViewHolder;I)V
    .locals 2

    .line 47
    iget-object v0, p1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter$ItemViewHolder;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;->mEditWatermarkUIItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p1, p1, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter$ItemViewHolder;->mIconView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;->mEditWatermarkUIItems:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getImageId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter$ItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter$ItemViewHolder;
    .locals 2

    .line 41
    new-instance p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter$ItemViewHolder;

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 41
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0071

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public updateItemsList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;",
            ">;)V"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;->mEditWatermarkUIItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    iget-object v0, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;->mEditWatermarkUIItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

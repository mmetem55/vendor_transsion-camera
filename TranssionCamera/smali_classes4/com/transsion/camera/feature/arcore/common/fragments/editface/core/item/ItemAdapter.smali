.class public abstract Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemSelectListener;,
        Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private itemSelectListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemSelectListener;

.field private mContext:Landroid/content/Context;

.field private mLayoutId:I

.field protected mSelectPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->mSelectPosition:I

    .line 30
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->mSelectPosition:I

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->mContext:Landroid/content/Context;

    .line 26
    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->mLayoutId:I

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemSelectListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->itemSelectListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemSelectListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->getSize()I

    move-result p0

    return p0
.end method

.method public abstract getRes(I)I
.end method

.method public abstract getSize()I
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 15
    check-cast p1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemHolder;I)V
    .locals 2

    .line 41
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p2

    .line 42
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->getRes(I)I

    move-result v0

    .line 44
    sget v1, Lcom/transsion/camera/feature/arcore/R$drawable;->edit_face_item_none:I

    if-ne v0, v1, :cond_1

    .line 45
    iget-object v0, p1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemHolder;->mItemImg:Landroid/widget/ImageView;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->mSelectPosition:I

    if-ne v1, p2, :cond_0

    sget v1, Lcom/transsion/camera/feature/arcore/R$drawable;->edit_face_item_none_selected:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/camera/feature/arcore/R$drawable;->edit_face_item_none_unselected:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 47
    :cond_1
    iget-object v1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemHolder;->mItemImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    :goto_1
    iget-object v0, p1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemHolder;->mSelect:Landroid/view/View;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->mSelectPosition:I

    if-ne v1, p2, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$1;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemHolder;
    .locals 3

    .line 36
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemHolder;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->mLayoutId:I

    if-nez v1, :cond_0

    sget v1, Lcom/transsion/camera/feature/arcore/R$layout;->layout_edit_face_item:I

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemHolder;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setItemSelectListener(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemSelectListener;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->itemSelectListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemSelectListener;

    return-void
.end method

.method public setSelectPosition(I)V
    .locals 1

    .line 77
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->mSelectPosition:I

    if-ne v0, p1, :cond_0

    return-void

    .line 79
    :cond_0
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->mSelectPosition:I

    .line 80
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 81
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

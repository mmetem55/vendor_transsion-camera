.class public Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;
.super Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;
.source "EditFaceItemFragment.java"


# instance fields
.field private itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/faceunity/pta_art/entity/BundleRes;",
            ">;"
        }
    .end annotation
.end field

.field private mItemChangeListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;

.field private mItemRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

.field private mLastSelectPos:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;->mLastSelectPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;->mItemChangeListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;

    return-object p0
.end method


# virtual methods
.method public initData(Ljava/util/List;ILcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/faceunity/pta_art/entity/BundleRes;",
            ">;I",
            "Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;",
            ")V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;->itemList:Ljava/util/List;

    .line 72
    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;->mLastSelectPos:I

    .line 73
    iput-object p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;->mItemChangeListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 33
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 34
    sget p3, Lcom/transsion/camera/feature/arcore/R$layout;->fragment_edit_face_item:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mRootView:Landroid/view/View;

    .line 36
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;->itemList:Ljava/util/List;

    if-nez p2, :cond_0

    return-object p1

    .line 41
    :cond_0
    sget p2, Lcom/transsion/camera/feature/arcore/R$id;->item_recycler:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;->mItemRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    .line 42
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->isExpandUI()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->setExpandUI(Z)V

    .line 43
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;->mItemRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;->itemList:Ljava/util/List;

    iget p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;->mLastSelectPos:I

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->init(Ljava/util/List;I)V

    .line 44
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;->mItemRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    new-instance p2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment$1;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->setItemControllerListener(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemSelectListener;)V

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public releaseResource()V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;->mItemRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 59
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 60
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 62
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;->mItemRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemHolder;

    .line 63
    iget-object v2, v2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemHolder;->mItemImg:Landroid/widget/ImageView;

    check-cast v2, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;

    .line 64
    invoke-virtual {v2}, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->releaseResource()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSelectPosition(I)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;->mItemRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    if-eqz p0, :cond_0

    .line 78
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->setSelectPosition(I)V

    :cond_0
    return-void
.end method

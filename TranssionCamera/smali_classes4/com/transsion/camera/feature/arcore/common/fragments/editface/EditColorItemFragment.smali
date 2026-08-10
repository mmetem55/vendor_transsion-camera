.class public Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;
.super Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;
.source "EditColorItemFragment.java"


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private colorList:[[D

.field private itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/faceunity/pta_art/entity/BundleRes;",
            ">;"
        }
    .end annotation
.end field

.field private mColorRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

.field private mColorSelectListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ColorValuesChangeListener;

.field private mItemRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

.field private mItemSelectListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;

.field private mLastSelectColor:I

.field private mLastSelectPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "EditColorItemFragment"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mLastSelectPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mColorRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mItemSelectListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;

    return-object p0
.end method

.method static synthetic access$302(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mLastSelectColor:I

    return p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ColorValuesChangeListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mColorSelectListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ColorValuesChangeListener;

    return-object p0
.end method


# virtual methods
.method public initData([[DILcom/transsion/camera/feature/arcore/common/fragments/editface/core/ColorValuesChangeListener;Ljava/util/List;ILcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[DI",
            "Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ColorValuesChangeListener;",
            "Ljava/util/List<",
            "Lcom/faceunity/pta_art/entity/BundleRes;",
            ">;I",
            "Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;",
            ")V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->colorList:[[D

    .line 117
    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mLastSelectColor:I

    .line 118
    iput-object p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mColorSelectListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ColorValuesChangeListener;

    .line 120
    iput-object p4, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->itemList:Ljava/util/List;

    .line 121
    iput p5, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mLastSelectPos:I

    .line 122
    iput-object p6, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mItemSelectListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;

    return-void
.end method

.method public notifyAllItem(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/faceunity/pta_art/entity/BundleRes;",
            ">;)V"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->itemList:Ljava/util/List;

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mItemRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->notifyAllItem()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 44
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 45
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->isExpandUI()Z

    move-result p3

    if-eqz p3, :cond_0

    sget p3, Lcom/transsion/camera/feature/arcore/R$layout;->fragment_edit_color_item_fold:I

    goto :goto_0

    :cond_0
    sget p3, Lcom/transsion/camera/feature/arcore/R$layout;->fragment_edit_color_item:I

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mRootView:Landroid/view/View;

    .line 47
    sget p2, Lcom/transsion/camera/feature/arcore/R$id;->color_item_recycler:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mItemRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    .line 48
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/arcore/R$id;->color_recycler:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mColorRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    .line 50
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->itemList:Ljava/util/List;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->colorList:[[D

    if-nez p1, :cond_1

    goto :goto_2

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mItemRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->isExpandUI()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->setExpandUI(Z)V

    .line 55
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mItemRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->itemList:Ljava/util/List;

    iget p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mLastSelectPos:I

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->init(Ljava/util/List;I)V

    .line 56
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mItemRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    new-instance p2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment$1;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->setItemControllerListener(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemSelectListener;)V

    .line 74
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mColorRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->isExpandUI()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->setExpandUI(Z)V

    .line 75
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mColorRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->colorList:[[D

    iget p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mLastSelectColor:I

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->init([[DI)V

    .line 76
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mColorRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    iget p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mLastSelectPos:I

    if-lez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 77
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mColorRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    new-instance p2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment$2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment$2;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->setColorSelectListener(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorSelectListener;)V

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mRootView:Landroid/view/View;

    return-object p0

    .line 51
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public releaseResource()V
    .locals 5

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mItemRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    move v2, v1

    .line 91
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 92
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 94
    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mItemRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemHolder;

    .line 95
    iget-object v3, v3, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemHolder;->mItemImg:Landroid/widget/ImageView;

    check-cast v3, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;

    .line 96
    invoke-virtual {v3}, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->releaseResource()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mColorRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    if-eqz v0, :cond_3

    .line 102
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 103
    :goto_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 104
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 106
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mColorRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorHolder;

    .line 107
    iget-object v2, v2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorHolder;->mItemImg:Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;

    .line 108
    invoke-virtual {v2}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->releaseResource()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setSelectPosition(I)V
    .locals 1

    .line 126
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mLastSelectPos:I

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mItemRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->setSelectPosition(I)V

    .line 130
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->mColorRecycler:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    if-eqz p0, :cond_2

    if-lez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 131
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method

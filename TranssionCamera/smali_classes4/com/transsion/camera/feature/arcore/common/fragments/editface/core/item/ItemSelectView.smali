.class public Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "ItemSelectView.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mDefaultSelectItem:I

.field private mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private mIsExpandUI:Z

.field private mItemAdapter:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;

.field private mItemSelectListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemSelectListener;

.field private mSpanCount:I

.field private size:I


# direct methods
.method public static synthetic $r8$lambda$r5kWOuzF_fJP4bxV1B_JgRDlYgE(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->init()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x5

    .line 26
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->mSpanCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->size:I

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemSelectListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->mItemSelectListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemSelectListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->mSpanCount:I

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method private init()V
    .locals 7

    .line 107
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    .line 108
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 111
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->mSpanCount:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->mItemAdapter:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 114
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/arcore/R$dimen;->x3dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 115
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/arcore/R$dimen;->x7dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 116
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/arcore/R$dimen;->x6dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 117
    iget-boolean v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->mIsExpandUI:Z

    if-eqz v3, :cond_1

    const/16 v0, 0x18

    .line 118
    invoke-static {v0}, Lcom/transsion/camera/utils/ResourceUtils;->dpInt(I)I

    move-result v0

    .line 119
    sget v3, Lcom/transsion/camera/feature/arcore/R$dimen;->arcore_edit_face_item_size:I

    invoke-static {v3}, Lcom/transsion/camera/utils/ResourceUtils;->dpRes(I)I

    move-result v3

    .line 120
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->mSpanCount:I

    mul-int/2addr v3, v6

    sub-int/2addr v5, v3

    mul-int/lit8 v3, v6, 0x2

    mul-int/2addr v3, v0

    sub-int/2addr v5, v3

    mul-int/lit8 v6, v6, 0x2

    rsub-int/lit8 v0, v6, 0x2

    div-int/2addr v5, v0

    .line 121
    invoke-virtual {p0, v5, v4, v5, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 122
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$4;

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$4;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;II)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0

    .line 134
    :cond_1
    new-instance v3, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$5;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$5;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;III)V

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 147
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->mItemAdapter:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$6;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->setItemSelectListener(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemSelectListener;)V

    .line 156
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->mDefaultSelectItem:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->scrollToPosition(I)V

    return-void
.end method


# virtual methods
.method public getSelectItem()I
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->mItemAdapter:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->mSelectPosition:I

    return p0
.end method

.method public init(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/faceunity/pta_art/entity/FURes;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->size:I

    .line 59
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$1;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$1;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->mItemAdapter:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;

    .line 70
    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->mDefaultSelectItem:I

    invoke-virtual {v0, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->setSelectPosition(I)V

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->init()V

    return-void
.end method

.method public initHair(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/faceunity/pta_art/entity/FURes;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->size:I

    .line 80
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$2;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$2;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->mItemAdapter:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;

    .line 91
    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->mDefaultSelectItem:I

    invoke-virtual {v0, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->setSelectPosition(I)V

    .line 93
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->mSpanCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, p2, v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 94
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->mItemAdapter:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 96
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 97
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->mItemAdapter:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;

    new-instance p2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$3;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$3;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->setItemSelectListener(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemSelectListener;)V

    return-void
.end method

.method public notifyAllItem()V
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->mItemAdapter:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 161
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$7;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView$7;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setExpandUI(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->mIsExpandUI:Z

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    .line 50
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->mSpanCount:I

    :cond_0
    return-void
.end method

.method public setItem(I)V
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->mItemAdapter:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->setSelectPosition(I)V

    return-void
.end method

.method public setItemControllerListener(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemSelectListener;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->mItemSelectListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter$ItemSelectListener;

    return-void
.end method

.method public setSelectPosition(I)V
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemSelectView;->mItemAdapter:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/item/ItemAdapter;->setSelectPosition(I)V

    return-void
.end method

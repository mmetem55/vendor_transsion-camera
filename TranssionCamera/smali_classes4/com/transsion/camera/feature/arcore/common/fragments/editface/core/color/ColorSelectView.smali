.class public Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "ColorSelectView.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mColorAdapter:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;

.field private mColorList:[[D

.field private mColorSelectListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorSelectListener;

.field private mDefaultSelectColor:I

.field private mExpandUI:Z

.field private mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;)[[D
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->mColorList:[[D

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorSelectListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->mColorSelectListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorSelectListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method


# virtual methods
.method public init([[DI)V
    .locals 3

    .line 47
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->mColorList:[[D

    iget-boolean v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->mExpandUI:Z

    invoke-direct {v0, v1, p1, v2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;-><init>(Landroid/content/Context;[[DZ)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->mColorAdapter:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;

    .line 48
    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->mDefaultSelectColor:I

    invoke-virtual {v0, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->setSelectPosition(I)V

    .line 50
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 51
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->mColorAdapter:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 53
    iget-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->mExpandUI:Z

    if-eqz p1, :cond_0

    .line 54
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$1;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 63
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$2;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/arcore/R$dimen;->color_item_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 74
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$3;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$3;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;I)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 86
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 87
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->mColorAdapter:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;

    new-instance p2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$4;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$4;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->setColorSelectListener(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorSelectListener;)V

    .line 97
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->mDefaultSelectColor:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->scrollToPosition(I)V

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 102
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$5;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView$5;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setColorItem(I)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->mColorAdapter:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->setSelectPosition(I)V

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->mColorAdapter:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->mColorAdapter:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->mDefaultSelectColor:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 121
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->mDefaultSelectColor:I

    return-void
.end method

.method public setColorSelectListener(Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorSelectListener;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->mColorSelectListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter$ColorSelectListener;

    return-void
.end method

.method public setExpandUI(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->mExpandUI:Z

    return-void
.end method

.method public setSelectPosition(I)V
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorSelectView;->mColorAdapter:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/color/ColorAdapter;->setSelectPosition(I)V

    return-void
.end method

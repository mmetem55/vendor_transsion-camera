.class public Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;
.super Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;
.source "FilterRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;,
        Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter<",
        "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;",
        "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsRingScreenLight:Z

.field private mItemSize:I

.field private mOrientation:I


# direct methods
.method public static synthetic $r8$lambda$8-tWIWH46FGj17xy3Tx1LAlMi1g(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->lambda$onBindViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;-><init>(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mIsRingScreenLight:Z

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getOnItemClickListener()Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getOnItemClickListener()Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->onBindViewHolder(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;I)V
    .locals 3

    .line 111
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getCurSelectIndex()I

    move-result v1

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mIsRingScreenLight:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->initViewByItem(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;ZZ)V

    .line 114
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mItemSize:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mOrientation:I

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->updateSizeAndOrientation(II)V

    .line 115
    new-instance v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$1;-><init>(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;)V

    .line 122
    iget-object v1, p1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->root:Landroid/view/View;

    const v2, 0x3f6b851f    # 0.92f

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 123
    iget-object p1, p1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->root:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;
    .locals 1

    .line 105
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$layout;->filter_view_item:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 106
    new-instance p1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public updateItemSize(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mItemSize:I

    return-void
.end method

.method public updateRingScreenLight(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mIsRingScreenLight:Z

    return-void
.end method

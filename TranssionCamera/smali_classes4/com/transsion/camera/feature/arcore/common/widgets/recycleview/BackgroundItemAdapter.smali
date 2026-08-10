.class public Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BackgroundItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$OnItemClickListener;,
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$ItemVH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentPosition:I

.field private final mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;->mCurrentPosition:I

    .line 41
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;->mDataList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;->updateCurrentPosition(I)V

    return-void
.end method

.method private indexByPath(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 77
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;

    .line 79
    iget-object v2, v2, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;->path:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private updateCurrentPosition(I)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;->mListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$OnItemClickListener;->onItemSelected(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;)V

    .line 96
    :cond_0
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;->mCurrentPosition:I

    if-ne v0, p1, :cond_1

    return-void

    .line 99
    :cond_1
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;->mCurrentPosition:I

    .line 100
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 55
    instance-of v0, p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$ItemVH;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 56
    move-object v0, p1

    check-cast v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$ItemVH;

    .line 57
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;

    .line 58
    iget-object v3, v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$ItemVH;->itemView:Landroid/widget/ImageView;

    iget v2, v2, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;->drawableId:I

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$ItemVH;->focusView:Landroid/view/View;

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;->mCurrentPosition:I

    if-ne v2, p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$2;

    invoke-direct {v2, p0, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$2;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 47
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$1;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/arcore/R$layout;->arcore_thumbnail_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$1;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemSelectedListener(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$OnItemClickListener;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;->mListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$OnItemClickListener;

    return-void
.end method

.method public updateCurrentPositionByPath(Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;->indexByPath(Ljava/lang/String;)I

    move-result p1

    .line 89
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;->updateCurrentPosition(I)V

    return-void
.end method

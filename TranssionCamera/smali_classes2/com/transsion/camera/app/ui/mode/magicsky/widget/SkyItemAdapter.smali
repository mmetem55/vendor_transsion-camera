.class public Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SkyItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$OnItemClickListener;,
        Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;
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
.field private isCapturing:Z

.field private mCurrentPosition:I

.field private final mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIsExpand:Z

.field private mListener:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;",
            ">;Z)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mCurrentPosition:I

    .line 25
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->isCapturing:Z

    .line 55
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mDataList:Ljava/util/List;

    .line 56
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mIsExpand:Z

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->isCapturing:Z

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->updateCurrentPosition(I)V

    return-void
.end method

.method private updateCurrentPosition(I)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mListener:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$OnItemClickListener;->onItemSelected(Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;)V

    .line 106
    :cond_0
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mCurrentPosition:I

    if-ne v0, p1, :cond_1

    return-void

    .line 109
    :cond_1
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mCurrentPosition:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 68
    instance-of v0, p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 69
    move-object v0, p1

    check-cast v0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;

    .line 70
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    .line 71
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->itemView:Landroid/widget/ImageView;

    iget v4, v2, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;->drawableId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->viewName:Landroid/widget/TextView;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;->skyName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->viewName:Landroid/widget/TextView;

    iget v3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mCurrentPosition:I

    if-ne v3, p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 74
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->focusView:Landroid/view/View;

    iget v3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mCurrentPosition:I

    if-ne v3, p2, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v0, v0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->viewName:Landroid/widget/TextView;

    iget v2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mCurrentPosition:I

    if-ne v2, p2, :cond_2

    .line 76
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060414

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_2

    .line 77
    :cond_2
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060413

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 75
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    :cond_3
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$1;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;)V

    .line 86
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x3f6b851f    # 0.92f

    invoke-static {v2, v3, v0}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 87
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$2;

    invoke-direct {v2, p0, p2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$2;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 62
    new-instance p2, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 63
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mIsExpand:Z

    if-eqz p0, :cond_0

    const p0, 0x7f0c01a2

    goto :goto_0

    :cond_0
    const p0, 0x7f0c01a1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setCapturing(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->isCapturing:Z

    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mCurrentPosition:I

    .line 114
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$OnItemClickListener;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->mListener:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$OnItemClickListener;

    return-void
.end method

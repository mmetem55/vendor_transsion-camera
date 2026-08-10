.class public Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$ViewHolder;,
        Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/ui/setting/facebeauty/FaceItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$OnItemClickListener;

.field private mSelectedIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/ui/setting/facebeauty/FaceItemData;",
            ">;)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;->mSelectedIndex:I

    .line 96
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;->mItemList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;->mSelectedIndex:I

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;)Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$OnItemClickListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;->mListener:Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;)Ljava/util/List;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;->mItemList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p1, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;->onBindViewHolder(Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$ViewHolder;I)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/facebeauty/FaceItemData;

    if-eqz v0, :cond_1

    .line 69
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget v0, v0, Lcom/transsion/camera/ui/setting/facebeauty/FaceItemData;->drawableId:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    iget v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;->mSelectedIndex:I

    if-ne v0, p2, :cond_0

    .line 71
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 75
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$1;-><init>(Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$ViewHolder;
    .locals 2

    .line 61
    new-instance p0, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0079

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/ui/setting/facebeauty/FaceItemData;",
            ">;)V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;->mItemList:Ljava/util/List;

    return-void
.end method

.method public setOnItemClickListener(Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$OnItemClickListener;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;->mListener:Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$OnItemClickListener;

    return-void
.end method

.method public setSelectedItemById(Ljava/lang/String;)V
    .locals 2

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;->mSelectedIndex:I

    const/4 v0, 0x0

    .line 48
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 49
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/ui/setting/facebeauty/FaceItemData;

    .line 50
    iget-object v1, v1, Lcom/transsion/camera/ui/setting/facebeauty/FaceItemData;->effectId:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    iput v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;->mSelectedIndex:I

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedItemByIndex(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;->mSelectedIndex:I

    .line 36
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

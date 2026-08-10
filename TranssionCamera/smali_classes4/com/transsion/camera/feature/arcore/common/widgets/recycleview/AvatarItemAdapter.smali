.class public Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AvatarItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$OnItemClickListener;,
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$ItemVH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$ItemVH;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentPosition:I

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/faceunity/pta_art/entity/AvatarPTA;",
            ">;"
        }
    .end annotation
.end field

.field private mIsExpandUI:Z

.field private mListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$OnItemClickListener;

.field private mUpdateState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->mCurrentPosition:I

    .line 20
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->mUpdateState:Z

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->updateCurrentPosition(I)V

    return-void
.end method

.method private updateCurrentPosition(I)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/faceunity/pta_art/entity/AvatarPTA;

    if-nez v0, :cond_1

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->mListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$OnItemClickListener;

    if-eqz p0, :cond_0

    .line 98
    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$OnItemClickListener;->onItemClick()V

    :cond_0
    return-void

    .line 102
    :cond_1
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->mCurrentPosition:I

    if-ne v0, p1, :cond_2

    return-void

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->mListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$OnItemClickListener;

    if-eqz v0, :cond_3

    .line 106
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$OnItemClickListener;->onItemSelected(Lcom/faceunity/pta_art/entity/AvatarPTA;)V

    .line 108
    :cond_3
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->mUpdateState:Z

    if-eqz v0, :cond_4

    .line 109
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->mCurrentPosition:I

    .line 110
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$ItemVH;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$ItemVH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$ItemVH;I)V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/faceunity/pta_art/entity/AvatarPTA;

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBigThumbNail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$ItemVH;->itemView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBigThumbNail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 73
    :cond_0
    iget-object v1, p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$ItemVH;->itemView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBigThumbNailRes()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 76
    :cond_1
    iget-object v0, p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$ItemVH;->itemView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->mIsExpandUI:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_add_item_background_fold:I

    goto :goto_0

    :cond_2
    sget v1, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_add_item_background:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    :goto_1
    iget-object v0, p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$ItemVH;->focusView:Landroid/view/View;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->mCurrentPosition:I

    const/4 v2, 0x0

    if-ne v1, p2, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object v0, p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$ItemVH;->itemView:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$1;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object p0, p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$ItemVH;->itemView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$ItemVH;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$ItemVH;
    .locals 2

    .line 62
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$ItemVH;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->mIsExpandUI:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/transsion/camera/feature/arcore/R$layout;->arcore_thumbnail_item_fold:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/camera/feature/arcore/R$layout;->arcore_thumbnail_item:I

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$ItemVH;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setExpendUI(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->mIsExpandUI:Z

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$OnItemClickListener;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->mListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$OnItemClickListener;

    return-void
.end method

.method public setUpdateState(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->mUpdateState:Z

    return-void
.end method

.method public updateAvatar(Lcom/faceunity/pta_art/entity/AvatarPTA;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1

    return-void

    .line 122
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->mUpdateState:Z

    if-eqz v0, :cond_2

    .line 123
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->mCurrentPosition:I

    .line 124
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public updateAvatarPTAList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/faceunity/pta_art/entity/AvatarPTA;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->mDataList:Ljava/util/List;

    .line 51
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

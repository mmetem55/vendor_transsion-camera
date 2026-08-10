.class public Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;
.super Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;
.source "FacemojiThumbnailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter<",
        "Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;",
        "Lcom/faceunity/pta_art/entity/AvatarPTA;",
        ">;"
    }
.end annotation


# static fields
.field private static final FIRST_SELECTED_POSITION_OF_FACEMOJI:I = 0x2

.field private static TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mExpandUI:Z

.field private mRemoveItemAnimator:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FacemojiThumbnailAdapter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/faceunity/pta_art/entity/AvatarPTA;",
            ">;Z)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;-><init>(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;->mRemoveItemAnimator:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

    .line 54
    iput-boolean p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;->mExpandUI:Z

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;)Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;->mRemoveItemAnimator:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

    return-object p0
.end method

.method private setGrayIcon(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 115
    iget-object p0, p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;->mItemImg:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_item_select_none_gray:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    if-ne p2, p0, :cond_1

    .line 117
    iget-object p0, p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;->mItemImg:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_add_item_gray:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateAnimationState(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;I)V
    .locals 0

    .line 122
    invoke-static {}, Lcom/faceunity/pta_art/constant/ResourceJson;->getDefaultAvatarListNum()I

    move-result p0

    if-le p2, p0, :cond_0

    .line 123
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->startShakeAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 0

    return p1
.end method

.method public getRemoveItemAnimator()Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;->mRemoveItemAnimator:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

    return-object p0
.end method

.method protected notifyLongPressState(Landroid/view/View;)V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/faceunity/pta_art/constant/ResourceJson;->getDefaultAvatarListNum()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 31
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;->setEdit(Z)V

    .line 32
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    if-eqz p1, :cond_0

    .line 34
    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->pressAnimation(Landroid/view/View;)V

    .line 36
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;->mOnItemDeleteListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter$OnItemDeleteListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter$OnItemDeleteListener;->onItemLongClick()V

    :cond_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;I)V
    .locals 3

    .line 64
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AniTwl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    const-string v1, "evoke!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/faceunity/pta_art/entity/AvatarPTA;

    .line 66
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    .line 68
    iget-object v0, p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;->mItemImg:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_item_select_none:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 70
    iget-object v0, p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;->mItemImg:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_add_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getSmallThumbNail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 73
    iget-object v1, p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;->mItemImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getSmallThumbNail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 75
    :cond_2
    iget-object v1, p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;->mItemImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getSmallThumbNailRes()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;->isInEdit()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_4

    .line 80
    invoke-static {}, Lcom/faceunity/pta_art/constant/ResourceJson;->getDefaultAvatarListNum()I

    move-result v0

    if-gt p2, v0, :cond_3

    .line 81
    iget-object v0, p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;->mDeleteImg:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;->setGrayIcon(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;I)V

    goto :goto_1

    .line 84
    :cond_3
    iget-object v0, p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;->mDeleteImg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;->updateAnimationState(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;I)V

    goto :goto_2

    .line 88
    :cond_4
    iget-object v0, p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;->mDeleteImg:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->cancelShakeAnimation()V

    .line 91
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;->mOnItemDeleteListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter$OnItemDeleteListener;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;->mDeleteImg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 92
    iget-object v0, p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;->mDeleteImg:Landroid/view/View;

    new-instance v2, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$1;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    :cond_5
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;
    .locals 2

    .line 110
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;->mExpandUI:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/transsion/camera/feature/arcore/R$layout;->facemoji_thumbnail_item_fold:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/camera/feature/arcore/R$layout;->facemoji_thumbnail_item:I

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setRemoveItemAnimator(Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;->mRemoveItemAnimator:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

    return-void
.end method

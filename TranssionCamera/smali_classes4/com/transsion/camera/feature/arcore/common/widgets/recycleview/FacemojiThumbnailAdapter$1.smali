.class Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$1;
.super Ljava/lang/Object;
.source "FacemojiThumbnailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;I)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;

    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 95
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;->access$000(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;)Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;->access$000(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;)Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->getIsDeleting()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$1;->val$position:I

    if-ne p1, v0, :cond_1

    return-void

    .line 101
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$1;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;->mOnItemDeleteListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter$OnItemDeleteListener;

    invoke-interface {p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter$OnItemDeleteListener;->onItemDelete(I)V

    return-void
.end method

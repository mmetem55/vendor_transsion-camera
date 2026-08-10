.class Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1$1;
.super Ljava/lang/Object;
.source "FacemojiFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->deleteComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1$1;->this$4:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1$1;->this$4:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarIndex()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1$1;->this$4:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->val$avatarPTAList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1$1;->this$4:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->val$avatarPTAList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTAIndex(I)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1$1;->this$4:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->val$pos:I

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->val$avatarPTAList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1$1;->this$4:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarIndex()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1$1;->this$4:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->val$pos:I

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 242
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1$1;->this$4:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget v4, v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->val$pos:I

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v1}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarIndex()I

    move-result v1

    if-ne v4, v1, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1$1;->this$4:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v4, v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget v4, v4, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->val$pos:I

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->val$avatarPTAList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v4, v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 244
    :goto_1
    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1$1;->this$4:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;

    iget-object v4, v4, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v5, v4, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->val$avatarPTAList:Ljava/util/List;

    iget-object v4, v4, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget v4, v4, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->val$pos:I

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 245
    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1$1;->this$4:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;

    iget-object v4, v4, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v4, v4, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget-object v4, v4, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object v4, v4, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-static {v4}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->access$400(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1$1;->this$4:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;

    iget-object v5, v5, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v6, v5, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->val$avatarPTAList:Ljava/util/List;

    iget-object v5, v5, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget v5, v5, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->val$pos:I

    invoke-virtual {v4, v6, v5}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;->setDataList(Ljava/util/List;I)V

    if-eqz v0, :cond_3

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1$1;->this$4:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    iget v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->val$pos:I

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->setSelectedPosition(I)V

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1$1;->this$4:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    iget v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->val$pos:I

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTAIndex(I)V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1$1;->this$4:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    iget v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->val$pos:I

    invoke-interface {v1, v0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTAIndex(I)V

    .line 256
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1$1;->this$4:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->val$avatarPTAList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/faceunity/pta_art/constant/ResourceJson;->getDefaultAvatarListNum()I

    move-result v1

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_6

    .line 257
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zhou..... recycle select pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1$1;->this$4:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;

    iget-object v2, v2, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v2, v2, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget-object v2, v2, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object v2, v2, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object v2, v2, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    invoke-interface {v2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->getSelectedPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n  , avatar select pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1$1;->this$4:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;

    iget-object v2, v2, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v2, v2, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget-object v2, v2, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object v2, v2, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object v2, v2, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    .line 258
    invoke-interface {v2}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \n , avatar list:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1$1;->this$4:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;

    iget-object v2, v2, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v2, v2, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget-object v2, v2, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object v2, v2, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object v2, v2, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v2}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getAvatarPTAList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1$1;->this$4:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarIndex()I

    move-result v0

    invoke-static {}, Lcom/faceunity/pta_art/constant/ResourceJson;->getDefaultAvatarListNum()I

    move-result v1

    if-le v0, v1, :cond_5

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1$1;->this$4:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-static {}, Lcom/faceunity/pta_art/constant/ResourceJson;->getDefaultAvatarListNum()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTAIndex(I)V

    .line 264
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1$1;->this$4:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->access$400(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;->setEdit(Z)V

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1$1;->this$4:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTA(Ljava/lang/Runnable;)V

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1$1;->this$4:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1$1;->this$3:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;->this$2:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-static {p0, v3}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->access$200(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;Z)V

    :cond_6
    return-void
.end method

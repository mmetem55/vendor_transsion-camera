.class Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;
.super Ljava/lang/Object;
.source "FacemojiFragment.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog$ConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->onItemDelete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;I)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->access$300(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onConfirm()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->val$itemAnimator:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;->setIsDeleting(Z)V

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->access$400(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->val$itemAnimator:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;->setRemoveItemAnimator(Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;)V

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getAvatarPTAList()Ljava/util/List;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    new-instance v2, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;

    invoke-direct {v2, p0, v0}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1$1;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-interface {v1, v2, v0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->runOnFuItemThread(Lcom/transsion/camera/feature/arcore/manager/ModuleManager$RunCallback;Z)V

    .line 288
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;->this$1:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->access$300(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

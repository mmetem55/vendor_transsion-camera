.class Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;
.super Ljava/lang/Object;
.source "FacemojiFragment.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter$OnItemDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

.field final synthetic val$itemAnimator:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->val$itemAnimator:Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemDelete(I)V
    .locals 5

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->access$300(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->access$300(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->access$300(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/arcore/R$string;->delete_avatar_content:I

    sget v2, Lcom/transsion/camera/feature/arcore/R$string;->delete_avatar_confirm:I

    sget v3, Lcom/transsion/camera/feature/arcore/R$string;->delete_avatar_cancel:I

    new-instance v4, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;

    invoke-direct {v4, p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6$1;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;I)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;->setConfirmListener(IIILcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog$ConfirmListener;)V

    .line 296
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->access$300(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onItemLongClick()V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTA(Lcom/faceunity/pta_art/entity/AvatarPTA;Z)V

    .line 213
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->access$200(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;Z)V

    return-void
.end method

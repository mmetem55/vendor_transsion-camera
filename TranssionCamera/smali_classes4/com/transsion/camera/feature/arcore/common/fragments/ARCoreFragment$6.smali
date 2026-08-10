.class Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$6;
.super Ljava/lang/Object;
.source "ARCoreFragment.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isReachLimitedAvatar()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 163
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGenderSelectDialog:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    if-eqz v0, :cond_2

    .line 164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object v1, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onItemSelected(Lcom/faceunity/pta_art/entity/AvatarPTA;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->access$200(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 135
    sget-object p1, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "zyzy-- SetAvatar not Done 03"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->access$300(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->setUpdateState(Z)V

    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarPTA()Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->access$400(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setExpressionIndex(I)V

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->access$202(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;Z)Z

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$6$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$6$1;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$6;)V

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTA(Lcom/faceunity/pta_art/entity/AvatarPTA;Ljava/lang/Runnable;)V

    return-void
.end method

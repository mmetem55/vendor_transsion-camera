.class Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$8;
.super Ljava/lang/Object;
.source "FacemojiFragment.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IOnSelectChangeListener;


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


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$8;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectChanged(ILjava/lang/Object;)V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$8;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-boolean v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsInEdit:Z

    if-eqz v1, :cond_0

    .line 316
    iget-object p0, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTAIndex(I)V

    goto :goto_0

    .line 318
    :cond_0
    iget-object p1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;->isInited()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 321
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$8;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGenderSelectDialog:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    iget-boolean p1, p1, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->IsShowing:Z

    if-eqz p1, :cond_2

    return-void

    .line 324
    :cond_2
    check-cast p2, Lcom/faceunity/pta_art/entity/AvatarPTA;

    if-eqz p2, :cond_4

    .line 325
    invoke-virtual {p2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->isAddFlag()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 326
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$8;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object v0, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGenderSelectDialog:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isReachLimitedAvatar()Z

    move-result p1

    if-nez p1, :cond_4

    .line 327
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$8;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mPlane:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 330
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$8;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->getClickToPosition()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 331
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$8;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object v0, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGenderSelectDialog:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->IsShowing:Z

    .line 332
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget-object v1, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 333
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$8;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->setClickToPosition(Z)V

    .line 337
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$8;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    const/4 p1, 0x0

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTA(Lcom/faceunity/pta_art/entity/AvatarPTA;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.class public abstract Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;


# static fields
.field public static MAX_SIZE_OF_AVATAR:I = 0x18


# instance fields
.field protected mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

.field protected mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public isExpandUI()Z
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;->isExpandUI()Z

    move-result p0

    return p0
.end method

.method public isNeedExecutePendingTransactions()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isReachLimitedAvatar()Z
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getAvatarPTAList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->MAX_SIZE_OF_AVATAR:I

    if-lt v0, v1, :cond_0

    .line 73
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->createToast()Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/transsion/camera/feature/arcore/R$string;->avatar_limit_tip:I

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->show(Landroid/content/Context;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 43
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;->getModuleOperator()Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 33
    instance-of v0, p1, Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    if-eqz v0, :cond_0

    .line 34
    check-cast p1, Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    return-void

    .line 36
    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    const-string p1, "Hosting Activity must implement FragmentInterface"

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract onBackPressed()Z
.end method

.method public onOrientationChanged(I)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 66
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;->unregisterOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 59
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isExpandUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;->registerOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    :cond_0
    return-void
.end method

.method public onScale(D)V
    .locals 0

    return-void
.end method

.method public onScroll(DD)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 81
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;->setCurrentFragment(Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;)V

    return-void
.end method

.method public releaseResource()V
    .locals 0

    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
    .locals 0

    return-void
.end method

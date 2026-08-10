.class public abstract Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "EditFaceBaseFragment.java"


# static fields
.field public static final ID_KEY:Ljava/lang/String; = "EditFaceBaseFragment_ID"

.field protected static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

.field protected mEditFaceBaseFragmentId:I

.field private mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

.field protected mRootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;->isExpandUI()Z

    move-result p0

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 28
    instance-of p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    return-void

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    const-string p1, "Hosting Activity must implement FragmentInterface"

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "EditFaceBaseFragment_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mEditFaceBaseFragmentId:I

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 47
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public releaseResource()V
    .locals 0

    return-void
.end method

.method public setAvatarP2A(Lcom/faceunity/pta_art/entity/AvatarPTA;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    return-void
.end method

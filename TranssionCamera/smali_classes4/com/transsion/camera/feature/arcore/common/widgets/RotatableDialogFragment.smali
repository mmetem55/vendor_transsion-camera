.class public Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "RotatableDialogFragment.java"


# instance fields
.field protected mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;

.field private final mOrientationListener:Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;

.field protected mRootRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;


# direct methods
.method public static synthetic $r8$lambda$IislPzZBa-R48E2_lLG1Z5HEyUs(Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;->lambda$new$0(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 19
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;->mOrientationListener:Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;

    return-void
.end method

.method private synthetic lambda$new$0(I)V
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;->updateRotate()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 26
    instance-of p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;

    return-void

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    const-string p1, "Hosting Activity must implement FragmentInterface"

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onPause()V
    .locals 1

    .line 46
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;->mOrientationListener:Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;->unregisterOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 40
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 41
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;->mOrientationListener:Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;->registerOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    return-void
.end method

.method public updateRotate()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;->mRootRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;->getOrientation()I

    move-result p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void
.end method

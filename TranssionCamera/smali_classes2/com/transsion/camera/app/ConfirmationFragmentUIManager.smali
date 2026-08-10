.class public Lcom/transsion/camera/app/ConfirmationFragmentUIManager;
.super Ljava/lang/Object;
.source "ConfirmationFragmentUIManager.java"


# instance fields
.field private TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mDialogFragment:Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mIsSecureCamera:Z

.field private mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;Lcom/transsion/camera/app/common/permission/PermissionManager;Z)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;->mFragmentManager:Landroid/app/FragmentManager;

    .line 27
    iput-object p2, p0, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    .line 28
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;->createDialogFragment(Landroid/app/FragmentManager;)Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;->mDialogFragment:Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;

    .line 29
    iput-boolean p3, p0, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;->mIsSecureCamera:Z

    return-void
.end method

.method private createDialogFragment(Landroid/app/FragmentManager;)Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;
    .locals 0

    const-string p0, "PERMISSION_DIALOG"

    .line 34
    invoke-virtual {p1, p0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;

    if-eqz p0, :cond_0

    .line 36
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 38
    :cond_0
    new-instance p0, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;-><init>()V

    return-object p0
.end method


# virtual methods
.method public showDialogFragment()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;->mDialogFragment:Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;

    iget-object v1, p0, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;->setPermissionManager(Lcom/transsion/camera/app/common/permission/PermissionManager;)V

    .line 44
    iget-object v0, p0, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;->mDialogFragment:Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;->mIsSecureCamera:Z

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;->setSecureCamera(Z)V

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;->mDialogFragment:Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;

    iget-object p0, p0, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "PERMISSION_DIALOG"

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

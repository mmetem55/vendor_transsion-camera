.class public Lcom/transsion/camera/feature/arcore/common/widgets/LoadingDialog;
.super Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;
.source "LoadingDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/transsion/camera/feature/arcore/common/widgets/LoadingDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/LoadingDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 49
    iget-object p3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;

    invoke-interface {p3}, Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;->isExpandUI()Z

    move-result p3

    if-eqz p3, :cond_0

    sget p3, Lcom/transsion/camera/feature/arcore/R$layout;->loading_dialog_layout_fold:I

    goto :goto_0

    :cond_0
    sget p3, Lcom/transsion/camera/feature/arcore/R$layout;->loading_dialog_layout:I

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 50
    instance-of p2, p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p2, :cond_1

    .line 51
    move-object p2, p1

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;->mRootRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 52
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;->updateRotate()V

    .line 54
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    return-object p1
.end method

.method public onStart()V
    .locals 7

    .line 25
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;

    invoke-interface {v1}, Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;->isExpandUI()Z

    move-result v1

    const/4 v2, -0x2

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 29
    invoke-virtual {v0, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v3, 0x51

    .line 33
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v3, Lcom/transsion/camera/feature/arcore/R$drawable;->progress_dialog_bg:I

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 39
    iget p0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, p0

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v3, v5

    double-to-int p0, v3

    invoke-virtual {v0, p0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 42
    :goto_0
    sget p0, Lcom/transsion/camera/feature/arcore/R$style;->bottomDialog:I

    invoke-virtual {v0, p0}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 62
    :try_start_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 63
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

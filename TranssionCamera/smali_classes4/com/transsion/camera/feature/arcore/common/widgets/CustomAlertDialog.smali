.class public Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;
.super Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;
.source "CustomAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog$ConfirmListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mConfirmListener:Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog$ConfirmListener;

.field private mNegativeRes:I

.field private mPositiveRes:I

.field private mTitleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/camera/feature/arcore/R$id;->tv_positive:I

    if-ne v0, v1, :cond_0

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;->mConfirmListener:Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog$ConfirmListener;

    if-eqz p0, :cond_1

    .line 104
    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog$ConfirmListener;->onConfirm()V

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->tv_negative:I

    if-ne p1, v0, :cond_1

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;->mConfirmListener:Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog$ConfirmListener;

    if-eqz p0, :cond_1

    .line 108
    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog$ConfirmListener;->onCancel()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 67
    iget-object p3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;

    invoke-interface {p3}, Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;->isExpandUI()Z

    move-result p3

    if-eqz p3, :cond_0

    sget p3, Lcom/transsion/camera/feature/arcore/R$layout;->alert_dialog_layout_fold:I

    goto :goto_0

    :cond_0
    sget p3, Lcom/transsion/camera/feature/arcore/R$layout;->alert_dialog_layout:I

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 68
    instance-of p2, p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p2, :cond_1

    .line 69
    move-object p2, p1

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;->mRootRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 70
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;->updateRotate()V

    .line 72
    :cond_1
    sget p2, Lcom/transsion/camera/feature/arcore/R$id;->tv_positive:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 73
    sget p3, Lcom/transsion/camera/feature/arcore/R$id;->tv_negative:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 74
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;->mPositiveRes:I

    if-eqz v1, :cond_3

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;->mNegativeRes:I

    if-nez v2, :cond_2

    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 79
    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;->mNegativeRes:I

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 80
    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;->mTitleRes:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x1

    .line 83
    invoke-virtual {p0, p2}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    return-object p1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public onStart()V
    .locals 7

    .line 45
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;

    invoke-interface {v1}, Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;->isExpandUI()Z

    move-result v1

    const/4 v2, -0x2

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    const/4 p0, 0x0

    .line 49
    invoke-virtual {v0, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v3, 0x51

    .line 52
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/arcore/R$dimen;->custom_alert_dialog_window_margin_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 55
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 57
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v1

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v3, v5

    double-to-int v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget v1, Lcom/transsion/camera/feature/arcore/R$drawable;->progress_dialog_bg:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    :goto_0
    sget p0, Lcom/transsion/camera/feature/arcore/R$style;->bottomDialog:I

    invoke-virtual {v0, p0}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method

.method public setConfirmListener(IIILcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog$ConfirmListener;)V
    .locals 0

    .line 31
    iput-object p4, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;->mConfirmListener:Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog$ConfirmListener;

    .line 32
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;->mTitleRes:I

    .line 33
    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;->mPositiveRes:I

    .line 34
    iput p3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;->mNegativeRes:I

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 92
    :try_start_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 93
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

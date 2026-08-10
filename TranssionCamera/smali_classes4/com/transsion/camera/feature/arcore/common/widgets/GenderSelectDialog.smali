.class public Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;
.super Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;
.source "GenderSelectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$ConfirmListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_RATIO:F = 1.0f

.field private static final SCALE_RATIO:F = 0.9f

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public IsShowing:Z

.field private mCancelButton:Landroid/widget/TextView;

.field private mConfirmButton:Landroid/widget/TextView;

.field private mConfirmListener:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$ConfirmListener;

.field private mFemaleImage:Landroid/widget/ImageView;

.field private mFemalePanel:Landroid/view/View;

.field private mGender:I

.field private mMaleImage:Landroid/widget/ImageView;

.field private mMalePanel:Landroid/view/View;

.field private mSpringAnimationFemale:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mSpringAnimationMale:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private showCancelButton:Z


# direct methods
.method public static synthetic $r8$lambda$bj3FKxnZjgRoDX3C1CaJBG5vcOc(Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->lambda$onStart$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->mGender:I

    .line 49
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->IsShowing:Z

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->mSpringAnimationMale:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;)Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->mFemalePanel:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;)Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->mMalePanel:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$302(Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->mGender:I

    return p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->mSpringAnimationFemale:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method private synthetic lambda$onStart$0(Landroid/content/DialogInterface;)V
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->mConfirmListener:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$ConfirmListener;

    if-eqz p0, :cond_0

    .line 86
    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$ConfirmListener;->onCancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/camera/feature/arcore/R$id;->gender_select_confirm:I

    if-ne v0, v1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->mConfirmListener:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$ConfirmListener;

    if-eqz p1, :cond_1

    .line 195
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->mGender:I

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$ConfirmListener;->onConfirm(I)V

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->gender_select_cancel:I

    if-ne p1, v0, :cond_1

    .line 198
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->mConfirmListener:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$ConfirmListener;

    if-eqz p0, :cond_1

    .line 199
    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$ConfirmListener;->onCancel()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 101
    iget-object p3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;

    invoke-interface {p3}, Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;->isExpandUI()Z

    move-result p3

    if-eqz p3, :cond_0

    sget p3, Lcom/transsion/camera/feature/arcore/R$layout;->gender_select_dialog_layout_fold:I

    goto :goto_0

    :cond_0
    sget p3, Lcom/transsion/camera/feature/arcore/R$layout;->gender_select_dialog_layout:I

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 102
    instance-of p2, p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p2, :cond_1

    .line 103
    move-object p2, p1

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;->mRootRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 104
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;->updateRotate()V

    .line 106
    :cond_1
    sget p2, Lcom/transsion/camera/feature/arcore/R$id;->male_panel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->mMalePanel:Landroid/view/View;

    const/4 p3, 0x1

    .line 107
    invoke-virtual {p2, p3}, Landroid/view/View;->setSelected(Z)V

    .line 108
    sget p2, Lcom/transsion/camera/feature/arcore/R$id;->female_panel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->mFemalePanel:Landroid/view/View;

    .line 109
    sget p2, Lcom/transsion/camera/feature/arcore/R$id;->male_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->mMaleImage:Landroid/widget/ImageView;

    .line 110
    invoke-static {v0}, Lcom/faceunity/pta_art/constant/ResourceJson;->getIcFigureId(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    sget p2, Lcom/transsion/camera/feature/arcore/R$id;->female_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->mFemaleImage:Landroid/widget/ImageView;

    .line 112
    invoke-static {p3}, Lcom/faceunity/pta_art/constant/ResourceJson;->getIcFigureId(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    sget p2, Lcom/transsion/camera/feature/arcore/R$id;->gender_select_confirm:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->mConfirmButton:Landroid/widget/TextView;

    .line 114
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    sget p2, Lcom/transsion/camera/feature/arcore/R$id;->gender_select_cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->mCancelButton:Landroid/widget/TextView;

    .line 116
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-boolean p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->showCancelButton:Z

    if-eqz p2, :cond_2

    .line 118
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 120
    :cond_2
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->mCancelButton:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    :goto_1
    invoke-virtual {p0, p3}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 124
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->mMalePanel:Landroid/view/View;

    sget-object p3, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-static {p2, p3}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->springAnimation(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->mSpringAnimationMale:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 125
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->mFemalePanel:Landroid/view/View;

    invoke-static {p2, p3}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->springAnimation(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->mSpringAnimationFemale:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 126
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->mMalePanel:Landroid/view/View;

    new-instance p3, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$1;

    invoke-direct {p3, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$1;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 151
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->mFemalePanel:Landroid/view/View;

    new-instance p3, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$2;

    invoke-direct {p3, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$2;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->IsShowing:Z

    .line 60
    invoke-super {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;->onPause()V

    return-void
.end method

.method public onStart()V
    .locals 7

    .line 69
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/RotatableDialogFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;

    invoke-interface {v1}, Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;->isExpandUI()Z

    move-result v1

    const/4 v2, -0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x1ad

    .line 72
    invoke-static {v1}, Lcom/transsion/camera/utils/ResourceUtils;->dpInt(I)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v3, 0x51

    .line 75
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 77
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 79
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v1

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v3, v5

    double-to-int v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 81
    :goto_0
    sget v1, Lcom/transsion/camera/feature/arcore/R$style;->bottomDialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/arcore/R$drawable;->progress_dialog_bg:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->showCancelButton:Z

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_1
    return-void
.end method

.method public setConfirmListener(Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$ConfirmListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->mConfirmListener:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$ConfirmListener;

    return-void
.end method

.method public setShowCancelButton(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->showCancelButton:Z

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 183
    :try_start_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 184
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 187
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.class public Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;
.super Landroid/app/DialogFragment;
.source "ConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private horizontalMarginRatio:F

.field private mCallBack:Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;

.field private mCancel:Landroid/widget/Button;

.field private mConfirm:Landroid/widget/Button;

.field private mContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mMessage:Landroid/widget/TextView;

.field private mMsgId:I

.field private mNegativeTextId:I

.field private mOrientation:I

.field private mPositiveTextId:I

.field private verticalMarginRatio:F


# direct methods
.method public static synthetic $r8$lambda$86flmMTw-9eN83qBz_mvOLxc8XU(Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YXw0hDqpnzzRYjr4xewc-8frrhQ(Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->onConfirm(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private findView(Landroid/view/View;)V
    .locals 1

    .line 106
    sget v0, Lcom/transsion/camera/feature/movie/R$id;->rootPanel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 107
    sget v0, Lcom/transsion/camera/feature/movie/R$id;->message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->mMessage:Landroid/widget/TextView;

    .line 108
    sget v0, Lcom/transsion/camera/feature/movie/R$id;->button1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->mConfirm:Landroid/widget/Button;

    .line 109
    sget v0, Lcom/transsion/camera/feature/movie/R$id;->button2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->mCancel:Landroid/widget/Button;

    return-void
.end method

.method private initView()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->mMessage:Landroid/widget/TextView;

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->mMsgId:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->setText(Landroid/widget/TextView;I)V

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->mConfirm:Landroid/widget/Button;

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->mPositiveTextId:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->setText(Landroid/widget/TextView;I)V

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->mCancel:Landroid/widget/Button;

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->mNegativeTextId:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->setText(Landroid/widget/TextView;I)V

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->mCancel:Landroid/widget/Button;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->mConfirm:Landroid/widget/Button;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance(IIILcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;)Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;
    .locals 1

    .line 71
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;-><init>()V

    .line 72
    iput p0, v0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->mMsgId:I

    .line 73
    iput p1, v0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->mPositiveTextId:I

    .line 74
    iput p2, v0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->mNegativeTextId:I

    .line 75
    iput-object p3, v0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->mCallBack:Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;

    return-object v0
.end method

.method private onBackPressed()Z
    .locals 0

    .line 213
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    const/4 p0, 0x1

    return p0
.end method

.method private onCancel(Landroid/view/View;)V
    .locals 0

    .line 139
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->mCallBack:Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;

    if-eqz p1, :cond_0

    .line 140
    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;->onCancel()V

    .line 142
    :cond_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private onConfirm(Landroid/view/View;)V
    .locals 0

    .line 132
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->mCallBack:Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;

    if-eqz p1, :cond_0

    .line 133
    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog$ICallBack;->onConfirm()V

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private setText(Landroid/widget/TextView;I)V
    .locals 0

    if-gtz p2, :cond_0

    const/16 p0, 0x8

    .line 125
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 128
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private updateWindow()V
    .locals 8

    .line 158
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 166
    :cond_1
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 171
    :cond_2
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 173
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 174
    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 175
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 177
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/movie/R$dimen;->movie_dialog_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 178
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    div-float v3, v2, v3

    iput v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->verticalMarginRatio:F

    .line 179
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->horizontalMarginRatio:F

    .line 181
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 182
    iget v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->mOrientation:I

    const/16 v4, 0x5a

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    const/4 v7, -0x2

    if-ne v3, v4, :cond_3

    const v3, 0x800015

    .line 183
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 184
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->horizontalMarginRatio:F

    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 185
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v3, p0

    mul-double/2addr v3, v5

    double-to-int p0, v3

    invoke-virtual {v1, v7, p0}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    :cond_3
    const/16 v4, 0x10e

    if-ne v3, v4, :cond_4

    const v3, 0x800013

    .line 188
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 189
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->horizontalMarginRatio:F

    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 190
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v3, p0

    mul-double/2addr v3, v5

    double-to-int p0, v3

    invoke-virtual {v1, v7, p0}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    :cond_4
    const/16 v3, 0x51

    .line 193
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 194
    iget v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->verticalMarginRatio:F

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 195
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v0

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v3, v5

    double-to-int v0, v3

    invoke-virtual {v1, v0, v7}, Landroid/view/Window;->setLayout(II)V

    .line 197
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->hasNavigationBar(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 198
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/ScreenUtils;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result p0

    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 201
    :cond_5
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public hasNavigationBar(Landroid/app/Activity;)Z
    .locals 4

    .line 229
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    move v1, v0

    .line 231
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 232
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 233
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 234
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "navigationBarBackground"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 147
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 148
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->updateWindow()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 91
    sget p3, Lcom/transsion/camera/feature/movie/R$layout;->confirm_dialog_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 94
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->findView(Landroid/view/View;)V

    .line 96
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->initView()V

    .line 98
    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 100
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    sget p2, Lcom/transsion/camera/feature/movie/R$drawable;->bg_dialog_round_corner:I

    invoke-virtual {p0, p2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-object p1
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p1, p2, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->onBackPressed()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 0

    .line 153
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 154
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 2

    .line 219
    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 222
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 224
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public updateOrientation(I)V
    .locals 1

    .line 80
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->mOrientation:I

    .line 81
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->updateWindow()V

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/dialog/ConfirmDialog;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    :cond_0
    return-void
.end method

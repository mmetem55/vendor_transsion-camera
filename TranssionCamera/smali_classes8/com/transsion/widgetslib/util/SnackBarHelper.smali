.class public Lcom/transsion/widgetslib/util/SnackBarHelper;
.super Ljava/lang/Object;
.source "SnackBarHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/util/SnackBarHelper$ActionOnClickListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private mOnClickListener:Lcom/transsion/widgetslib/util/SnackBarHelper$ActionOnClickListener;

.field private mSnackBar:Lcom/google/android/material/snackbar/Snackbar;

.field private mSnackBarLayout:Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/transsion/widgetslib/util/SnackBarHelper;->mContext:Landroid/content/Context;

    .line 38
    check-cast p1, Landroid/app/Activity;

    .line 39
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 41
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$layout;->os_snackbar_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 42
    sget v0, Lcom/transsion/widgetslib/R$id;->snackbar_coordinator:I

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/util/SnackBarHelper;->mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 44
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/util/SnackBarHelper;)Lcom/transsion/widgetslib/util/SnackBarHelper$ActionOnClickListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/widgetslib/util/SnackBarHelper;->mOnClickListener:Lcom/transsion/widgetslib/util/SnackBarHelper$ActionOnClickListener;

    return-object p0
.end method

.method private customSnackBarView(I)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/transsion/widgetslib/util/SnackBarHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 107
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    .line 109
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 110
    iget-object p0, p0, Lcom/transsion/widgetslib/util/SnackBarHelper;->mSnackBarLayout:Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setSnackBarColor(ILandroid/view/View;I)V
    .locals 0

    .line 114
    sget p0, Lcom/transsion/widgetslib/R$id;->snackbar_text:I

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    sget p0, Lcom/transsion/widgetslib/R$id;->snackbar_action:I

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setUnDo(Ljava/lang/String;)V
    .locals 2

    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/transsion/widgetslib/util/SnackBarHelper;->mSnackBar:Lcom/google/android/material/snackbar/Snackbar;

    new-instance v1, Lcom/transsion/widgetslib/util/SnackBarHelper$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/util/SnackBarHelper$1;-><init>(Lcom/transsion/widgetslib/util/SnackBarHelper;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    :cond_0
    return-void
.end method


# virtual methods
.method public setActionOnClickListener(Lcom/transsion/widgetslib/util/SnackBarHelper$ActionOnClickListener;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/transsion/widgetslib/util/SnackBarHelper;->mOnClickListener:Lcom/transsion/widgetslib/util/SnackBarHelper$ActionOnClickListener;

    return-void
.end method

.method public showCustomSnackbar(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/google/android/material/snackbar/Snackbar;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/transsion/widgetslib/util/SnackBarHelper;->mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-static {v0, p1, p6}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/util/SnackBarHelper;->mSnackBar:Lcom/google/android/material/snackbar/Snackbar;

    .line 50
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    iput-object p1, p0, Lcom/transsion/widgetslib/util/SnackBarHelper;->mSnackBarLayout:Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    .line 51
    sget p6, Lcom/transsion/widgetslib/R$id;->snackbar_action:I

    invoke-virtual {p1, p6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 52
    sget p6, Lcom/transsion/widgetslib/R$drawable;->os_btn_bg_no_stroke_dark:I

    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 p6, 0x1

    .line 53
    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setAllCaps(Z)V

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 56
    iget-object p1, p0, Lcom/transsion/widgetslib/util/SnackBarHelper;->mSnackBarLayout:Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    invoke-direct {p0, p3, p1, p4}, Lcom/transsion/widgetslib/util/SnackBarHelper;->setSnackBarColor(ILandroid/view/View;I)V

    :cond_0
    if-eqz p5, :cond_1

    .line 59
    invoke-direct {p0, p5}, Lcom/transsion/widgetslib/util/SnackBarHelper;->customSnackBarView(I)V

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/util/SnackBarHelper;->mSnackBarLayout:Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    sget p3, Lcom/transsion/widgetslib/R$drawable;->os_snackbar_background:I

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 62
    iget-object p1, p0, Lcom/transsion/widgetslib/util/SnackBarHelper;->mSnackBar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    if-eqz p2, :cond_2

    .line 64
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/util/SnackBarHelper;->setUnDo(Ljava/lang/String;)V

    .line 66
    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetslib/util/SnackBarHelper;->mSnackBar:Lcom/google/android/material/snackbar/Snackbar;

    return-object p0
.end method

.method public showSnackBar(Ljava/lang/String;I)Lcom/google/android/material/snackbar/Snackbar;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/transsion/widgetslib/util/SnackBarHelper;->showSnackBar(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    return-object p0
.end method

.method public showSnackBar(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/material/snackbar/Snackbar;
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/transsion/widgetslib/util/SnackBarHelper;->mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-static {v0, p1, p4}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/util/SnackBarHelper;->mSnackBar:Lcom/google/android/material/snackbar/Snackbar;

    .line 76
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    iput-object p1, p0, Lcom/transsion/widgetslib/util/SnackBarHelper;->mSnackBarLayout:Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    .line 77
    sget p4, Lcom/transsion/widgetslib/R$id;->snackbar_action:I

    invoke-virtual {p1, p4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 78
    iget-object p4, p0, Lcom/transsion/widgetslib/util/SnackBarHelper;->mSnackBarLayout:Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    sget v0, Lcom/transsion/widgetslib/R$id;->snackbar_text:I

    invoke-virtual {p4, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    .line 79
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_btn_bg_no_stroke_dark:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 v0, 0x1

    .line 80
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/high16 v1, 0x41600000    # 14.0f

    .line 81
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v1, 0x0

    const v2, 0x3fa66666    # 1.3f

    .line 83
    invoke-virtual {p4, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 84
    iget-object v1, p0, Lcom/transsion/widgetslib/util/SnackBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$color;->os_snackbar_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p3, :cond_0

    .line 88
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    new-array p3, v0, [I

    .line 90
    sget p4, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    const/4 v0, 0x0

    aput p4, p3, v0

    .line 91
    iget-object p4, p0, Lcom/transsion/widgetslib/util/SnackBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p4, p3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 92
    iget-object p4, p0, Lcom/transsion/widgetslib/util/SnackBarHelper;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    .line 92
    invoke-virtual {p3, v0, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    :goto_0
    iget-object p1, p0, Lcom/transsion/widgetslib/util/SnackBarHelper;->mSnackBarLayout:Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    sget p3, Lcom/transsion/widgetslib/R$drawable;->os_snackbar_background:I

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 98
    iget-object p1, p0, Lcom/transsion/widgetslib/util/SnackBarHelper;->mSnackBar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    if-eqz p2, :cond_1

    .line 100
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/util/SnackBarHelper;->setUnDo(Ljava/lang/String;)V

    .line 102
    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/util/SnackBarHelper;->mSnackBar:Lcom/google/android/material/snackbar/Snackbar;

    return-object p0
.end method

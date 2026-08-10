.class public Lcom/transsion/widgetslib/dialog/ProgressDialog;
.super Ljava/lang/Object;
.source "ProgressDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProgressDialog"


# instance fields
.field private isNumRate:Z

.field private mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mHasTitle:Z

.field private mLlIntro:Landroid/widget/LinearLayout;

.field private mMaxProgress:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTextProgressMessage:Landroid/widget/TextView;

.field private mTextView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 38
    iput v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mMaxProgress:I

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->isNumRate:Z

    .line 40
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mHasTitle:Z

    .line 43
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mContext:Landroid/content/Context;

    .line 44
    new-instance v1, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v1, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 46
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/ProgressDialog;->setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/ProgressDialog;

    .line 47
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/ProgressDialog;->setCancelable(Z)Lcom/transsion/widgetslib/dialog/ProgressDialog;

    .line 48
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mContext:Landroid/content/Context;

    const/16 v1, 0x10

    invoke-static {v1, v0}, Lcom/transsion/widgetslib/util/DimensionUtil;->dpToPx(ILandroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNoBtnBottomInsets(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 50
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mView:Landroid/view/View;

    if-nez p1, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/ProgressDialog;->initView()V

    :cond_0
    return-void
.end method

.method private dealProgressMessagePadding()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextProgressMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mHasTitle:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mLlIntro:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_progress_intro_padding_top:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_dialog_progress:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mView:Landroid/view/View;

    .line 179
    sget v1, Lcom/transsion/widgetslib/R$id;->dialog_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 180
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mView:Landroid/view/View;

    sget v1, Lcom/transsion/widgetslib/R$id;->dialog_progress_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextView:Landroid/widget/TextView;

    .line 181
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mView:Landroid/view/View;

    sget v1, Lcom/transsion/widgetslib/R$id;->text_progress_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextProgressMessage:Landroid/widget/TextView;

    .line 182
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 183
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mView:Landroid/view/View;

    sget v1, Lcom/transsion/widgetslib/R$id;->ll_intro:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mLlIntro:Landroid/widget/LinearLayout;

    .line 184
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->isNumRate:Z

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setView(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-void
.end method


# virtual methods
.method public create()Lcom/transsion/widgetslib/dialog/PromptDialog;
    .locals 2

    .line 207
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->isNumRate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object p0

    .line 212
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object p0
.end method

.method public setCancelable(Z)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCancelable(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setIcon(I)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setIcon(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mHasTitle:Z

    .line 85
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/ProgressDialog;->dealProgressMessagePadding()V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mHasTitle:Z

    .line 78
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/ProgressDialog;->dealProgressMessagePadding()V

    return-object p0
.end method

.method public setMaxProgress(I)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .locals 1

    .line 191
    iput p1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mMaxProgress:I

    .line 192
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    return-object p0
.end method

.method public setMessage(I)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/ProgressDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setNumRate(Z)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .locals 0

    .line 223
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->isNumRate:Z

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/ProgressDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setProgress(I)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .locals 5

    .line 143
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/ProgressDialog;->initView()V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mMaxProgress:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 147
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 148
    iget v1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mMaxProgress:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mMaxProgress:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p1, v1

    const-string v1, "tr"

    .line 149
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "%%%d"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_3

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 156
    :cond_1
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtlDigit()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 160
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "%d%%"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 151
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 152
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-object p0
.end method

.method public setProgressMessage(I)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextProgressMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextProgressMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/ProgressDialog;->dealProgressMessagePadding()V

    return-object p0
.end method

.method public setProgressMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextProgressMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextProgressMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/ProgressDialog;->dealProgressMessagePadding()V

    return-object p0
.end method

.method public setProgressMessageSingleLine(Z)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mTextProgressMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_0
    return-object p0
.end method

.method public setSecondaryProgress(I)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/ProgressDialog;->initView()V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mMaxProgress:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    return-object p0
.end method

.method public setTitle(I)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    const/4 p1, 0x1

    .line 70
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mHasTitle:Z

    .line 71
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/ProgressDialog;->dealProgressMessagePadding()V

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/ProgressDialog;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/ProgressDialog;->mHasTitle:Z

    .line 58
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/ProgressDialog;->dealProgressMessagePadding()V

    return-object p0
.end method

.method public show()Lcom/transsion/widgetslib/dialog/PromptDialog;
    .locals 0

    .line 217
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/ProgressDialog;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object p0

    .line 218
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-object p0
.end method

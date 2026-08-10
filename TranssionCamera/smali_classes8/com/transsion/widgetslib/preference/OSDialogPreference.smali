.class public abstract Lcom/transsion/widgetslib/preference/OSDialogPreference;
.super Landroid/preference/Preference;
.source "OSDialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/PreferenceManager$OnActivityDestroyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;
    }
.end annotation


# instance fields
.field private mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

.field private mCancelable:Z

.field private mCanceledOnTouchOutside:Z

.field private mDialog:Landroid/app/Dialog;

.field private mDialogIcon:Landroid/graphics/drawable/Drawable;

.field private mDialogLayoutResId:I

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private final mDismissRunnable:Ljava/lang/Runnable;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mTitleRootPaddingEnd:I

.field private mTitleRootPaddingStart:I

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 115
    sget v0, Lcom/transsion/widgetslib/R$attr;->OsDialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mCancelable:Z

    .line 53
    iput-boolean v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mCanceledOnTouchOutside:Z

    .line 571
    new-instance v1, Lcom/transsion/widgetslib/preference/OSDialogPreference$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference$1;-><init>(Lcom/transsion/widgetslib/preference/OSDialogPreference;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDismissRunnable:Ljava/lang/Runnable;

    .line 68
    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->OsDialogPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 70
    sget p3, Lcom/transsion/widgetslib/R$styleable;->OsDialogPreference_dialogTitle:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    if-nez p3, :cond_0

    .line 74
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 76
    :cond_0
    sget p3, Lcom/transsion/widgetslib/R$styleable;->OsDialogPreference_dialogMessage:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 77
    sget p3, Lcom/transsion/widgetslib/R$styleable;->OsDialogPreference_dialogIcon:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 78
    sget p3, Lcom/transsion/widgetslib/R$styleable;->OsDialogPreference_positiveButtonText:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 79
    sget p3, Lcom/transsion/widgetslib/R$styleable;->OsDialogPreference_negativeButtonText:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 80
    sget p3, Lcom/transsion/widgetslib/R$styleable;->OsDialogPreference_dialogLayout:I

    iget p4, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogLayoutResId:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogLayoutResId:I

    .line 81
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 83
    fill-array-data p2, :array_0

    .line 84
    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_no_curve_content_padding:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mTitleRootPaddingStart:I

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mTitleRootPaddingEnd:I

    .line 87
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :array_0
    .array-data 4
        0x10103bd
        0x10103be
    .end array-data
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/preference/OSDialogPreference;)Landroid/app/Dialog;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method private getDecorView()Landroid/view/View;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 550
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private invokeMethod(Landroid/preference/PreferenceManager;Ljava/lang/String;)V
    .locals 5

    .line 362
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 363
    const-class v3, Landroid/preference/PreferenceManager$OnActivityDestroyListener;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 364
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v4

    .line 365
    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 367
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private removeDismissCallbacks()V
    .locals 1

    .line 565
    invoke-direct {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 567
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 0

    .line 386
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, 0x5

    .line 387
    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 0

    .line 465
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public getDialogIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDialogLayoutResource()I
    .locals 0

    .line 279
    iget p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogLayoutResId:I

    return p0
.end method

.method public getDialogMessage()Ljava/lang/CharSequence;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getDialogTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getPositiveButtonText()Ljava/lang/CharSequence;
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method protected needInputMethod()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onActivityDestroy()V
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 477
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2

    .line 416
    sget v0, Lcom/transsion/widgetslib/R$id;->message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 419
    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object p0

    const/16 v0, 0x8

    .line 422
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 423
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 424
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x0

    .line 430
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eq p0, v0, :cond_2

    .line 431
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    .line 97
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 98
    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 99
    check-cast p1, Landroid/widget/LinearLayout;

    .line 100
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 101
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 102
    instance-of v1, v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    .line 104
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 105
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mTitleRootPaddingStart:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mTitleRootPaddingEnd:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 298
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->showDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 437
    iput p2, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mWhichButtonClicked:I

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 581
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_0

    .line 582
    check-cast p0, Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 2

    .line 399
    iget v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogLayoutResId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 404
    iget p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onDialogClosed(Z)V
    .locals 0

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 443
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    const-string v0, "unregisterOnActivityDestroyListener"

    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->invokeMethod(Landroid/preference/PreferenceManager;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 445
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialog:Landroid/app/Dialog;

    .line 446
    iget p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mWhichButtonClicked:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onDialogClosed(Z)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;)V
    .locals 0

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 496
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 502
    :cond_0
    check-cast p1, Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;

    .line 503
    invoke-virtual {p1}, Landroid/preference/Preference$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 504
    iget-boolean v0, p1, Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;->isDialogShowing:Z

    if-eqz v0, :cond_1

    .line 505
    iget-object p1, p1, Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->showDialog(Landroid/os/Bundle;)V

    :cond_1
    return-void

    .line 498
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 482
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 483
    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 487
    :cond_0
    new-instance v1, Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    .line 488
    iput-boolean v0, v1, Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;->isDialogShowing:Z

    .line 489
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, v1, Lcom/transsion/widgetslib/preference/OSDialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    return-object v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method postDismiss()V
    .locals 1

    .line 556
    invoke-direct {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->removeDismissCallbacks()V

    .line 557
    invoke-direct {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 560
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setCancelable(Z)Lcom/transsion/widgetslib/preference/OSDialogPreference;
    .locals 0

    .line 351
    iput-boolean p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mCancelable:Z

    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/preference/OSDialogPreference;
    .locals 0

    .line 356
    iput-boolean p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mCanceledOnTouchOutside:Z

    return-object p0
.end method

.method public setDialogIcon(I)V
    .locals 1

    .line 194
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDialogIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDialogLayoutResource(I)V
    .locals 0

    .line 269
    iput p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogLayoutResId:I

    return-void
.end method

.method public setDialogMessage(I)V
    .locals 1

    .line 167
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDialogMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public setDialogTitle(I)V
    .locals 1

    .line 137
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDialogTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setNegativeButtonText(I)V
    .locals 1

    .line 248
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setPositiveButtonText(I)V
    .locals 1

    .line 220
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 2

    .line 310
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x2

    .line 312
    iput v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mWhichButtonClicked:I

    .line 314
    new-instance v1, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v1, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 315
    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 316
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 317
    invoke-virtual {v0, v1, p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 318
    invoke-virtual {v0, v1, p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 320
    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 323
    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setView(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    goto :goto_0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 328
    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onPrepareDialogBuilder(Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;)V

    .line 329
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "registerOnActivityDestroyListener"

    .line 331
    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->invokeMethod(Landroid/preference/PreferenceManager;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-boolean v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCancelable(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mCanceledOnTouchOutside:Z

    .line 335
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/preference/OSDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_1

    .line 338
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 340
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->needInputMethod()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 341
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->requestInputMethod(Landroid/app/Dialog;)V

    .line 343
    :cond_2
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 344
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

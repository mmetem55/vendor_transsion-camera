.class public Lcom/transsion/widgetslib/dialog/InputDialog;
.super Ljava/lang/Object;
.source "InputDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/dialog/InputDialog$SoftInputHandler;,
        Lcom/transsion/widgetslib/dialog/InputDialog$OSLengthFilter;,
        Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;,
        Lcom/transsion/widgetslib/dialog/InputDialog$OnPositiveButtonListener;,
        Lcom/transsion/widgetslib/dialog/InputDialog$OnInputNumListener;,
        Lcom/transsion/widgetslib/dialog/InputDialog$OnInputListener;
    }
.end annotation


# static fields
.field public static final SHOW_INPUT_DELAY:I = 0xc8


# instance fields
.field private mActiveColor:I

.field private mAppDialogFragment:Z

.field private mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDividerView:Landroid/view/View;

.field private mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

.field private mErrorColor:I

.field private mErrorText:Landroid/widget/TextView;

.field private mGlobalListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mInputDialogFoldEngineWrapper:Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;

.field private mInputView:Landroid/view/View;

.field private mNormalColor:I

.field private mNumText:Landroid/widget/TextView;

.field private mOSMaterialEditText:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

.field private mShow:Z

.field private mShowSoftInput:Z

.field private mSoftInputHandler:Lcom/transsion/widgetslib/dialog/InputDialog$SoftInputHandler;

.field private mTipInputMax:Ljava/lang/String;

.field private needEmptyUnable:Z


# direct methods
.method public static synthetic $r8$lambda$eMGUCbgZ2q04DAxFZmFJSveq_FY(Lcom/transsion/widgetslib/dialog/InputDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/InputDialog;->lambda$showSoftInput$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->needEmptyUnable:Z

    .line 76
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    .line 78
    new-instance v1, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v1, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 79
    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setInputDialog(Z)V

    .line 80
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_red_basic_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mErrorColor:I

    .line 81
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_gray_secondary_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mNormalColor:I

    .line 82
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_fill_primary_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mActiveColor:I

    .line 86
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mInputView:Landroid/view/View;

    if-nez p1, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/InputDialog;->addInputView()V

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/InputDialog;->initView()V

    .line 90
    new-instance p1, Lcom/transsion/widgetslib/dialog/InputDialog$SoftInputHandler;

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-direct {p1, v0}, Lcom/transsion/widgetslib/dialog/InputDialog$SoftInputHandler;-><init>(Landroid/widget/EditText;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mSoftInputHandler:Lcom/transsion/widgetslib/dialog/InputDialog$SoftInputHandler;

    .line 91
    new-instance p1, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;

    invoke-direct {p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mInputDialogFoldEngineWrapper:Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mInputDialogFoldEngineWrapper:Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/dialog/InputDialog;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mShow:Z

    return p0
.end method

.method static synthetic access$202(Lcom/transsion/widgetslib/dialog/InputDialog;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mShow:Z

    return p1
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/dialog/InputDialog;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/dialog/InputDialog;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mNormalColor:I

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/dialog/InputDialog;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mActiveColor:I

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/dialog/InputDialog;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mNumText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/dialog/InputDialog;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mErrorText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/widgetslib/dialog/InputDialog;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mTipInputMax:Ljava/lang/String;

    return-object p0
.end method

.method private addInputView()V
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_input_dialog_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mInputView:Landroid/view/View;

    .line 283
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setView(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-void
.end method

.method private initView()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mInputView:Landroid/view/View;

    sget v1, Lcom/transsion/widgetslib/R$id;->input_edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mOSMaterialEditText:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    const/4 v1, 0x0

    .line 96
    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setRootPaddingRelative(IIII)V

    .line 97
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mOSMaterialEditText:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    .line 98
    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 99
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    new-instance v2, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;

    invoke-direct {v2, p0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;I)V

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 100
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$string;->os_dialog_input_tip_max:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mTipInputMax:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$showSoftInput$0()V
    .locals 1

    .line 543
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mSoftInputHandler:Lcom/transsion/widgetslib/dialog/InputDialog$SoftInputHandler;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/InputDialog$SoftInputHandler;->getEditTextWR()Ljava/lang/ref/WeakReference;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 544
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    .line 546
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->showSoftInput(Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method

.method private transHintEllipsizeString(Ljava/lang/CharSequence;)V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/widgetslib/dialog/InputDialog$2;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public create()Lcom/transsion/widgetslib/dialog/PromptDialog;
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mInputDialogFoldEngineWrapper:Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->installInputDialogFoldEngine(Landroid/view/Window;)V

    .line 301
    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog$3;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/dialog/InputDialog$3;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog;->setOnPromptDialogStatusChangedListener(Lcom/transsion/widgetslib/dialog/PromptDialog$CallBack;)V

    .line 317
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mInputDialogFoldEngineWrapper:Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->requireInstallFlipEngine()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x30

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 319
    iget-boolean v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mShowSoftInput:Z

    if-eqz v1, :cond_2

    .line 320
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    if-eqz v1, :cond_2

    .line 321
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 324
    :cond_1
    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog$4;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/dialog/InputDialog$4;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mGlobalListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 344
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mGlobalListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 349
    :cond_2
    iget-boolean v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mAppDialogFragment:Z

    if-nez v1, :cond_3

    .line 350
    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog$5;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/dialog/InputDialog$5;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_3
    return-object v0
.end method

.method public dismissOprate(Landroid/content/DialogInterface;)V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mInputDialogFoldEngineWrapper:Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->release()V

    .line 362
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mGlobalListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mGlobalListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    .line 364
    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mGlobalListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_1

    .line 368
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 370
    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    if-eqz p1, :cond_2

    .line 371
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->clearTextChangedListeners()V

    :cond_2
    const/4 p1, 0x0

    .line 373
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mShow:Z

    return-void
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 0

    .line 406
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public getNeedEmptyUnable()Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->needEmptyUnable:Z

    return p0
.end method

.method public getmEditText()Landroid/widget/EditText;
    .locals 0

    .line 410
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    return-object p0
.end method

.method public getmErrorText()Landroid/widget/TextView;
    .locals 0

    .line 414
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mErrorText:Landroid/widget/TextView;

    return-object p0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 384
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mDividerView:Landroid/view/View;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 385
    iget p2, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mActiveColor:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mNormalColor:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    const/4 p1, -0x1

    .line 388
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->needEmptyUnable:Z

    if-eqz p2, :cond_3

    .line 389
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method public removeTextWatcher(Landroid/text/TextWatcher;)V
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public requireHungStatus(Z)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mInputDialogFoldEngineWrapper:Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->setMRequireHungStatus(Z)V

    return-object p0
.end method

.method public setAppDialogFragment(Z)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 0

    .line 207
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mAppDialogFragment:Z

    return-object p0
.end method

.method public setAutoDismiss(Z)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setAutoDismiss(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setCancelable(Z)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCancelable(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setError(I)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mInputView:Landroid/view/View;

    sget v1, Lcom/transsion/widgetslib/R$id;->error_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mErrorText:Landroid/widget/TextView;

    .line 171
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mDividerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 173
    iget v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mErrorColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 175
    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->setOSMaterialEditTextError(Z)V

    return-object p0
.end method

.method public setError(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mInputView:Landroid/view/View;

    sget v1, Lcom/transsion/widgetslib/R$id;->error_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mErrorText:Landroid/widget/TextView;

    .line 181
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mErrorText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mDividerView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 185
    iget v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mNormalColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mErrorText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mDividerView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 190
    iget v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mErrorColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 193
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->setOSMaterialEditTextError(Z)V

    return-object p0
.end method

.method public setGetInputPositiveButton(ILcom/transsion/widgetslib/dialog/InputDialog$OnPositiveButtonListener;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/InputDialog;->setGetInputPositiveButton(Ljava/lang/CharSequence;Lcom/transsion/widgetslib/dialog/InputDialog$OnPositiveButtonListener;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object p0

    return-object p0
.end method

.method public setGetInputPositiveButton(Ljava/lang/CharSequence;Lcom/transsion/widgetslib/dialog/InputDialog$OnPositiveButtonListener;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog$1;

    invoke-direct {v1, p0, p2}, Lcom/transsion/widgetslib/dialog/InputDialog$1;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;Lcom/transsion/widgetslib/dialog/InputDialog$OnPositiveButtonListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setHasContent(Z)V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mDividerView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 433
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    sget p1, Lcom/transsion/widgetslib/R$color;->os_fill_primary_color:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/widgetslib/R$color;->os_gray_secondary_color:I

    :goto_0
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public setInput(Lcom/transsion/widgetslib/dialog/InputDialog$OnInputListener;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 1

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, v0, v0, p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->setInput(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/transsion/widgetslib/dialog/InputDialog$OnInputListener;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object p0

    return-object p0
.end method

.method public setInput(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/transsion/widgetslib/dialog/InputDialog$OnInputListener;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 234
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/dialog/InputDialog;->transHintEllipsizeString(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    .line 236
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-interface {p3, p1}, Lcom/transsion/widgetslib/dialog/InputDialog$OnInputListener;->onInput(Landroid/widget/EditText;)V

    :cond_0
    return-object p0
.end method

.method public setInputNum(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/transsion/widgetslib/dialog/InputDialog$OnInputNumListener;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 7

    .line 256
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 257
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/dialog/InputDialog;->transHintEllipsizeString(Ljava/lang/CharSequence;)V

    .line 258
    iget-object p2, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mInputView:Landroid/view/View;

    sget v0, Lcom/transsion/widgetslib/R$id;->num_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mNumText:Landroid/widget/TextView;

    .line 259
    iget-object p2, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    new-instance v0, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;

    invoke-direct {v0, p0, p3}, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;I)V

    invoke-virtual {p2, v0}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 261
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mNumText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mNumText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    new-array v2, p2, [Landroid/text/InputFilter;

    new-instance v3, Lcom/transsion/widgetslib/dialog/InputDialog$OSLengthFilter;

    invoke-direct {v3, p0, p3}, Lcom/transsion/widgetslib/dialog/InputDialog$OSLengthFilter;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;I)V

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 266
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "/"

    const-string v3, "%d"

    if-ge v1, p3, :cond_1

    .line 267
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mNumText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, p2, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v0

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p1, p2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mNumText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, p2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v0

    invoke-static {v3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object p2, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    if-eqz p4, :cond_2

    .line 275
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    iget-object p2, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mNumText:Landroid/widget/TextView;

    invoke-interface {p4, p1, p2}, Lcom/transsion/widgetslib/dialog/InputDialog$OnInputNumListener;->onInputNum(Landroid/widget/EditText;Landroid/widget/TextView;)V

    :cond_2
    return-object p0
.end method

.method public setInputText(I)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;I)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 213
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setInputText(Ljava/lang/String;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;I)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 219
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setNeedEmptyUnable(Z)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->needEmptyUnable:Z

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/InputDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object p0

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setOSMaterialEditTextError(Z)V
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mOSMaterialEditText:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    if-eqz p0, :cond_0

    .line 165
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setErrorLine(Z)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    :cond_0
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/InputDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object p0

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setShowSoftInput(Z)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 0

    .line 288
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mShowSoftInput:Z

    return-object p0
.end method

.method public setTextWatcher(Landroid/text/TextWatcher;)V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setTipInputMax(I)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->setTipInputMax(Ljava/lang/String;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object p0

    return-object p0
.end method

.method public setTipInputMax(Ljava/lang/String;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mTipInputMax:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(I)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/InputDialog;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public show()Lcom/transsion/widgetslib/dialog/PromptDialog;
    .locals 0

    .line 377
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/InputDialog;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object p0

    .line 378
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-object p0
.end method

.method public showSoftInput()V
    .locals 4

    .line 542
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog;->mSoftInputHandler:Lcom/transsion/widgetslib/dialog/InputDialog$SoftInputHandler;

    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/dialog/InputDialog$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

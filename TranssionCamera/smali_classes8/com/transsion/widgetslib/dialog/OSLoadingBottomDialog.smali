.class public Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;
.super Ljava/lang/Object;
.source "OSLoadingBottomDialog.java"


# instance fields
.field private loadingText:Ljava/lang/String;

.field private mAppDialogFragment:Z

.field private mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private mLoadingView:Lcom/transsion/widgetslib/view/OSLoadingView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mContext:Landroid/content/Context;

    .line 27
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    const/4 p1, 0x0

    .line 29
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 30
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCancelable(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;)Lcom/transsion/widgetslib/view/OSLoadingView;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mLoadingView:Lcom/transsion/widgetslib/view/OSLoadingView;

    return-object p0
.end method


# virtual methods
.method public create()Lcom/transsion/widgetslib/dialog/PromptDialog;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_dialog_loading_bottom:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 41
    sget v1, Lcom/transsion/widgetslib/R$id;->messageTv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 42
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->loadingText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    sget v1, Lcom/transsion/widgetslib/R$id;->osLoading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/OSLoadingView;

    iput-object v1, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mLoadingView:Lcom/transsion/widgetslib/view/OSLoadingView;

    .line 44
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setView(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 45
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 47
    sget v2, Lcom/transsion/widgetslib/R$style;->OsInputDialogAnimStyle:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 48
    iget-boolean v2, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mAppDialogFragment:Z

    if-nez v2, :cond_0

    .line 49
    new-instance v2, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog$1;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog$1;-><init>(Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    const/4 p0, 0x0

    .line 57
    invoke-virtual {v1, p0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v0
.end method

.method public dismissOprate()V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mLoadingView:Lcom/transsion/widgetslib/view/OSLoadingView;

    if-eqz p0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->release()V

    :cond_0
    return-void
.end method

.method public setAppDialogFragment(Z)Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mAppDialogFragment:Z

    return-object p0
.end method

.method public setMessage(I)Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->setMessage(Ljava/lang/String;)Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->loadingText:Ljava/lang/String;

    return-object p0
.end method

.method public show()Lcom/transsion/widgetslib/dialog/PromptDialog;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 68
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    .line 69
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingBottomDialog;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    return-object p0
.end method

.class public Lcom/transsion/widgetslib/dialog/PromptDialog;
.super Landroid/app/Dialog;
.source "PromptDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/dialog/PromptDialog$Builder2;,
        Lcom/transsion/widgetslib/dialog/PromptDialog$CallBack;,
        Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;,
        Lcom/transsion/widgetslib/dialog/PromptDialog$PromptDialogType;
    }
.end annotation


# instance fields
.field private mController:Lcom/transsion/widgetslib/dialog/PromptController;

.field private mOnPromptDialogStatusChangedCallback:Lcom/transsion/widgetslib/dialog/PromptDialog$CallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 46
    invoke-static {p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 47
    new-instance p1, Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0}, Lcom/transsion/widgetslib/dialog/PromptController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;-><init>(Landroid/content/Context;I)V

    .line 52
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 53
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->getIsAppDialogFragment()Z

    move-result p1

    if-nez p1, :cond_0

    .line 54
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;I)I
    .locals 0

    .line 24
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/dialog/PromptDialog;)Lcom/transsion/widgetslib/dialog/PromptController;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    return-object p0
.end method

.method private static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 0

    const/high16 p0, 0x1000000

    if-lt p1, p0, :cond_0

    return p1

    .line 62
    :cond_0
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Dialog_Alert_Base:I

    return p0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public getListView()Landroid/view/View;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->getListView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public hide()V
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mOnPromptDialogStatusChangedCallback:Lcom/transsion/widgetslib/dialog/PromptDialog$CallBack;

    if-eqz v0, :cond_0

    .line 466
    invoke-interface {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$CallBack;->onHide()V

    .line 468
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 508
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/dialog/PromptController;->isCancelable()Z

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/dialog/PromptController;->isCanceledOnTouchOutside()Z

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/dialog/PromptController;->haveInputAbility()Z

    move-result v3

    invoke-static {v0, p0, v1, v2, v3}, Lcom/transsion/widgetslib/util/Utils;->setDialogWindowBackGround(Landroid/content/Context;Landroid/app/Dialog;ZZZ)V

    .line 509
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->setDialogWidth(Landroid/app/Dialog;)V

    .line 510
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mOnPromptDialogStatusChangedCallback:Lcom/transsion/widgetslib/dialog/PromptDialog$CallBack;

    if-eqz p0, :cond_0

    .line 511
    invoke-interface {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$CallBack;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 69
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->installContent()V

    .line 70
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->setDialogWidth(Landroid/app/Dialog;)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 113
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1

    .line 109
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/transsion/widgetslib/dialog/PromptController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnPromptDialogStatusChangedListener(Lcom/transsion/widgetslib/dialog/PromptDialog$CallBack;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mOnPromptDialogStatusChangedCallback:Lcom/transsion/widgetslib/dialog/PromptDialog$CallBack;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleSingleLine()V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->setTitleSingleLine()V

    return-void
.end method

.method public setTopTitle(I)V
    .locals 1

    .line 92
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 93
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setTopTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTopTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setTopTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    .line 105
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setView(ILandroid/view/View;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mOnPromptDialogStatusChangedCallback:Lcom/transsion/widgetslib/dialog/PromptDialog$CallBack;

    if-eqz v0, :cond_0

    .line 458
    invoke-interface {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$CallBack;->onShow()V

    .line 460
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

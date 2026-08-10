.class public Lcom/transsion/widgetslib/dialog/IndeterminateProgressDialog;
.super Ljava/lang/Object;
.source "IndeterminateProgressDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;I)V
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/dialog/IndeterminateProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 3

    .line 22
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_indeterminate_progress_dialog_layout:I

    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 24
    sget v1, Lcom/transsion/widgetslib/R$id;->text_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 25
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    new-instance p1, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setView(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->show()Lcom/transsion/widgetslib/dialog/PromptDialog;

    return-void
.end method

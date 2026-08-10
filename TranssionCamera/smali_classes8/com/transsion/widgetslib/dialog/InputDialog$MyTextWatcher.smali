.class Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;
.super Ljava/lang/Object;
.source "InputDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/dialog/InputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyTextWatcher"
.end annotation


# instance fields
.field private mActiveColor:I

.field private mInputDialogWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/widgetslib/dialog/InputDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalColor:I

.field private mTextNum:I


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/dialog/InputDialog;I)V
    .locals 1

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 444
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;->mInputDialogWeakReference:Ljava/lang/ref/WeakReference;

    .line 445
    iput p2, p0, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;->mTextNum:I

    .line 446
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$400(Lcom/transsion/widgetslib/dialog/InputDialog;)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;->mNormalColor:I

    .line 447
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$500(Lcom/transsion/widgetslib/dialog/InputDialog;)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;->mActiveColor:I

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;->mInputDialogWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/dialog/InputDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    .line 468
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->getNeedEmptyUnable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 469
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 472
    :cond_2
    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$600(Lcom/transsion/widgetslib/dialog/InputDialog;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$600(Lcom/transsion/widgetslib/dialog/InputDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 473
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    .line 474
    iget v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;->mTextNum:I

    const-string v2, "/"

    const-string v5, "%d"

    if-ge p1, v1, :cond_3

    .line 475
    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$600(Lcom/transsion/widgetslib/dialog/InputDialog;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-array v7, v3, [Ljava/lang/Object;

    .line 476
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v4

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p1, v3, [Ljava/lang/Object;

    iget p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;->mTextNum:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v4

    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    if-ne p1, v1, :cond_4

    if-eqz p1, :cond_4

    .line 479
    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$600(Lcom/transsion/widgetslib/dialog/InputDialog;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v6, v3, [Ljava/lang/Object;

    iget v7, p0, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;->mTextNum:I

    .line 480
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v3, [Ljava/lang/Object;

    iget p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;->mTextNum:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v4

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    :cond_4
    :goto_1
    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$700(Lcom/transsion/widgetslib/dialog/InputDialog;)Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$700(Lcom/transsion/widgetslib/dialog/InputDialog;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_5

    const-string p0, ""

    .line 486
    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/dialog/InputDialog;->setError(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/InputDialog;

    :cond_5
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

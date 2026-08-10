.class Lcom/transsion/widgetslib/dialog/PromptController$3;
.super Ljava/lang/Object;
.source "PromptController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/PromptController;->setSingleChecked(Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/dialog/PromptController;

.field final synthetic val$listener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$3;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController$3;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 195
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$3;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->access$900(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/CheckedTextView;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$3;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/PromptController;->access$900(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 196
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$3;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->access$000(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 197
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$3;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->access$000(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$3;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/PromptController;->access$900(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$3;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_1

    .line 200
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$3;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->access$700(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/content/DialogInterface;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    return-void
.end method

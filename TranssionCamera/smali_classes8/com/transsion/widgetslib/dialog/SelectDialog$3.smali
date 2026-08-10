.class Lcom/transsion/widgetslib/dialog/SelectDialog$3;
.super Ljava/lang/Object;
.source "SelectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/SelectDialog;->create(Z)Lcom/transsion/widgetslib/dialog/PromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/dialog/SelectDialog;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/dialog/SelectDialog;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/SelectDialog$3;->this$0:Lcom/transsion/widgetslib/dialog/SelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 144
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/SelectDialog$3;->this$0:Lcom/transsion/widgetslib/dialog/SelectDialog;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/SelectDialog;->access$100(Lcom/transsion/widgetslib/dialog/SelectDialog;)Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/SelectDialog$3;->this$0:Lcom/transsion/widgetslib/dialog/SelectDialog;

    invoke-static {v1}, Lcom/transsion/widgetslib/dialog/SelectDialog;->access$300(Lcom/transsion/widgetslib/dialog/SelectDialog;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/SelectDialog$3;->this$0:Lcom/transsion/widgetslib/dialog/SelectDialog;

    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/SelectDialog;->access$000(Lcom/transsion/widgetslib/dialog/SelectDialog;)Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;->getCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

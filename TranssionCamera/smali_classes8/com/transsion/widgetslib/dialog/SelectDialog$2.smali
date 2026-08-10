.class Lcom/transsion/widgetslib/dialog/SelectDialog$2;
.super Ljava/lang/Object;
.source "SelectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/SelectDialog;->setPositiveButton(Lcom/transsion/widgetslib/dialog/SelectDialog$OnSelectButtonListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/dialog/SelectDialog;

.field final synthetic val$listener:Lcom/transsion/widgetslib/dialog/SelectDialog$OnSelectButtonListener;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/dialog/SelectDialog;Lcom/transsion/widgetslib/dialog/SelectDialog$OnSelectButtonListener;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/SelectDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/SelectDialog;

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/SelectDialog$2;->val$listener:Lcom/transsion/widgetslib/dialog/SelectDialog$OnSelectButtonListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 108
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/SelectDialog$2;->val$listener:Lcom/transsion/widgetslib/dialog/SelectDialog$OnSelectButtonListener;

    if-eqz p1, :cond_0

    .line 109
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/SelectDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/SelectDialog;

    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/SelectDialog;->access$000(Lcom/transsion/widgetslib/dialog/SelectDialog;)Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;->getCheckedList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/widgetslib/dialog/SelectDialog$OnSelectButtonListener;->onClick(Ljava/util/List;)V

    :cond_0
    return-void
.end method

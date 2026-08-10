.class Lcom/transsion/widgetslib/dialog/InputDialog$5;
.super Ljava/lang/Object;
.source "InputDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/InputDialog;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/dialog/InputDialog;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/dialog/InputDialog;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$5;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 353
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$5;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->dismissOprate(Landroid/content/DialogInterface;)V

    return-void
.end method

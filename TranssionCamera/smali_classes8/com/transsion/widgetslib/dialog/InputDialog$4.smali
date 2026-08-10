.class Lcom/transsion/widgetslib/dialog/InputDialog$4;
.super Ljava/lang/Object;
.source "InputDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    .line 324
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$4;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 327
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$4;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$200(Lcom/transsion/widgetslib/dialog/InputDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$4;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$202(Lcom/transsion/widgetslib/dialog/InputDialog;Z)Z

    .line 329
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$4;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$000(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 332
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$4;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$000(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetslib/dialog/InputDialog$4$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/dialog/InputDialog$4$1;-><init>(Lcom/transsion/widgetslib/dialog/InputDialog$4;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

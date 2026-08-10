.class Lcom/transsion/widgetslib/dialog/InputDialog$3;
.super Ljava/lang/Object;
.source "InputDialog.java"

# interfaces
.implements Lcom/transsion/widgetslib/dialog/PromptDialog$CallBack;


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

    .line 301
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$3;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$3;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$100(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onHide()V
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$3;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$100(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->onHide()V

    return-void
.end method

.method public onShow()V
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$3;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$100(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/InputDialogFoldEngineWrapper;->onShow()V

    return-void
.end method

.class Lcom/transsion/widgetslib/dialog/InputDialog$2;
.super Ljava/lang/Object;
.source "InputDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/InputDialog;->transHintEllipsizeString(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/dialog/InputDialog;Ljava/lang/CharSequence;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/InputDialog$2;->val$text:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$000(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-static {v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$000(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-static {v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$000(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    .line 249
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$2;->val$text:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/InputDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-static {v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$000(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    int-to-float v0, v0

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v2, v0, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$000(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

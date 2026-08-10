.class Lcom/transsion/widgetslib/widget/FootOperationBar$7;
.super Ljava/lang/Object;
.source "FootOperationBar.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/FootOperationBar;->setFootPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/FootOperationBar;)V
    .locals 0

    .line 788
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$7;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 791
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$7;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$200(Lcom/transsion/widgetslib/widget/FootOperationBar;)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

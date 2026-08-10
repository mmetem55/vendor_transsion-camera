.class Lcom/transsion/widgetslib/widget/FootOperationBar$1;
.super Ljava/lang/Object;
.source "FootOperationBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/FootOperationBar;->setMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V
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

    .line 319
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$1;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 322
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$1;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$200(Lcom/transsion/widgetslib/widget/FootOperationBar;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 323
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$1;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$300(Lcom/transsion/widgetslib/widget/FootOperationBar;)Landroid/widget/ListPopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method

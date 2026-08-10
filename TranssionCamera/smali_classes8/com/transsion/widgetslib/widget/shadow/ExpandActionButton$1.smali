.class Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$1;
.super Ljava/lang/Object;
.source "ExpandActionButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->setMainButtonIconAndColor(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$1;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$1;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->access$000(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$1;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->access$100(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 80
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$1;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->expandItemButtons()V

    goto :goto_0

    .line 82
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$1;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->collapseItemButtons()V

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$1;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->access$200(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$OnMainButtonClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 86
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$1;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->access$200(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$OnMainButtonClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$OnMainButtonClickListener;->onMainClick(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

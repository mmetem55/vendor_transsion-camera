.class Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$1;
.super Landroid/os/Handler;
.source "OverflowMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$1;->this$0:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$1;->this$0:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->access$000(Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;)Landroid/widget/PopupMenu;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$1;->this$0:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->access$000(Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;)Landroid/widget/PopupMenu;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 63
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$1;->this$0:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->access$000(Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;)Landroid/widget/PopupMenu;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$1;->this$0:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->access$100(Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/PopupMenu;->inflate(I)V

    :cond_0
    return-void
.end method

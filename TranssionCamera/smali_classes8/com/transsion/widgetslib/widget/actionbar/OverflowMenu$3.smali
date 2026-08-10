.class Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$3;
.super Ljava/lang/Object;
.source "OverflowMenu.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->createPopuMenu(I)V
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

    .line 224
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$3;->this$0:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 1

    .line 227
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$3;->this$0:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->access$402(Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;Z)Z

    .line 228
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$3;->this$0:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->setSelected(Z)V

    return-void
.end method

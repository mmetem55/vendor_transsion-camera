.class Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$2;
.super Ljava/lang/Object;
.source "OverflowMenu.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


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

    .line 211
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$2;->this$0:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$2;->this$0:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->access$200(Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$2;->this$0:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->access$200(Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$2;->this$0:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->access$300(Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 218
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$2;->this$0:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->access$300(Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;)Landroid/app/Fragment;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

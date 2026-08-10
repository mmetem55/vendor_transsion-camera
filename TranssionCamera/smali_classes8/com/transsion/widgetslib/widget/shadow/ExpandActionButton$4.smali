.class Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$4;
.super Ljava/lang/Object;
.source "ExpandActionButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->setItemButton(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;I)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$4;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    iput p2, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$4;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 211
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$4;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->access$600(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$OnItemButtonClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 212
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$4;->this$0:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->access$600(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$OnItemButtonClickListener;

    move-result-object p1

    iget p0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$4;->val$pos:I

    invoke-interface {p1, p0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$OnItemButtonClickListener;->onItemClick(I)V

    :cond_0
    return-void
.end method

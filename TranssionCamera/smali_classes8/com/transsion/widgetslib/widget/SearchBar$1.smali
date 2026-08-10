.class Lcom/transsion/widgetslib/widget/SearchBar$1;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/SearchBar;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/SearchBar;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$1;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$1;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$000(Lcom/transsion/widgetslib/widget/SearchBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$1;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$100(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$1;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$100(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 198
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$1;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->startSearch()V

    :cond_1
    :goto_0
    return-void
.end method

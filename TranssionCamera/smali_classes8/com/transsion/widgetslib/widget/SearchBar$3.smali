.class Lcom/transsion/widgetslib/widget/SearchBar$3;
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

    .line 220
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$3;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 223
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$3;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->access$300(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$3;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->access$300(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 225
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$3;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$300(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/AutoCompleteTextView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

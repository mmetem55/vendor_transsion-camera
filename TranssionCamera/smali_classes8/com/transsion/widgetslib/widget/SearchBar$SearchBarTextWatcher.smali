.class public Lcom/transsion/widgetslib/widget/SearchBar$SearchBarTextWatcher;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/SearchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchBarTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/SearchBar;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .locals 0

    .line 756
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$SearchBarTextWatcher;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 777
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$SearchBarTextWatcher;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1900(Lcom/transsion/widgetslib/widget/SearchBar;)Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 759
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$SearchBarTextWatcher;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1900(Lcom/transsion/widgetslib/widget/SearchBar;)Z

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 768
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$SearchBarTextWatcher;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1800(Lcom/transsion/widgetslib/widget/SearchBar;)V

    .line 769
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$SearchBarTextWatcher;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->access$2000(Lcom/transsion/widgetslib/widget/SearchBar;)V

    .line 770
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$SearchBarTextWatcher;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1900(Lcom/transsion/widgetslib/widget/SearchBar;)Z

    return-void
.end method

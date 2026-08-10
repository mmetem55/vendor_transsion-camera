.class Lcom/transsion/widgetslib/widget/SearchBar$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/SearchBar;->backExitAnim()V
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

    .line 517
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$11;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 530
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$11;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->access$900(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 531
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$11;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->access$300(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    .line 532
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$11;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1100(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 533
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$11;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$300(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/AutoCompleteTextView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 520
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$11;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    .line 521
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 523
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar$11;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 525
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$11;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$300(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/AutoCompleteTextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    return-void
.end method

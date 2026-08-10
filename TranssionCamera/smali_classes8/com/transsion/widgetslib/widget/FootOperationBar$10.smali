.class Lcom/transsion/widgetslib/widget/FootOperationBar$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FootOperationBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/FootOperationBar;->closeAnimator()V
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

    .line 867
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$10;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 870
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$10;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 871
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$10;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$902(Lcom/transsion/widgetslib/widget/FootOperationBar;Z)Z

    .line 872
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$10;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$200(Lcom/transsion/widgetslib/widget/FootOperationBar;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 873
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$10;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$200(Lcom/transsion/widgetslib/widget/FootOperationBar;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 875
    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$10;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$10;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$1000(Lcom/transsion/widgetslib/widget/FootOperationBar;)Lcom/transsion/widgetslib/widget/FootOperationBar$MyOnPreDrawListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

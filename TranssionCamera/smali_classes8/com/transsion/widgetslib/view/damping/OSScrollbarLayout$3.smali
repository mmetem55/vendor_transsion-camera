.class Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$3;
.super Ljava/lang/Object;
.source "OSScrollbarLayout.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->setOverScrollView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

.field final synthetic val$view:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$3;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    iput-object p2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$3;->val$view:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    .line 198
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$3;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    iget-object p2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$3;->val$view:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->computeVerticalScrollRange()I

    move-result p3

    iget-object p4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$3;->val$view:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {p4}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->computeVerticalScrollOffset()I

    move-result p4

    invoke-static {p1, p2, p3, p4}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$300(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroid/view/View;II)V

    .line 199
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$3;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$400(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    return-void
.end method

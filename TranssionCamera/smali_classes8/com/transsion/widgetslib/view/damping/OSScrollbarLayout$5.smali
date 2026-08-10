.class Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$5;
.super Ljava/lang/Object;
.source "OSScrollbarLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->drawScrollBar()V
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

    .line 244
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$5;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    iput-object p2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$5;->val$view:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$5;->val$view:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->computeVerticalScrollRange()I

    move-result v0

    .line 248
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$5;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$500(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$5;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {v1, v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$502(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)I

    .line 253
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$5;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$602(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;I)I

    .line 254
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$5;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$5;->val$view:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$500(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$5;->val$view:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->computeVerticalScrollOffset()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$300(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroid/view/View;II)V

    .line 256
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$5;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$700(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    return-void
.end method

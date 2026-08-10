.class Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$9;
.super Ljava/lang/Object;
.source "OSScrollbarLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$9;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$9;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$1300(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$1400(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroid/animation/Animator;)V

    .line 538
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$9;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->access$700(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    return-void
.end method

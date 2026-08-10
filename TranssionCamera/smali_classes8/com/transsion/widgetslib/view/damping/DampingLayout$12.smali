.class Lcom/transsion/widgetslib/view/damping/DampingLayout$12;
.super Ljava/lang/Object;
.source "DampingLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/damping/DampingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V
    .locals 0

    .line 729
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$12;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 732
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$12;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$300(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$400(Lcom/transsion/widgetslib/view/damping/DampingLayout;Landroid/animation/Animator;)V

    .line 734
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$12;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$300(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$12;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScrollBarDefaultDelayBeforeFade()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 735
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$12;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$300(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

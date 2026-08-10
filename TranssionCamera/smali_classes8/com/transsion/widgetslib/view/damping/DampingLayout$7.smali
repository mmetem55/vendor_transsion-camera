.class Lcom/transsion/widgetslib/view/damping/DampingLayout$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DampingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/DampingLayout;->refreshFinishAnim()V
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

    .line 381
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$7;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 384
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 385
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$7;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$902(Lcom/transsion/widgetslib/view/damping/DampingLayout;Z)Z

    .line 386
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$7;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$1002(Lcom/transsion/widgetslib/view/damping/DampingLayout;Z)Z

    .line 387
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$7;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$1100(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$string;->os_dampingl_refresh_finish:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 388
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$7;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$1200(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Lcom/transsion/widgetslib/view/LoadingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/LoadingView;->release()V

    return-void
.end method

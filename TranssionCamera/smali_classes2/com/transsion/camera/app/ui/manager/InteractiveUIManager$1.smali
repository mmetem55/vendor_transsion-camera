.class Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InteractiveUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->updateOptionRootVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 406
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->access$200(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 407
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->access$200(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->access$300(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 400
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->access$200(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 401
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->access$200(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->access$300(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 395
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->access$200(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->access$300(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Landroid/view/ViewGroup;Z)V

    return-void
.end method

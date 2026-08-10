.class Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InteractiveUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->updateOptionRootLayout(IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

.field final synthetic val$hoverNeedAni:Z

.field final synthetic val$orientation:I

.field final synthetic val$screenFormType:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;IIZ)V
    .locals 0

    .line 715
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    iput p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$2;->val$orientation:I

    iput p3, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$2;->val$screenFormType:I

    iput-boolean p4, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$2;->val$hoverNeedAni:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 718
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->access$200(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 719
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    iget v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$2;->val$orientation:I

    iget v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$2;->val$screenFormType:I

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$2;->val$hoverNeedAni:Z

    invoke-static {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->access$400(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;IIZ)V

    .line 721
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->access$200(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->access$502(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 722
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->access$500(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-static {}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->access$600()Landroid/view/animation/PathInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 723
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->access$500(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

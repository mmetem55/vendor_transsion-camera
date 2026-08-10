.class final Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;
.super Ljava/lang/Object;
.source "TemplateUI.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RotateAnimatorExecutor"
.end annotation


# instance fields
.field private mCurrentAnimator:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;

.field private mExecuting:Z

.field private mLatestAnimator:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)V
    .locals 0

    .line 838
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$1;)V
    .locals 0

    .line 838
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;)V
    .locals 0

    .line 838
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;->release()V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;)V
    .locals 0

    .line 838
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;->execute(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;)V

    return-void
.end method

.method private execute(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;)V
    .locals 3

    .line 848
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->access$800()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute mExecuting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;->mExecuting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentAnimator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;->mCurrentAnimator:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", animator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 850
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;->mExecuting:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 851
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;->mExecuting:Z

    .line 852
    invoke-static {p1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->access$1400(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;Landroid/animation/Animator$AnimatorListener;)V

    .line 853
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->access$1500(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;)V

    .line 854
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;->mCurrentAnimator:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 856
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;->mLatestAnimator:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;

    .line 857
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;->mCurrentAnimator:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->access$1600(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;)I

    move-result v0

    .line 858
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->access$1600(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 859
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;->mLatestAnimator:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;

    :cond_1
    :goto_0
    return-void
.end method

.method private release()V
    .locals 1

    const/4 v0, 0x0

    .line 865
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;->mLatestAnimator:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;

    .line 866
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;->mCurrentAnimator:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;

    if-eqz p0, :cond_0

    .line 867
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->access$1700(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 878
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;->mLatestAnimator:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 879
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;->mExecuting:Z

    .line 880
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;->mCurrentAnimator:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;

    return-void

    .line 883
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;->mCurrentAnimator:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->access$1600(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->access$1802(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;I)I

    .line 884
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;->mLatestAnimator:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;

    invoke-static {p1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->access$1400(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;Landroid/animation/Animator$AnimatorListener;)V

    .line 885
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;->mLatestAnimator:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;->access$1500(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;)V

    .line 887
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;->mLatestAnimator:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;->mCurrentAnimator:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;

    .line 888
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;->mLatestAnimator:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

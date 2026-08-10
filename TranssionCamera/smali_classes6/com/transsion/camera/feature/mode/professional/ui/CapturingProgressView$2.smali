.class Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CapturingProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->startDrawProgress(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$2;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 98
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$2;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$2;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->access$100(Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;)Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$2;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->access$100(Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;)Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;->onProgressEnd()V

    :cond_0
    return-void
.end method

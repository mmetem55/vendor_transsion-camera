.class Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecordingProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->doArcStopValueAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView$3;->this$0:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 232
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView$3;->this$0:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    invoke-static {p1}, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->access$100(Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;)Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView$ProgressCallBack;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 233
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView$3;->this$0:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->access$100(Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;)Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView$ProgressCallBack;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView$ProgressCallBack;->onProgressEnd()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 239
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView$3;->this$0:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    invoke-static {p1}, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->access$100(Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;)Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView$ProgressCallBack;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 240
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView$3;->this$0:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->access$100(Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;)Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView$ProgressCallBack;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView$ProgressCallBack;->onProgressEnd()V

    :cond_0
    return-void
.end method

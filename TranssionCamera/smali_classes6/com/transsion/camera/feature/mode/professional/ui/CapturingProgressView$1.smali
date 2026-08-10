.class Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$1;
.super Ljava/lang/Object;
.source "CapturingProgressView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 88
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->access$002(Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;F)F

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

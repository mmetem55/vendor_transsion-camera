.class Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$3;
.super Ljava/lang/Object;
.source "OSSeekbar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->createThumbInScalAnimator(FF)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$3;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 631
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$3;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$102(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)F

    .line 633
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$3;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$200(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    .line 634
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$3;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$100(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$3;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$400(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$3;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$200(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v1

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$302(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)F

    .line 636
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$3;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

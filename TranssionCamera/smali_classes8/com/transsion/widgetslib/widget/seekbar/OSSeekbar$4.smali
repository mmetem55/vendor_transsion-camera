.class Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$4;
.super Ljava/lang/Object;
.source "OSSeekbar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->createThumbIntervalAnimator()Landroid/animation/ValueAnimator;
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

    .line 652
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$4;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 655
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 656
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$4;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$600(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$4;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$700(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$4;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$600(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$502(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)F

    .line 657
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$4;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$500(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$900(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$802(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)F

    .line 658
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$4;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$1000(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$4;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$1000(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$4;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$4;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgressFloat()F

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IFZ)V

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-gtz v1, :cond_1

    .line 662
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$4;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$1100(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v1

    mul-float/2addr p1, v2

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$4;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$1200(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$4;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$1100(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr p1, v2

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$002(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)F

    goto :goto_0

    .line 664
    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$4;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$1200(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v3

    sub-float/2addr p1, v0

    mul-float/2addr p1, v2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$4;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$1300(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$4;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$1200(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F

    move-result v2

    sub-float/2addr v0, v2

    mul-float/2addr p1, v0

    add-float/2addr v3, p1

    invoke-static {v1, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$002(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)F

    .line 666
    :goto_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$4;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

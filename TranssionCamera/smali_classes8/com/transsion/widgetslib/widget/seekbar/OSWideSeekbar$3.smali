.class Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$3;
.super Ljava/lang/Object;
.source "OSWideSeekbar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->createUnPressValueAnimator()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$3;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$3;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->access$100(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;)F

    move-result v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->access$002(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;F)F

    .line 208
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$3;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->access$300(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;)F

    move-result v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->access$202(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;F)F

    .line 209
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$3;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

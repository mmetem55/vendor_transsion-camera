.class Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$2;
.super Ljava/lang/Object;
.source "OSSeekbar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->createThumbWidthAnimator(FF)Landroid/animation/ValueAnimator;
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

    .line 607
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$2;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$2;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$002(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)F

    .line 611
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$2;->this$0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

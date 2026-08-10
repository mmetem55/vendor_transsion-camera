.class Lcom/transsion/widgetslib/widget/OSMaskImageView$1;
.super Ljava/lang/Object;
.source "OSMaskImageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/OSMaskImageView;->initMaskAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/OSMaskImageView;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$1;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 78
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    .line 79
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 80
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 81
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$1;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$000(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 82
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$1;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$000(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$1;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-static {v1}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$100(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$1;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-static {v2}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$100(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 84
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$1;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.class Lcom/transsion/widgetslib/widget/OSMaskImageView$2;
.super Ljava/lang/Object;
.source "OSMaskImageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/OSMaskImageView;->initAlphaAnimator()V
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

    .line 94
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$2;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 97
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    .line 98
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$2;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$100(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$2;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->access$202(Lcom/transsion/widgetslib/widget/OSMaskImageView;I)I

    .line 100
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$2;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

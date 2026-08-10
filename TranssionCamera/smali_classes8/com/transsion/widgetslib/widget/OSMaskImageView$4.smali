.class Lcom/transsion/widgetslib/widget/OSMaskImageView$4;
.super Ljava/lang/Object;
.source "OSMaskImageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/OSMaskImageView;->initPhaseAnimator()V
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

    .line 115
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$4;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 118
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    .line 119
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 120
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 121
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$4;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 122
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView$4;->this$0:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_0
    return-void
.end method

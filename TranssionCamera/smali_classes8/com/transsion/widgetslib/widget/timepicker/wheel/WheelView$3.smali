.class Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$3;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->animResetAmpmLocation(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)V
    .locals 0

    .line 2273
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$3;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 2276
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    .line 2277
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 2278
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$3;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->access$602(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;F)F

    .line 2279
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$3;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->access$700(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)V

    :cond_0
    return-void
.end method

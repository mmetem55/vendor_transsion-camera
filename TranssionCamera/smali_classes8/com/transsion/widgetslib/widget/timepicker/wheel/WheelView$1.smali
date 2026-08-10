.class Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->initValue(Landroid/content/Context;)V
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

    .line 403
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->access$000(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->access$100(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->access$200(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 408
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->access$300(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v0

    .line 413
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->access$402(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;F)F

    .line 414
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->access$400(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)F

    move-result v0

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->access$502(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;F)F

    nop

    :cond_1
    :goto_0
    return-void
.end method

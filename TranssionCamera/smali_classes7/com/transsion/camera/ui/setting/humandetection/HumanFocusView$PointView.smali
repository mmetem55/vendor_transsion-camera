.class Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView$PointView;
.super Landroid/view/View;
.source "HumanFocusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PointView"
.end annotation


# instance fields
.field point:Landroid/graphics/Point;

.field final synthetic this$0:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;Landroid/content/Context;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView$PointView;->this$0:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

    .line 305
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0806be

    .line 306
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 325
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView$PointView;->point:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 326
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    add-int/2addr p2, p1

    .line 327
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView$PointView;->point:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->y:I

    .line 328
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    add-int/2addr p4, p3

    .line 330
    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 319
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView$PointView;->this$0:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->access$000(Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;)I

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView$PointView;->this$0:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->access$000(Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setPoint(Landroid/graphics/Point;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView$PointView;->point:Landroid/graphics/Point;

    return-void
.end method

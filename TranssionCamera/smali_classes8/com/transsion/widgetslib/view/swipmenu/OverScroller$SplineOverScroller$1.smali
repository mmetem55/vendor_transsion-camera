.class Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;Ljava/lang/String;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller$1;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-direct {p0, p2}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)F
    .locals 0

    .line 477
    invoke-static {p1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->access$200(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 474
    check-cast p1, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller$1;->getValue(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;F)V
    .locals 0

    const/4 p0, 0x0

    .line 482
    invoke-static {p1, p0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->access$102(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;Z)Z

    float-to-int p0, p2

    .line 483
    invoke-static {p1, p0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->access$202(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;I)I

    .line 484
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setValue: \u5361\u987f\u8fc7\u6ee4 SPRING_PROPERTY value = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OverScroller"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 474
    check-cast p1, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller$1;->setValue(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;F)V

    return-void
.end method

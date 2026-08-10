.class Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller$3;
.super Ljava/lang/Object;
.source "OverScroller.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller$3;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 548
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller$3;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->finish()V

    .line 549
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller$3;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->access$802(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;I)I

    .line 550
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller$3;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    float-to-int p1, p3

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->access$202(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;I)I

    return-void
.end method

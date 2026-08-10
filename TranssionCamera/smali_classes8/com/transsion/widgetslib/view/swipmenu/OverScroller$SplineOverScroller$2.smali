.class Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller$2;
.super Ljava/lang/Object;
.source "OverScroller.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


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

    .line 537
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller$2;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller$2;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->access$900(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 541
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller$2;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;->access$900(Lcom/transsion/widgetslib/view/swipmenu/OverScroller$SplineOverScroller;)Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;->onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    :cond_0
    return-void
.end method

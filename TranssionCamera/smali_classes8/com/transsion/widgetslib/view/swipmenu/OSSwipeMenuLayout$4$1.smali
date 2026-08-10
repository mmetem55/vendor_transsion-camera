.class Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$1;
.super Ljava/lang/Object;
.source "OSSwipeMenuLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;)V
    .locals 0

    .line 1401
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$1;->this$1:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    .line 1404
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 1405
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$1;->this$1:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;

    iget-object v2, v1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->val$deleteAnimationListenerCompat:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {v1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$100(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1406
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$1;->this$1:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;

    iget-object v1, v1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->val$deleteAnimationListenerCompat:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;

    invoke-interface {v1, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;->onVerticalAniUpdate(F)V

    .line 1408
    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$1;->this$1:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;

    iget v2, v1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->val$topMargin:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_1

    iget v4, v1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->val$bottomMargin:I

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, v1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->val$layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_2

    .line 1409
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v2, v2

    sub-float v6, v3, v0

    mul-float/2addr v2, v6

    float-to-int v2, v2

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v1, v1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->val$bottomMargin:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-virtual {v4, v5, v2, v7, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1414
    :cond_2
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$1;->this$1:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;

    iget-object v1, v1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {v1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$000(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$1;->this$1:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;

    iget-object v1, v1, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {v1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$100(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->isMenuImageType()Z

    move-result v1

    if-eqz v1, :cond_4

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_3

    .line 1417
    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$1;->this$1:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;

    iget-object v2, v2, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {v2}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$500(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Landroid/graphics/Paint;

    move-result-object v2

    sub-float v0, v3, v0

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1418
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$1;->this$1:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;

    iget-object v0, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    sub-float/2addr v3, v1

    mul-float/2addr v4, v3

    float-to-int v1, v4

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$602(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;I)I

    .line 1419
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$1;->this$1:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;

    iget-object v0, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {v0, v3}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$702(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;F)F

    goto :goto_0

    .line 1421
    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$1;->this$1:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;

    iget-object v0, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$500(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1422
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$1;->this$1:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;

    iget-object v0, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$602(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;I)I

    .line 1423
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$1;->this$1:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;

    iget-object v0, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$702(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;F)F

    .line 1426
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1427
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$1;->this$1:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;

    iget-object v0, v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    float-to-int p1, p1

    .line 1428
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1429
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4$1;->this$1:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;

    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$4;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

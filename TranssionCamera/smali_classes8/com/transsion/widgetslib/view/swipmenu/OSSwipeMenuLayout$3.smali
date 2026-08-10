.class Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;
.super Ljava/lang/Object;
.source "OSSwipeMenuLayout.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->doDeleteAnimationCore(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListener;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

.field final synthetic val$temScrollX:I

.field final synthetic val$tempFinal:I


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;II)V
    .locals 0

    .line 1373
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    iput p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;->val$tempFinal:I

    iput p3, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;->val$temScrollX:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 2

    .line 1376
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$000(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$100(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->isMenuImageType()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1377
    iget p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;->val$tempFinal:I

    int-to-float p1, p1

    div-float p1, p2, p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    sub-float/2addr v0, p1

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int p1, v0

    .line 1380
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$202(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;I)I

    .line 1381
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$300(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 1383
    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {p1, p3}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$202(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;I)I

    .line 1384
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$300(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1387
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;->this$0:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$3;->val$temScrollX:I

    float-to-int p2, p2

    add-int/2addr p0, p2

    invoke-virtual {p1, p0, p3}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->scrollTo(II)V

    return-void
.end method

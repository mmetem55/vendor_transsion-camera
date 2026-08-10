.class Lcom/transsion/widgetslib/view/swipmenu/LeftHorizontal;
.super Lcom/transsion/widgetslib/view/swipmenu/Horizontal;
.source "LeftHorizontal.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LeftHorizontal"


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;)V
    .locals 1

    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, v0, p1}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;-><init>(ILcom/transsion/widgetslib/view/swipmenu/SwipeMenu;)V

    return-void
.end method


# virtual methods
.method public autoCloseMenu(Lcom/transsion/widgetslib/view/swipmenu/OverScroller;II)V
    .locals 0

    neg-int p0, p2

    .line 40
    invoke-virtual {p1, p2, p0, p3}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->startScroll(III)V

    return-void
.end method

.method public autoCloseMenuFling(Lcom/transsion/widgetslib/view/swipmenu/OverScroller;IIIII)V
    .locals 0

    .line 35
    invoke-virtual/range {p1 .. p6}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->fling(IIIII)V

    return-void
.end method

.method public autoOpenMenu(Lcom/transsion/widgetslib/view/swipmenu/OverScroller;II)V
    .locals 1

    .line 25
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result p0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    sub-int/2addr p0, p2

    invoke-virtual {p1, v0, p0, p3}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->startScroll(III)V

    return-void
.end method

.method public autoOpenMenuFling(Lcom/transsion/widgetslib/view/swipmenu/OverScroller;IIIII)V
    .locals 0

    .line 30
    invoke-virtual/range {p1 .. p6}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->fling(IIIII)V

    return-void
.end method

.method public checkXY(II)Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->mChecker:Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;

    iput p1, v0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;->x:I

    .line 46
    iput p2, v0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;->y:I

    const/4 p2, 0x0

    .line 47
    iput-boolean p2, v0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;->shouldResetSwipe:Z

    if-nez p1, :cond_0

    const/4 v1, 0x1

    .line 49
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;->shouldResetSwipe:Z

    :cond_0
    if-ltz p1, :cond_1

    .line 52
    iput p2, v0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;->x:I

    .line 54
    :cond_1
    iget p1, v0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;->x:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result p2

    neg-int p2, p2

    if-gt p1, p2, :cond_2

    .line 55
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->mChecker:Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result p2

    neg-int p2, p2

    iput p2, p1, Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;->x:I

    .line 57
    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->mChecker:Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;

    return-object p0
.end method

.method getClickMenuItemIndex(IFLandroid/view/MotionEvent;Z)I
    .locals 6

    .line 67
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 68
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    .line 69
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuItemCount()I

    move-result v1

    const/4 v2, -0x1

    if-lez v1, :cond_4

    .line 70
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuWidth()I

    move-result v3

    sub-int v3, p1, v3

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    goto/16 :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuWidth()I

    move-result v3

    if-gtz v3, :cond_1

    return v2

    :cond_1
    if-eqz p4, :cond_3

    .line 77
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p4

    invoke-virtual {p4}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->isMenuImageType()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 78
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p4

    invoke-virtual {p4}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object p4

    const/4 v4, 0x0

    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    invoke-virtual {p4}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result p4

    int-to-float p4, p4

    sub-int/2addr p1, v3

    int-to-float v3, p1

    sub-float v3, v0, v3

    .line 79
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuPadding()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, p4

    float-to-int v3, v3

    if-ltz v3, :cond_2

    if-ge v3, v1, :cond_2

    .line 82
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuPadding()I

    move-result v1

    add-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float v1, v3

    mul-float/2addr v1, p4

    add-float/2addr p1, v1

    .line 83
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p4

    invoke-virtual {p4}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosCircleRadius()I

    move-result p4

    int-to-float p4, p4

    add-float/2addr p1, p4

    float-to-double v4, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    float-to-double p1, p2

    float-to-double v0, v0

    sub-double/2addr v0, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 85
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double p3, p3

    sub-double/2addr p3, p1

    invoke-static {p3, p4, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    .line 86
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosCircleRadius()I

    move-result p0

    int-to-double p3, p0

    cmpl-double p0, p1, p3

    if-lez p0, :cond_2

    return v2

    :cond_2
    return v3

    :cond_3
    sub-int/2addr p1, v3

    int-to-float p0, p1

    sub-float/2addr v0, p0

    float-to-int p0, v0

    .line 93
    div-int/2addr v3, v1

    div-int/2addr p0, v3

    return p0

    :cond_4
    :goto_0
    return v2
.end method

.method public isClickOnContentView(IF)Z
    .locals 0

    int-to-float p0, p1

    cmpg-float p0, p2, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMenuOpen(I)Z
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getDirection()I

    move-result p0

    mul-int/2addr v0, p0

    sub-int/2addr p1, v0

    .line 15
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/16 p1, 0x8

    if-gt p0, p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMenuOpenNotEqual(I)Z
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getDirection()I

    move-result p0

    mul-int/2addr v0, p0

    if-ge p1, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

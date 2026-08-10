.class abstract Lcom/transsion/widgetslib/view/swipmenu/Horizontal;
.super Ljava/lang/Object;
.source "Horizontal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;
    }
.end annotation


# static fields
.field public static final LEFT_DIRECTION:I = 0x1

.field public static final RIGHT_DIRECTION:I = -0x1


# instance fields
.field private direction:I

.field protected mChecker:Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;

.field private screenWidth:I

.field private swipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;


# direct methods
.method public constructor <init>(ILcom/transsion/widgetslib/view/swipmenu/SwipeMenu;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->direction:I

    .line 22
    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->swipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    .line 23
    new-instance p1, Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;

    invoke-direct {p1}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->mChecker:Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;

    return-void
.end method


# virtual methods
.method public abstract autoCloseMenu(Lcom/transsion/widgetslib/view/swipmenu/OverScroller;II)V
.end method

.method public abstract autoCloseMenuFling(Lcom/transsion/widgetslib/view/swipmenu/OverScroller;IIIII)V
.end method

.method public abstract autoOpenMenu(Lcom/transsion/widgetslib/view/swipmenu/OverScroller;II)V
.end method

.method public abstract autoOpenMenuFling(Lcom/transsion/widgetslib/view/swipmenu/OverScroller;IIIII)V
.end method

.method public abstract checkXY(II)Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;
.end method

.method abstract getClickMenuItemIndex(IFLandroid/view/MotionEvent;Z)I
.end method

.method public getDirection()I
    .locals 0

    .line 49
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->direction:I

    return p0
.end method

.method public getMenuItemCount()I
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->swipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->swipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    return-object p0
.end method

.method public getMenuWidth()I
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->swipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result p0

    return p0
.end method

.method public getScreenWidth()I
    .locals 0

    .line 67
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->screenWidth:I

    return p0
.end method

.method public abstract isClickOnContentView(IF)Z
.end method

.method public isCompleteClose(I)Z
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getDirection()I

    move-result p0

    mul-int/2addr v0, p0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract isMenuOpen(I)Z
.end method

.method public abstract isMenuOpenNotEqual(I)Z
.end method

.method public setScreenWidth(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->screenWidth:I

    return-void
.end method

.class public Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;
.super Ljava/lang/Object;
.source "SwipeMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu$OrientationMode;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHiosCircleRadius:I

.field private mIsHios:Z

.field private mIsMenuImageType:Z

.field private mMenuItemPadding:I

.field private mMenuPadding:I

.field private mOrientation:I

.field private mSwipeMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 59
    sget-object v0, Lcom/transsion/widgetslib/util/Utils;->mOsType:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mIsMenuImageType:Z

    .line 63
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 64
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mOrientation:I

    .line 65
    iput-boolean p2, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mIsHios:Z

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    .line 67
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mIsHios:Z

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mContext:Landroid/content/Context;

    const/16 p2, 0x9

    invoke-static {p1, p2}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mMenuPadding:I

    .line 69
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mContext:Landroid/content/Context;

    const/4 p2, 0x7

    invoke-static {p1, p2}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mMenuItemPadding:I

    .line 70
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mContext:Landroid/content/Context;

    const/16 p2, 0x14

    invoke-static {p1, p2}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mHiosCircleRadius:I

    :cond_0
    return-void
.end method

.method private decidedMenuType()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->setIsMenuImageType(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addMenuItem(Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 99
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mIsHios:Z

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->setIsHios(Z)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->decidedMenuType()V

    return-void
.end method

.method public getAdapterPosition()I
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 143
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getPosition()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getEdgeDistanceHios(I)F
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-lt v1, p1, :cond_1

    .line 154
    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 156
    :cond_1
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mMenuPadding:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    :cond_2
    :goto_1
    return v0
.end method

.method public getHiosCircleRadius()I
    .locals 0

    .line 45
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mHiosCircleRadius:I

    return p0
.end method

.method public getHiosSpaceRatio()F
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 164
    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mMenuPadding:I

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mMenuItemPadding:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getMenuItemPadding()I
    .locals 0

    .line 55
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mMenuItemPadding:I

    return p0
.end method

.method public getMenuItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    return-object p0
.end method

.method public getMenuPadding()I
    .locals 0

    .line 51
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mMenuPadding:I

    return p0
.end method

.method public getMenuTotalWidth()I
    .locals 3

    .line 125
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mIsHios:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->isMenuImageType()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 126
    :goto_0
    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_2

    .line 130
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mMenuPadding:I

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    goto :goto_2

    :cond_1
    move v0, v1

    .line 133
    :goto_1
    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 134
    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return v0
.end method

.method public getOrientation()I
    .locals 0

    .line 94
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mOrientation:I

    return p0
.end method

.method public hasMenuItems()Z
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isHios()Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mIsHios:Z

    return p0
.end method

.method public isMenuImageType()Z
    .locals 0

    .line 173
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mIsMenuImageType:Z

    return p0
.end method

.method public removeMenuItem(Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;)V
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setIsMenuImageType(Z)V
    .locals 0

    .line 177
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mIsMenuImageType:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mOrientation:I

    return-void
.end method

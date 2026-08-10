.class public Lcom/transsion/widgetslib/view/PagerScroller;
.super Landroid/widget/Scroller;
.source "PagerScroller.java"


# instance fields
.field private mDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 13
    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-direct {p0, p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    const/16 p1, 0x1f4

    .line 10
    iput p1, p0, Lcom/transsion/widgetslib/view/PagerScroller;->mDuration:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    const/16 p1, 0x1f4

    .line 10
    iput p1, p0, Lcom/transsion/widgetslib/view/PagerScroller;->mDuration:I

    return-void
.end method


# virtual methods
.method public getmDuration()I
    .locals 0

    .line 37
    iget p0, p0, Lcom/transsion/widgetslib/view/PagerScroller;->mDuration:I

    return p0
.end method

.method public setmDuration(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/transsion/widgetslib/view/PagerScroller;->mDuration:I

    return-void
.end method

.method public startScroll(IIII)V
    .locals 6

    .line 29
    iget v5, p0, Lcom/transsion/widgetslib/view/PagerScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 6

    .line 23
    iget v5, p0, Lcom/transsion/widgetslib/view/PagerScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

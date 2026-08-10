.class public Lcom/transsion/camera/utils/LayoutUtils;
.super Ljava/lang/Object;
.source "LayoutUtils.java"


# direct methods
.method public static copyMarginParams(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 11
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 12
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 13
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 14
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method

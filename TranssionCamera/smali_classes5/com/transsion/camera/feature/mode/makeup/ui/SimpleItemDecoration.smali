.class public Lcom/transsion/camera/feature/mode/makeup/ui/SimpleItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SimpleItemDecoration.java"


# instance fields
.field private final mHorizontalMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/makeup/R$dimen;->mu_item_horizontal_margin:I

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SimpleItemDecoration;->mHorizontalMargin:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 36
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 38
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    if-nez p4, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p4

    .line 43
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_1

    .line 45
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SimpleItemDecoration;->mHorizontalMargin:I

    invoke-virtual {p1, p0, p3, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_2

    .line 47
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SimpleItemDecoration;->mHorizontalMargin:I

    invoke-virtual {p1, p3, p3, p0, p3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

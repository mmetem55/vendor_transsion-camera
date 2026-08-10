.class public Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "VidSigShockItemDecoration.java"


# instance fields
.field private final mHorizontalMargin:I

.field private final mItemInterval:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070792

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mHorizontalMargin:I

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070794

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mItemInterval:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 32
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    if-nez p4, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p4

    .line 39
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_1

    .line 42
    iget p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mHorizontalMargin:I

    invoke-virtual {p1, p0, p3, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_2

    .line 44
    iget p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mItemInterval:I

    iget p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mHorizontalMargin:I

    invoke-virtual {p1, p2, p3, p0, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 46
    :cond_2
    iget p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/adapter/VidSigShockItemDecoration;->mItemInterval:I

    invoke-virtual {p1, p0, p3, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

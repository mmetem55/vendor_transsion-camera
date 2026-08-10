.class public Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "MoreGridListView.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$DragEnterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$IAddItemLastCallback;,
        Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$OnGridViewDataChangedListener;,
        Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$ListEmptyListener;
    }
.end annotation


# instance fields
.field private mItemLastCallback:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$IAddItemLastCallback;

.field private mListEmptyListener:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$ListEmptyListener;

.field private mOnDataChangedListener:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$OnGridViewDataChangedListener;

.field private final mSwapItemRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mSwapItemRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mSwapItemRect:Landroid/graphics/Rect;

    return-void
.end method

.method private isItemNeedChange(Landroid/view/DragEvent;Landroid/view/View;)Z
    .locals 9

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 323
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x0

    aget v3, v1, v2

    .line 324
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    const/4 v4, 0x1

    aget v1, v1, v4

    .line 325
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, v0

    add-int/2addr v1, v5

    .line 326
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 327
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-double v0, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 328
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    int-to-double v7, p1

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 329
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x3

    if-ge p1, p2, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result p0

    if-nez p0, :cond_0

    move v2, v4

    :cond_0
    return v2
.end method

.method private isItemNeedChange(Landroid/view/View;IIF)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    if-eq p3, v0, :cond_3

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    .line 313
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    float-to-int p1, v0

    const/4 v0, 0x1

    if-le p2, p3, :cond_2

    int-to-float p1, p1

    cmpg-float p1, p4, p1

    if-gez p1, :cond_1

    move p0, v0

    :cond_1
    return p0

    :cond_2
    int-to-float p1, p1

    cmpl-float p1, p4, p1

    if-lez p1, :cond_3

    move p0, v0

    :cond_3
    :goto_0
    return p0
.end method

.method private updateFixedModeLayout(Z)V
    .locals 1

    .line 333
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->setEditMode(Z)V

    .line 335
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private updateModeChangeAnimFlag()V
    .locals 4

    .line 71
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 73
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    .line 82
    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->updateAnimFlag(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addItemToLast(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemCount()I

    move-result v0

    .line 60
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    .line 61
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_0
    return-void
.end method

.method public changeEditMode()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->updateModeChangeAnimFlag()V

    const/4 v0, 0x1

    .line 67
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->updateFixedModeLayout(Z)V

    return-void
.end method

.method public changeNormalMode()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->updateModeChangeAnimFlag()V

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->updateFixedModeLayout(Z)V

    return-void
.end method

.method public containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public findItemView(I)Landroid/view/View;
    .locals 1

    .line 103
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public findItemView(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Landroid/view/View;
    .locals 1

    .line 96
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;
    .locals 0

    .line 111
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    return-object p0
.end method

.method protected getBottomPaddingOffset()I
    .locals 0

    .line 211
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    return p0
.end method

.method public getSwapItemRect()Landroid/graphics/Rect;
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mSwapItemRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onDragEnter(Lcom/transsion/camera/app/ui/mode/ModeUIItem;Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 0

    return-void
.end method

.method public removeItemForDragging(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 1

    .line 173
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p1

    .line 175
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->removeItem(I)V

    .line 176
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 177
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mListEmptyListener:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$ListEmptyListener;

    if-eqz p1, :cond_0

    .line 178
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$ListEmptyListener;->onListEmpty()V

    .line 180
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mOnDataChangedListener:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$OnGridViewDataChangedListener;

    if-eqz p0, :cond_1

    .line 181
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$OnGridViewDataChangedListener;->onGridViewDataChanged()V

    :cond_1
    return-void
.end method

.method public setAdapter(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)V
    .locals 0

    .line 115
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 116
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->setDragEnterListener(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$DragEnterListener;)V

    return-void
.end method

.method public setAddItemCallback(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$IAddItemLastCallback;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mItemLastCallback:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$IAddItemLastCallback;

    return-void
.end method

.method public setListEmptyListener(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$ListEmptyListener;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mListEmptyListener:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$ListEmptyListener;

    .line 188
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mListEmptyListener:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$ListEmptyListener;

    if-eqz p0, :cond_0

    .line 190
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$ListEmptyListener;->onListEmpty()V

    :cond_0
    return-void
.end method

.method public setOnDataChangedListener(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$OnGridViewDataChangedListener;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mOnDataChangedListener:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$OnGridViewDataChangedListener;

    return-void
.end method

.method public setSwapItemRect(I)V
    .locals 0

    .line 302
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->findItemView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 304
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mSwapItemRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_0
    return-void
.end method

.method public showDraggingItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 3

    .line 215
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 216
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 217
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    const/4 v0, 0x0

    if-ne p1, v2, :cond_1

    const p1, 0x7f0902d4

    .line 222
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 223
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f0902ca

    .line 225
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/mode/more/gridlist/GridListItemView;

    .line 226
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 229
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemCount()I

    move-result p1

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mListEmptyListener:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$ListEmptyListener;

    if-eqz p1, :cond_2

    .line 230
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->resetFlag()V

    .line 231
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mListEmptyListener:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$ListEmptyListener;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$ListEmptyListener;->onNotListEmpty()V

    .line 233
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mOnDataChangedListener:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$OnGridViewDataChangedListener;

    if-eqz p0, :cond_3

    .line 234
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$OnGridViewDataChangedListener;->onGridViewDataChanged()V

    :cond_3
    return-void
.end method

.method public swapItemPositionIfNecessary(Lcom/transsion/camera/app/ui/mode/ModeUIItem;Landroid/view/DragEvent;ILandroid/view/View;IIF)I
    .locals 3

    .line 241
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x2

    if-nez p3, :cond_3

    .line 245
    invoke-direct {p0, p2, p4}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->isItemNeedChange(Landroid/view/DragEvent;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 246
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 247
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p2

    check-cast p4, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    invoke-virtual {p4}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p2

    .line 248
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p3

    .line 250
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->removeItem(I)V

    .line 251
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 253
    :cond_1
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->setSwapItemRect(I)V

    .line 254
    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mItemLastCallback:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$IAddItemLastCallback;

    if-eqz p3, :cond_2

    .line 255
    invoke-interface {p3, v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$IAddItemLastCallback;->updateAddItemLast(Z)V

    .line 257
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    .line 258
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_1

    .line 261
    :cond_3
    invoke-direct {p0, p4, p5, p6, p7}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->isItemNeedChange(Landroid/view/View;IIF)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 262
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 263
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p2

    check-cast p4, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    invoke-virtual {p4}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p2

    .line 264
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result p3

    .line 265
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 266
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->removeItem(I)V

    if-eqz p2, :cond_4

    .line 268
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 271
    :cond_4
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->setSwapItemRect(I)V

    .line 272
    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->mItemLastCallback:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$IAddItemLastCallback;

    if-eqz p3, :cond_5

    .line 273
    invoke-interface {p3, v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView$IAddItemLastCallback;->updateAddItemLast(Z)V

    .line 275
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V

    if-eqz p2, :cond_6

    .line 277
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_0

    .line 279
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListView;->getAdapter()Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_0
    return p2

    :cond_7
    :goto_1
    return v1
.end method

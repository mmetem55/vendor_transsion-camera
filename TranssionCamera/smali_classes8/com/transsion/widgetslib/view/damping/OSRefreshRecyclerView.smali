.class public Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "OSRefreshRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/transsion/widgetslib/view/damping/OSRefreshLayout;


# instance fields
.field private mDampingAdapter:Lcom/transsion/widgetslib/view/damping/adapter/IDampingAdapter;

.field private mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->initHeaderHelper()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->initHeaderHelper()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->initHeaderHelper()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;)Lcom/transsion/widgetslib/view/damping/adapter/IDampingAdapter;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mDampingAdapter:Lcom/transsion/widgetslib/view/damping/adapter/IDampingAdapter;

    return-object p0
.end method


# virtual methods
.method public abortRefreshing()V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->abortRefreshing()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 87
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getHeaderHelper()Lcom/transsion/widgetslib/view/damping/HeaderHelper;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    return-object p0
.end method

.method public getLoadingView()Lcom/transsion/widgetslib/view/OSLoadingView;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->getLoadingView()Lcom/transsion/widgetslib/view/OSLoadingView;

    move-result-object p0

    return-object p0
.end method

.method public initHeaderHelper()V
    .locals 2

    .line 40
    new-instance v0, Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    const/4 p0, 0x1

    .line 41
    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->setMinHeight(I)V

    return-void
.end method

.method public isRefreshing()Z
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->isRefreshing()Z

    move-result p0

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 92
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    .line 93
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->onDetachedFromWindow()V

    return-void
.end method

.method public onFinishHeaderInflate(Landroid/view/View;)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->onFinishHeaderInflate(Landroid/view/View;)V

    return-void
.end method

.method public onOverScrollUpdated(F)V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->onOverScrollUpdated(F)V

    return-void
.end method

.method public run()V
    .locals 6

    .line 109
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mDampingAdapter:Lcom/transsion/widgetslib/view/damping/adapter/IDampingAdapter;

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    .line 114
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 115
    instance-of v2, v1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v2, :cond_1

    .line 116
    move-object v2, v1

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 117
    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v3

    .line 118
    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v4

    .line 119
    new-instance v5, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView$1;

    invoke-direct {v5, p0, v0, v3, v4}, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView$1;-><init>(Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;ILandroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 128
    :cond_1
    instance-of v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_3

    .line 129
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 131
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 132
    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->getLayoutHeader()Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 133
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 100
    instance-of v0, p1, Lcom/transsion/widgetslib/view/damping/adapter/IDampingAdapter;

    if-eqz v0, :cond_0

    .line 101
    check-cast p1, Lcom/transsion/widgetslib/view/damping/adapter/IDampingAdapter;

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mDampingAdapter:Lcom/transsion/widgetslib/view/damping/adapter/IDampingAdapter;

    .line 102
    invoke-interface {p1, p0}, Lcom/transsion/widgetslib/view/damping/adapter/IDampingAdapter;->setRefreshLayout(Lcom/transsion/widgetslib/view/damping/OSRefreshLayout;)V

    .line 103
    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setOnRefreshListener(Lcom/transsion/widgetslib/view/damping/OSDampingLayout$OnRefreshListener;)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->setOnRefreshListener(Lcom/transsion/widgetslib/view/damping/OSDampingLayout$OnRefreshListener;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->mHeaderHelper:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->setTextColor(I)V

    return-void
.end method

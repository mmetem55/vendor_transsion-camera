.class public Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;
.super Ljava/lang/Object;
.source "ScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;,
        Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;
    }
.end annotation


# instance fields
.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScreenFormType:I

.field private final mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private final mStoreStrategy:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$1;-><init>(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mStoreStrategy:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->saveScrollPosition(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private destroyCallback()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public static of(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;)Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;
    .locals 1

    .line 102
    new-instance v0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;-><init>(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;)V

    return-object v0
.end method

.method private saveScrollPosition(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 132
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 133
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 138
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 139
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 143
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    .line 145
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mStoreStrategy:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "scroll_position"

    invoke-interface {v1, v2, v0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;->saveValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mStoreStrategy:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "scroll_offset"

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;->saveValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private scrollToPosition(II)V
    .locals 1

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    .line 162
    instance-of v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_1

    return-void

    .line 166
    :cond_1
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 167
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method private setupCallback()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 114
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->destroyCallback()V

    .line 116
    :cond_1
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    .line 118
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->setupCallback()V

    .line 119
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->scrollToSavedPosition()V

    :cond_2
    return-void
.end method

.method public onScreenFormChanged(I)V
    .locals 0

    .line 177
    iput p1, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mScreenFormType:I

    .line 178
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->scrollToSavedPosition()V

    return-void
.end method

.method public resetScrollPosition()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mStoreStrategy:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;

    const-string v1, "scroll_position"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;->saveValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mStoreStrategy:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;

    const-string v1, "scroll_offset"

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;->saveValue(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 173
    invoke-direct {p0, v0, v0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->scrollToPosition(II)V

    return-void
.end method

.method public scrollToSavedPosition()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mStoreStrategy:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;

    const-string v1, "scroll_position"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 151
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->mStoreStrategy:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;

    const-string v2, "scroll_offset"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 153
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->scrollToPosition(II)V

    return-void
.end method

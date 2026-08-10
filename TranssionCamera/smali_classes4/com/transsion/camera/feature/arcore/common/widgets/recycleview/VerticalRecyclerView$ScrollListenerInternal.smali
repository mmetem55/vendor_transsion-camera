.class Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "VerticalRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollListenerInternal"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mScrollState:I

.field private mScrolling:Z

.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    const-class v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->mScrolling:Z

    .line 105
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->mScrollState:I

    return-void
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->mScrolling:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->findCurrentSelectChildView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private findCurrentSelectChildView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 7

    .line 214
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 216
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$600(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)I

    move-result p0

    int-to-double v2, p0

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v0, :cond_2

    .line 219
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 221
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-double v5, v5

    cmpg-double v5, v5, v2

    if-gtz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-double v5, v5

    cmpl-double v5, v5, v2

    if-ltz v5, :cond_1

    move-object v1, v4

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method private findCurrentSelectedPosition(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$400(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalLayoutManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->findCurrentSelectChildView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 139
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method private getScrolledDistance(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 2

    .line 143
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$400(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne v1, p1, :cond_0

    .line 145
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "invalid first visible position"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$400(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$VerticalLayoutManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    .line 150
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "firstVisibleChildView is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 154
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$600(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method private onScrollStateIdle(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    if-nez p1, :cond_0

    .line 161
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "recyclerView is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 164
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 166
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "layoutManager is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 170
    :cond_1
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->findCurrentSelectChildView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 172
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "centerChild is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 175
    :cond_2
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 177
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScrollStateIdle position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mSelectedPosition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    .line 178
    invoke-static {v3}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$700(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    return-void

    .line 182
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$700(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)I

    move-result v1

    if-eq p1, v1, :cond_4

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$702(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;I)I

    .line 185
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->onSelectChangedImpl(I)V

    goto :goto_0

    .line 187
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$600(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)I

    move-result v0

    if-eq v1, v0, :cond_5

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method private onSelectChangedImpl(I)V
    .locals 3

    .line 195
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectChangedImpl position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$800(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IOnSelectChangeListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 198
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "mOnSelectChangeListener is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$900(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IDataContract;

    move-result-object v0

    if-nez v0, :cond_1

    .line 202
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "mDataContract is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$900(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IDataContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IDataContract;->getData(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 207
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    const-string v2, "data is null"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 210
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$800(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IOnSelectChangeListener;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IOnSelectChangeListener;->onSelectChanged(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 109
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$000(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 114
    :cond_0
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->mScrollState:I

    if-nez v0, :cond_1

    if-eq v0, p2, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->mScrolling:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->mScrolling:Z

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$100(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)V

    :cond_1
    if-nez p2, :cond_2

    .line 118
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->mScrolling:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->mScrolling:Z

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$200(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)V

    .line 121
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->onScrollStateIdle(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 123
    :cond_2
    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->mScrollState:I

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 128
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-static {p2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$000(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 132
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->getScrolledDistance(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p3

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScrollListenerInternal;->findCurrentSelectedPosition(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p0

    invoke-static {p2, p3, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;->access$300(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView;II)V

    :cond_1
    return-void
.end method

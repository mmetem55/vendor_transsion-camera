.class Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "HorizontalRecycleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollListenerInternal"
.end annotation


# instance fields
.field private mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field private mScrollState:I

.field private mScrolling:Z

.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x0

    .line 84
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->mScrolling:Z

    .line 85
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->mScrollState:I

    return-void
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;)Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->mScrolling:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->findCenterChildView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private findCenterChildView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 5

    .line 205
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 207
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "childCount is 0"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 210
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p0

    .line 213
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v2, p0

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result p0

    div-int/lit8 v2, p0, 0x2

    :goto_0
    const/4 p0, 0x0

    :goto_1
    if-ge p0, v0, :cond_3

    .line 221
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 222
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    if-gt v4, v2, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    if-lt v4, v2, :cond_2

    move-object v1, v3

    goto :goto_2

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-object v1
.end method

.method private findCenterPosition(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$400(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->findCenterChildView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    .line 120
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "centerView is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 123
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method private getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 233
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 235
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    return-object p0
.end method

.method private getScrolledDistance(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$400(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v2, v0, :cond_0

    .line 130
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "invalid first visible position"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {v2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$400(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$HorizontalLayoutManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 135
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "firstVisibleChildView is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 138
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$600(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)I

    move-result p0

    mul-int/2addr p0, v0

    add-int/2addr p1, p0

    .line 140
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p0, p1

    .line 142
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method private onScrollStateIdle(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    if-nez p1, :cond_0

    .line 147
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "recyclerView is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 150
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 152
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "layoutManager is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 156
    :cond_1
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->findCenterChildView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 158
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "centerChild is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 161
    :cond_2
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 163
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScrollStateIdle position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mSelectedPosition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    .line 164
    invoke-static {v3}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$700(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    return-void

    .line 168
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$700(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)I

    move-result v1

    if-eq p1, v1, :cond_4

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$702(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;I)I

    .line 171
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->onSelectChangedImpl(I)V

    goto :goto_0

    .line 173
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 174
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " childCenter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " centerChild.getLeft()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " centerChild.getWidth()/2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " getWidth()/2="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    .line 177
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-eq v1, v0, :cond_5

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method private onSelectChangedImpl(I)V
    .locals 3

    .line 186
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectChangedImpl position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$800(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IOnSelectChangeListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 189
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "mOnSelectChangeListener is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$900(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IDataContract;

    move-result-object v0

    if-nez v0, :cond_1

    .line 193
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "mDataContract is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$900(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IDataContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IDataContract;->getData(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 198
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    const-string v2, "data is null"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 201
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$800(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IOnSelectChangeListener;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IOnSelectChangeListener;->onSelectChanged(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 90
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$000(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 95
    :cond_0
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->mScrollState:I

    if-nez v0, :cond_1

    if-eq v0, p2, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->mScrolling:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->mScrolling:Z

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$100(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)V

    :cond_1
    if-nez p2, :cond_2

    .line 99
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->mScrolling:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->mScrolling:Z

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$200(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)V

    .line 102
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->onScrollStateIdle(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 104
    :cond_2
    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->mScrollState:I

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 109
    iget-object p3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-static {p3}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$000(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 113
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->this$0:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->getScrolledDistance(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p3

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView$ScrollListenerInternal;->findCenterPosition(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p0

    invoke-static {p2, p3, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;->access$300(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/HorizontalRecycleView;II)V

    :cond_1
    return-void
.end method

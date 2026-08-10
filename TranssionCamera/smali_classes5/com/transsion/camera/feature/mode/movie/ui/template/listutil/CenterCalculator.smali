.class public Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "CenterCalculator.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$OnScrollDirectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator$ISnapPositionListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentItem:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;

.field private mLastItem:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;

.field private final mLayoutManager:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;

.field private final mListItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecycleView:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

.field private mScrollDirection:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;

.field private mScrollDirectionDetector:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;

.field private mScrollState:I

.field private mScrolled:Z

.field private mSnapPositionListener:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator$ISnapPositionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;",
            ">;",
            "Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;",
            "Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mScrolled:Z

    .line 39
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mLastItem:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;

    .line 40
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mCurrentItem:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;

    .line 49
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;->START:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mScrollDirection:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;

    .line 61
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mListItem:Ljava/util/List;

    .line 62
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mRecycleView:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    .line 63
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mLayoutManager:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;

    .line 64
    new-instance p1, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;

    invoke-direct {p1, p3}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mScrollDirectionDetector:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;

    .line 65
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->setOnScrollDirectionChangeListener(Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$OnScrollDirectionChangeListener;)V

    return-void
.end method

.method private calculateActiveItem()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mCurrentItem:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mLayoutManager:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mCurrentItem:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;

    iget-object v1, v1, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->mView:Landroid/view/View;

    .line 173
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->distanceToCenter(Landroid/view/View;)I

    move-result v0

    .line 172
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    .line 176
    :goto_0
    sget-object v1, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator$1;->$SwitchMap$com$transsion$camera$feature$mode$movie$ui$template$listutil$ScrollDirectionDetector$ScrollDirection:[I

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mScrollDirection:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 182
    :cond_1
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->calculateNextDistance(I)V

    goto :goto_1

    .line 178
    :cond_2
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->calculatePreviousDistance(I)V

    :goto_1
    return-void
.end method

.method private calculateNextDistance(I)V
    .locals 6

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mCurrentItem:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;

    iget v0, v0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    .line 193
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mListItem:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mRecycleView:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mCurrentItem:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;

    iget-object v2, v2, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-gez v1, :cond_1

    .line 199
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "invalid index"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 203
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mRecycleView:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    .line 205
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "nextView is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 208
    :cond_2
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mLayoutManager:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;

    .line 209
    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->distanceToCenter(Landroid/view/View;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 211
    sget-object v3, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateNextDistance distance "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", neighbourDistance "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-ge v2, p1, :cond_3

    .line 215
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mCurrentItem:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->fill(ILandroid/view/View;)Z

    .line 216
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->notifyItemChanged()V

    :cond_3
    return-void
.end method

.method private calculatePreviousDistance(I)V
    .locals 6

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mCurrentItem:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;

    iget v0, v0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->mPosition:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mListItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mRecycleView:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mCurrentItem:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;

    iget-object v2, v2, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-gez v1, :cond_1

    .line 229
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "invalid index"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 233
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mRecycleView:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    .line 235
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "nextView is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 238
    :cond_2
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mLayoutManager:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;

    .line 239
    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->distanceToCenter(Landroid/view/View;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 241
    sget-object v3, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateNextDistance distance "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", neighbourDistance "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-ge v2, p1, :cond_3

    .line 245
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mCurrentItem:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->fill(ILandroid/view/View;)Z

    .line 246
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->notifyItemChanged()V

    :cond_3
    return-void
.end method

.method private checkInvalid()Z
    .locals 1

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mListItem:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 100
    :cond_1
    :goto_0
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "invalid mListItem"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private notifyItemChanged()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mLastItem:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mListItem:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mLastItem:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;

    iget v1, v1, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->mPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mLastItem:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;

    iget-object v2, v1, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->mView:Landroid/view/View;

    iget v1, v1, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->mPosition:I

    .line 126
    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->deactivate(Landroid/view/View;I)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mListItem:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mCurrentItem:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;

    iget v1, v1, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->mPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mCurrentItem:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;

    iget-object v2, v1, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->mView:Landroid/view/View;

    iget v1, v1, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->mPosition:I

    .line 130
    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->activate(Landroid/view/View;I)V

    .line 132
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyItemChanged lastPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mLastItem:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;

    iget v2, v2, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "currentPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mCurrentItem:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;

    iget v2, v2, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mLastItem:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mCurrentItem:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;

    iget v2, v1, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->mPosition:I

    iget-object v1, v1, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->mView:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->fill(ILandroid/view/View;)Z

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mSnapPositionListener:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator$ISnapPositionListener;

    if-eqz v0, :cond_1

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mCurrentItem:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;

    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->mPosition:I

    .line 139
    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator$ISnapPositionListener;->onSnapChanged(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public calculateSnapItem()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mLayoutManager:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;->findSnapView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 109
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "calculateSnapItem view is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mLayoutManager:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    .line 114
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "calculateSnapItem invalid position"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 118
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mCurrentItem:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;

    invoke-virtual {v2, v1, v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->fill(ILandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->notifyItemChanged()V

    :cond_2
    return-void
.end method

.method public getScrollState()I
    .locals 0

    .line 95
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mScrollState:I

    return p0
.end method

.method public onScrollDirectionChanged(Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mScrollDirection:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector$ScrollDirection;

    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 82
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->checkInvalid()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 86
    :cond_0
    iput p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mScrollState:I

    if-nez p2, :cond_1

    .line 88
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mScrolled:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 89
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mScrolled:Z

    .line 90
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->calculateSnapItem()V

    :cond_1
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 146
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    const/4 p1, 0x1

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 149
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mScrolled:Z

    .line 152
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->checkInvalid()Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 156
    :cond_2
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mScrollDirectionDetector:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ScrollDirectionDetector;->detectScrollDirection()V

    .line 158
    iget p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mScrollState:I

    if-eq p2, p1, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    goto :goto_0

    .line 161
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->calculateActiveItem()V

    :goto_0
    return-void
.end method

.method public setSnapPositionListener(Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator$ISnapPositionListener;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->mSnapPositionListener:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator$ISnapPositionListener;

    return-void
.end method

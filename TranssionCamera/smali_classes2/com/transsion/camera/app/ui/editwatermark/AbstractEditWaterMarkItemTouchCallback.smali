.class public abstract Lcom/transsion/camera/app/ui/editwatermark/AbstractEditWaterMarkItemTouchCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "AbstractEditWaterMarkItemTouchCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/editwatermark/AbstractEditWaterMarkItemTouchCallback$IEditWaterMarkItemControl;
    }
.end annotation


# instance fields
.field mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;

.field private mEnable:Z

.field private mIEditWaterMarkItemControl:Lcom/transsion/camera/app/ui/editwatermark/AbstractEditWaterMarkItemTouchCallback$IEditWaterMarkItemControl;


# direct methods
.method public static synthetic $r8$lambda$YKSxDLxAw8OH2N_QtnUUaWYGxlg(Lcom/transsion/camera/app/ui/editwatermark/AbstractEditWaterMarkItemTouchCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/editwatermark/AbstractEditWaterMarkItemTouchCallback;->lambda$clearView$0()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;Lcom/transsion/camera/app/ui/editwatermark/AbstractEditWaterMarkItemTouchCallback$IEditWaterMarkItemControl;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/editwatermark/AbstractEditWaterMarkItemTouchCallback;->mEnable:Z

    .line 25
    iput-object p2, p0, Lcom/transsion/camera/app/ui/editwatermark/AbstractEditWaterMarkItemTouchCallback;->mIEditWaterMarkItemControl:Lcom/transsion/camera/app/ui/editwatermark/AbstractEditWaterMarkItemTouchCallback$IEditWaterMarkItemControl;

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/app/ui/editwatermark/AbstractEditWaterMarkItemTouchCallback;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;

    return-void
.end method

.method private synthetic lambda$clearView$0()V
    .locals 1

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/editwatermark/AbstractEditWaterMarkItemTouchCallback;->mEnable:Z

    return-void
.end method


# virtual methods
.method public canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 96
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 64
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 65
    iget-object p2, p0, Lcom/transsion/camera/app/ui/editwatermark/AbstractEditWaterMarkItemTouchCallback;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 66
    iget-object p2, p0, Lcom/transsion/camera/app/ui/editwatermark/AbstractEditWaterMarkItemTouchCallback;->mIEditWaterMarkItemControl:Lcom/transsion/camera/app/ui/editwatermark/AbstractEditWaterMarkItemTouchCallback$IEditWaterMarkItemControl;

    invoke-interface {p2}, Lcom/transsion/camera/app/ui/editwatermark/AbstractEditWaterMarkItemTouchCallback$IEditWaterMarkItemControl;->onMovedEnd()V

    .line 67
    new-instance p2, Lcom/transsion/camera/app/ui/editwatermark/AbstractEditWaterMarkItemTouchCallback$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/editwatermark/AbstractEditWaterMarkItemTouchCallback$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/editwatermark/AbstractEditWaterMarkItemTouchCallback;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public convertToAbsoluteDirection(II)I
    .locals 0

    .line 53
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result p0

    return p0
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    const/4 p0, 0x3

    const/4 p1, 0x0

    .line 33
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 0

    .line 85
    invoke-super {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->isItemViewSwipeEnabled()Z

    move-result p0

    return p0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/editwatermark/AbstractEditWaterMarkItemTouchCallback;->mEnable:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 80
    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->isLongPressDragEnabled()Z

    move-result p0

    return p0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 0

    .line 72
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 39
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 40
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 41
    iget-object p3, p0, Lcom/transsion/camera/app/ui/editwatermark/AbstractEditWaterMarkItemTouchCallback;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;->getEditWaterMarkUIItems()Ljava/util/List;

    move-result-object p3

    invoke-static {p3, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/ui/editwatermark/AbstractEditWaterMarkItemTouchCallback;->mEditWaterMarkRecycleViewAdapter:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V
    .locals 0

    .line 48
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V

    return-void
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 58
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/editwatermark/AbstractEditWaterMarkItemTouchCallback;->mEnable:Z

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method

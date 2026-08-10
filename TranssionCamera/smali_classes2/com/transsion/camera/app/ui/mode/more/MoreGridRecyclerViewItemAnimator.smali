.class public Lcom/transsion/camera/app/ui/mode/more/MoreGridRecyclerViewItemAnimator;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "MoreGridRecyclerViewItemAnimator.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

.field private mSwapItemToY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MoreGridRecyclerViewItemAnimator"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/more/MoreGridRecyclerViewItemAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreGridRecyclerViewItemAnimator;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    if-nez v0, :cond_0

    .line 38
    sget-object v0, Lcom/transsion/camera/app/ui/mode/more/MoreGridRecyclerViewItemAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mDraggingModeUIItem is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 39
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/DefaultItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p0

    return p0

    .line 41
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    move-result-object v0

    .line 42
    sget-object v1, Lcom/transsion/camera/app/ui/mode/more/MoreGridRecyclerViewItemAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentModeUIItem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mDraggingModeUIItem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/MoreGridRecyclerViewItemAnimator;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreGridRecyclerViewItemAnimator;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iput p5, p0, Lcom/transsion/camera/app/ui/mode/more/MoreGridRecyclerViewItemAnimator;->mSwapItemToY:I

    .line 46
    :cond_1
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/DefaultItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p0

    return p0
.end method

.method public getSwapItemToY()I
    .locals 0

    .line 32
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreGridRecyclerViewItemAnimator;->mSwapItemToY:I

    return p0
.end method

.method public setDraggingModeUIItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreGridRecyclerViewItemAnimator;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    return-void
.end method

.class public Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MoreLinearListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$LinearListItemDragEventListener;,
        Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;,
        Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;,
        Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$ViewHolderWidthChangeListener;,
        Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$DragEnterListener;
    }
.end annotation


# instance fields
.field private mAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private final mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/mode/ModeUIItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDragEnterListener:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$DragEnterListener;

.field private mDragStarted:Z

.field private mDraggingItemPosition:I

.field private mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

.field private mDraggingView:Landroid/view/View;

.field private mDropFinished:Z

.field private mViewHolderWidthChangeListener:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$ViewHolderWidthChangeListener;


# direct methods
.method public static synthetic $r8$lambda$xOzDgZubj3tinZjF-uobBusKJXQ(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->lambda$onBindViewHolder$0(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDraggingItemPosition:I

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$502(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDraggingItemPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;)Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$DragEnterListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDragEnterListener:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$DragEnterListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;)Lcom/transsion/camera/app/ui/mode/ModeUIItem;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    return-object p0
.end method

.method private isSupportDragDrop(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z
    .locals 0

    .line 250
    sget-object p0, Lcom/transsion/camera/app/ui/mode/more/Constants;->MORE_MODE_NOT_SUPPORT_DRAG_DROP_LIST:Ljava/util/List;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)Z
    .locals 1

    .line 192
    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragShadowBuilder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-direct {p0, v0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->startDragAndDrop(Landroid/view/View$DragShadowBuilder;Landroid/view/View;)V

    const/4 p0, 0x0

    return p0
.end method

.method private notifySideItemWidthChanged(II)V
    .locals 1

    if-nez p1, :cond_0

    .line 256
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mViewHolderWidthChangeListener:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$ViewHolderWidthChangeListener;

    if-eqz p0, :cond_1

    .line 258
    invoke-interface {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$ViewHolderWidthChangeListener;->onFirstViewHolderWidthChanged(I)V

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mViewHolderWidthChangeListener:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$ViewHolderWidthChangeListener;

    if-eqz p0, :cond_1

    .line 261
    invoke-interface {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$ViewHolderWidthChangeListener;->onLastViewHolderWidthChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startDragAndDrop(Landroid/view/View$DragShadowBuilder;Landroid/view/View;)V
    .locals 3

    .line 268
    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDraggingView:Landroid/view/View;

    .line 269
    new-instance p0, Landroid/content/ClipData;

    const-string v0, "text/plain"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ClipData$Item;

    .line 270
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    const-string v2, "linear_item_view"

    invoke-direct {p0, v2, v0, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    const/16 v0, 0x200

    .line 269
    invoke-virtual {p2, p0, p1, p2, v0}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    return-void
.end method


# virtual methods
.method public addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)Z
    .locals 1

    .line 97
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 101
    iput p2, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDraggingItemPosition:I

    const/4 p0, 0x1

    return p0
.end method

.method public cancelDragAndDrop()V
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDraggingView:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 275
    invoke-virtual {p0}, Landroid/view/View;->cancelDragAndDrop()V

    :cond_0
    return-void
.end method

.method public containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containData(Ljava/lang/String;)Z
    .locals 1

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    .line 131
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getItemCount()I
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object p0

    iget p0, p0, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    int-to-long p0, p0

    return-wide p0
.end method

.method public getItemList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    .line 112
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v2

    iget-object v2, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    const-string v3, "place_holder"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    new-instance v2, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 116
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    .line 117
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 118
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getDescription()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureDescription:Ljava/lang/String;

    .line 119
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    iput v1, v2, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    .line 120
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getItemPosition(Ljava/lang/String;)I
    .locals 2

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    .line 154
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    const-string p1, "place_holder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getModeUIItem(I)Lcom/transsion/camera/app/ui/mode/ModeUIItem;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    return-object p0
.end method

.method public notifyDropState(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDropFinished:Z

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 175
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    goto/16 :goto_2

    .line 204
    :cond_0
    check-cast p1, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;

    .line 205
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v5}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v5

    iget-object v5, v5, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 206
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->setModeUIItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 207
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 208
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;->access$300(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;->access$400(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDragStarted:Z

    if-eqz v0, :cond_1

    .line 211
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;->access$400(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->playMoreModeGuideAnim(Landroid/view/View;Z)V

    .line 213
    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$LinearListItemDragEventListener;

    invoke-direct {v1, p0, v3}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$LinearListItemDragEventListener;-><init>(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 214
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;->access$300(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->notifySideItemWidthChanged(II)V

    goto/16 :goto_2

    .line 177
    :cond_2
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDraggingItemPosition:I

    if-ne p2, v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDropFinished:Z

    if-nez v0, :cond_3

    .line 178
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 180
    :cond_3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 182
    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;

    .line 183
    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;->access$000(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v4

    iget-object v4, v4, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;->access$000(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 185
    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;->access$100(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 186
    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;->access$000(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0703ea

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v2, v4

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 187
    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;->access$100(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x3e051eb8    # 0.13f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 188
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v2

    iget-object v2, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 189
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->setModeUIItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    .line 190
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->isSupportDragDrop(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 191
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 195
    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;->access$000(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060288

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 197
    :cond_4
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 198
    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;->access$000(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060289

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    :goto_1
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$LinearListItemDragEventListener;

    invoke-direct {v1, p0, v3}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$LinearListItemDragEventListener;-><init>(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$1;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 201
    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;->access$100(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->notifySideItemWidthChanged(II)V

    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 226
    new-instance p2, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;

    const v2, 0x7f0c0105

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;-><init>(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;Landroid/view/View;)V

    return-object p2

    .line 228
    :cond_0
    new-instance p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;

    const p2, 0x7f0c0104

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public onDragStarted(Z)V
    .locals 4

    .line 317
    new-instance v0, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    const-string v1, "place_holder"

    .line 318
    iput-object v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 319
    iput-object v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    .line 320
    new-instance v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;-><init>(Lcom/transsion/camera/app/common/FeatureResource;Z)V

    .line 321
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->containData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->removeItem(I)V

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result v3

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-eqz p1, :cond_2

    .line 329
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 331
    :cond_2
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDragStarted:Z

    .line 332
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_3

    .line 333
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    return-void
.end method

.method public onDragStop()V
    .locals 1

    .line 338
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->removePlaceHolderIfNecessary(I)V

    const/4 v0, 0x0

    .line 339
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDragStarted:Z

    .line 340
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public playMoreModeGuideAnim(Landroid/view/View;Z)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 306
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    const/4 v0, -0x1

    .line 307
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 308
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 309
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x320

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 310
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f28f5c3    # 0.66f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p2, :cond_1

    .line 312
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public removeItem(I)V
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public removeItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 2

    .line 236
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I

    move-result v0

    .line 237
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public removePlaceHolderIfNecessary(I)V
    .locals 3

    .line 61
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    .line 62
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    .line 63
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    const-string v2, "place_holder"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 69
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->removeItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    :cond_2
    return-void
.end method

.method public setDragEnterListener(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$DragEnterListener;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDragEnterListener:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$DragEnterListener;

    return-void
.end method

.method public setDraggingModeUIItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    return-void
.end method

.method public setViewHolderWidthChangeListener(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$ViewHolderWidthChangeListener;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mViewHolderWidthChangeListener:Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$ViewHolderWidthChangeListener;

    return-void
.end method

.method public updateModeData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/mode/ModeUIItem;",
            ">;)V"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->mDataList:Ljava/util/List;

    return-void
.end method

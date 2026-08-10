.class public Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DualDeviceGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;,
        Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentPosition:I

.field private final mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$OnItemClickListener;


# direct methods
.method public static synthetic $r8$lambda$XlhxxVETdP8TnVHGl1ZFTjJ5MIY(Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->lambda$onBindViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;",
            ">;I)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mCurrentPosition:I

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mDataList:Ljava/util/List;

    .line 40
    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->setCurrentPosition(IZ)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .locals 2

    const-wide/16 v0, 0x32

    .line 62
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result p2

    if-nez p2, :cond_0

    .line 63
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->updateCurrentPosition(I)V

    :cond_0
    return-void
.end method

.method private updateCurrentPosition(I)V
    .locals 2

    .line 79
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mCurrentPosition:I

    if-ne v0, p1, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mListener:Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$OnItemClickListener;

    if-eqz v0, :cond_1

    .line 84
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$OnItemClickListener;->onItemSelected(Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;)V

    .line 86
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 87
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mCurrentPosition:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 88
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mCurrentPosition:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 15
    check-cast p1, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;I)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;

    .line 53
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mCurrentPosition:I

    if-ne p2, v1, :cond_0

    .line 54
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;->ivItemSign:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->ic_device_item_selected:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;->ivItem:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;->ivItemSign:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->ic_device_item_unselected:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;->ivItem:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 60
    :goto_0
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;->ivItem:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget v0, v0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;->dualIconId:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;
    .locals 3

    .line 46
    new-instance p2, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$layout;->dual_device_group_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$ItemViewHolder;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setCurrentPosition(IZ)V
    .locals 1

    .line 92
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mCurrentPosition:I

    .line 93
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mCurrentPosition:I

    if-eqz p2, :cond_0

    .line 96
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 97
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$OnItemClickListener;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->mListener:Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$OnItemClickListener;

    return-void
.end method

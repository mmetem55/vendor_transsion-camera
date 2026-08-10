.class public abstract Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RvAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCustomDefault:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected mListener:Lcom/transsion/camera/feature/mode/makeup/listener/RvListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/feature/mode/makeup/listener/RvListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mLowLight:Z

.field protected mSelectedPosition:I


# direct methods
.method public static synthetic $r8$lambda$unpl0plR10egXA3dl8Le4oJs5oU(Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->lambda$onCreateViewHolder$0(Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/mode/makeup/listener/RvListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/transsion/camera/feature/mode/makeup/listener/RvListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mList:Ljava/util/List;

    .line 65
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mListener:Lcom/transsion/camera/feature/mode/makeup/listener/RvListener;

    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;Landroid/view/View;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mListener:Lcom/transsion/camera/feature/mode/makeup/listener/RvListener;

    if-eqz v0, :cond_4

    .line 93
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    sget v1, Lcom/transsion/camera/feature/makeup/R$layout;->restore_layout:I

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 98
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mCustomDefault:Z

    if-eqz v1, :cond_2

    .line 99
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "restore item is disabled!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p1, :cond_3

    .line 103
    iget p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mSelectedPosition:I

    if-eq p1, v0, :cond_3

    .line 104
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->updateSelectedItemByPosition(I)V

    .line 105
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mListener:Lcom/transsion/camera/feature/mode/makeup/listener/RvListener;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, p2, v1, v0}, Lcom/transsion/camera/feature/mode/makeup/listener/RvListener;->onItemSelected(Landroid/view/View;Ljava/lang/Object;I)V

    .line 108
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mListener:Lcom/transsion/camera/feature/mode/makeup/listener/RvListener;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p2, p0, v0}, Lcom/transsion/camera/feature/mode/makeup/listener/RvListener;->onClickSelectedItem(Landroid/view/View;Ljava/lang/Object;I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getCurrentItem()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mSelectedPosition:I

    if-le v0, v1, :cond_0

    if-ltz v1, :cond_0

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected abstract getHolder(Landroid/view/View;I)Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I)",
            "Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public getItemCount()I
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mList:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder<",
            "TT;>;I)V"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget v4, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mSelectedPosition:I

    iget-boolean v5, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mLowLight:Z

    iget-boolean v6, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mCustomDefault:Z

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;->bindHolder(Ljava/lang/Object;IIZZ)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder<",
            "TT;>;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->getHolder(Landroid/view/View;I)Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;

    move-result-object p1

    .line 83
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;)V

    .line 90
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v1, p2}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 91
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public updateCustomDefault(Z)V
    .locals 0

    return-void
.end method

.method public updateList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mList:Ljava/util/List;

    .line 75
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateLowLight(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mLowLight:Z

    .line 42
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public abstract updateSelectedItemById(I)V
.end method

.method protected updateSelectedItemByPosition(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mSelectedPosition:I

    return-void
.end method

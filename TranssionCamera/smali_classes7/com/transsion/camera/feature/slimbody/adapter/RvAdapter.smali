.class public abstract Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RvAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/camera/feature/slimbody/holder/RvHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected mListener:Lcom/transsion/camera/feature/slimbody/listener/RvListener;

.field protected mOldSelectedPosition:I

.field protected mSelectedPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FeatureAdapter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/slimbody/listener/RvListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/transsion/camera/feature/slimbody/listener/RvListener;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput v0, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mOldSelectedPosition:I

    .line 39
    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mList:Ljava/util/List;

    .line 40
    iput-object p3, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mListener:Lcom/transsion/camera/feature/slimbody/listener/RvListener;

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 18
    sget-object v0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method


# virtual methods
.method protected abstract getHolder(Landroid/view/View;I)Lcom/transsion/camera/feature/slimbody/holder/RvHolder;
.end method

.method public getItemCount()I
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mList:Ljava/util/List;

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

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mList:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 18
    check-cast p1, Lcom/transsion/camera/feature/slimbody/holder/RvHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/slimbody/holder/RvHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/slimbody/holder/RvHolder;I)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mSelectedPosition:I

    iget p0, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mOldSelectedPosition:I

    invoke-virtual {p1, v0, p2, v1, p0}, Lcom/transsion/camera/feature/slimbody/holder/RvHolder;->bindHolder(Ljava/lang/Object;III)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/slimbody/holder/RvHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/slimbody/holder/RvHolder;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->getHolder(Landroid/view/View;I)Lcom/transsion/camera/feature/slimbody/holder/RvHolder;

    move-result-object p1

    .line 58
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter$1;-><init>(Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;Lcom/transsion/camera/feature/slimbody/holder/RvHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
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

    .line 49
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mList:Ljava/util/List;

    .line 50
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateSelectedItemByPosition(I)V
    .locals 1

    .line 30
    iput p1, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mSelectedPosition:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 32
    iput p1, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mOldSelectedPosition:I

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

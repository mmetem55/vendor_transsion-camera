.class public abstract Lcom/transsion/widgetslib/adapter/RecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field protected final mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mDataList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDataList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 70
    iget-object p0, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mDataList:Ljava/util/List;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mDataList:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 13
    check-cast p1, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->onBindViewHolder(Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->onBindViewHolder(Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;ILjava/lang/Object;)V

    .line 30
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 32
    iget-boolean v2, p1, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;->mIsSetOnClickListener:Z

    if-eqz v2, :cond_1

    .line 33
    new-instance v2, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$1;

    invoke-direct {v2, p0, v1, v0, p2}, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$1;-><init>(Lcom/transsion/widgetslib/adapter/RecyclerAdapter;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    :cond_1
    iget-boolean p1, p1, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;->mIsSetOnLongClickListener:Z

    if-eqz p1, :cond_2

    .line 46
    new-instance p1, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$2;

    invoke-direct {p1, p0, v1, v0, p2}, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$2;-><init>(Lcom/transsion/widgetslib/adapter/RecyclerAdapter;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_2
    return-void
.end method

.method public abstract onBindViewHolder(Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;ITT;)V"
        }
    .end annotation
.end method

.method public onItemClick(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;I)V"
        }
    .end annotation

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;I)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

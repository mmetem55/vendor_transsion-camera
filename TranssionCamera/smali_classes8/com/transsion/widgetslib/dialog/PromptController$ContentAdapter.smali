.class final Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;
.super Lcom/transsion/widgetslib/adapter/RecyclerAdapter;
.source "PromptController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/dialog/PromptController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContentAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/widgetslib/adapter/RecyclerAdapter<",
        "Ljava/lang/CharSequence;",
        "Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChoiceMode:I

.field private mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/widgetslib/dialog/PromptController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 939
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;-><init>(Ljava/util/List;I)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    .line 943
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;-><init>(Ljava/util/List;)V

    .line 944
    iput p2, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mChoiceMode:I

    return-void
.end method


# virtual methods
.method public getCheckedItemCount()I
    .locals 4

    .line 1023
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/dialog/PromptController;

    iget-object v0, v0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItems:[Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1027
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/dialog/PromptController;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItems:[Z

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-boolean v3, p0, v1

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public isItemChecked(I)Z
    .locals 2

    .line 1012
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/dialog/PromptController;

    iget-object v0, v0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItems:[Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1016
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/dialog/PromptController;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItems:[Z

    if-ltz p1, :cond_1

    .line 1017
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public bridge synthetic onBindViewHolder(Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;ILjava/lang/Object;)V
    .locals 0

    .line 934
    check-cast p1, Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->onBindViewHolder(Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;ILjava/lang/CharSequence;)V
    .locals 3

    .line 954
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;->access$1500(Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;)Landroid/widget/CheckedTextView;

    move-result-object p3

    iget-object v0, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 956
    iget-object p3, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 960
    :cond_0
    iget p3, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mChoiceMode:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    .line 961
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/dialog/PromptController;

    iget p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItem:I

    .line 962
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;->access$1500(Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;)Landroid/widget/CheckedTextView;

    move-result-object p1

    if-ne p0, p2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p3, v2, :cond_4

    .line 964
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/dialog/PromptController;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItems:[Z

    .line 965
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;->access$1500(Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;)Landroid/widget/CheckedTextView;

    move-result-object p1

    if-eqz p0, :cond_3

    aget-boolean p0, p0, p2

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 934
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;
    .locals 0

    .line 972
    new-instance p2, Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;

    invoke-direct {p2, p1}, Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;-><init>(Landroid/view/ViewGroup;)V

    .line 973
    iget-object p1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;->setSetOnClickListener(Z)V

    .line 974
    iget p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mChoiceMode:I

    invoke-virtual {p2, p0}, Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;->setChoiceMode(I)V

    return-object p2
.end method

.method public setSelectedPst(I)V
    .locals 5

    .line 979
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    if-gez p1, :cond_0

    goto/16 :goto_1

    .line 983
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->getItemCount()I

    move-result v0

    .line 985
    iget v1, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mChoiceMode:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    .line 986
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/dialog/PromptController;

    iget v1, v1, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItem:I

    if-ltz v1, :cond_2

    if-ge v1, v0, :cond_2

    .line 992
    iget-object v2, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_2
    if-ge p1, v0, :cond_7

    .line 995
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/dialog/PromptController;

    iput p1, v0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItem:I

    .line 997
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/dialog/PromptController;

    iget v0, v0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItem:I

    iget-object v1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    iget-object v1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    :cond_3
    invoke-virtual {p0, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x2

    if-ne v1, v4, :cond_7

    .line 1000
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/dialog/PromptController;

    iget-object v1, v1, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItems:[Z

    if-eqz v1, :cond_7

    .line 1001
    array-length v4, v1

    if-le v4, v0, :cond_5

    goto :goto_1

    .line 1005
    :cond_5
    aget-boolean v0, v1, p1

    xor-int/2addr v0, v2

    aput-boolean v0, v1, p1

    .line 1007
    iget-object v0, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6

    iget-object v0, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    :cond_6
    invoke-virtual {p0, p1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    nop

    :cond_7
    :goto_1
    return-void
.end method

.method public setWeakReference(Lcom/transsion/widgetslib/dialog/PromptController;)V
    .locals 1

    .line 948
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.class public Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/adapter/SelectDialogAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mCheckedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/widgetslib/entity/SelectDialogEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/transsion/widgetslib/entity/SelectDialogEntity;",
            ">;Z)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;->mCheckedList:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;->mList:Ljava/util/List;

    .line 38
    invoke-direct {p0, p3}, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;->initCheckList(Z)V

    return-void
.end method

.method private initCheckList(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 42
    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;->mCheckedList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getCheckCount()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 94
    :goto_0
    iget-object v2, p0, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;->mCheckedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 95
    iget-object v2, p0, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;->mCheckedList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getCheckedList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object p0, p0, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;->mCheckedList:Ljava/util/List;

    return-object p0
.end method

.method public getCount()I
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;->mList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/entity/SelectDialogEntity;

    if-nez p2, :cond_0

    .line 68
    iget-object p2, p0, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_select_dialog_item_layout:I

    const/4 v2, 0x0

    .line 69
    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 70
    new-instance p3, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p3, v1}, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter$ViewHolder;-><init>(Lcom/transsion/widgetslib/adapter/SelectDialogAdapter$1;)V

    .line 71
    invoke-virtual {p3, p2}, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter$ViewHolder;->setView(Landroid/view/View;)V

    .line 72
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter$ViewHolder;

    .line 77
    :goto_0
    invoke-virtual {p3, v0}, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter$ViewHolder;->bindData(Lcom/transsion/widgetslib/entity/SelectDialogEntity;)V

    .line 78
    invoke-static {p3}, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter$ViewHolder;->access$100(Lcom/transsion/widgetslib/adapter/SelectDialogAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object p3

    iget-object p0, p0, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;->mCheckedList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p3, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-object p2
.end method

.method public setCheckedItem(I)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/transsion/widgetslib/adapter/SelectDialogAdapter;->mCheckedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

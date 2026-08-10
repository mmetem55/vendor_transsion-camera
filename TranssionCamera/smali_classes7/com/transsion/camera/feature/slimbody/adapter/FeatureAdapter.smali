.class public Lcom/transsion/camera/feature/slimbody/adapter/FeatureAdapter;
.super Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;
.source "FeatureAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/slimbody/listener/RvListener;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/slimbody/listener/RvListener;)V

    return-void
.end method


# virtual methods
.method protected getHolder(Landroid/view/View;I)Lcom/transsion/camera/feature/slimbody/holder/RvHolder;
    .locals 0

    .line 31
    new-instance p0, Lcom/transsion/camera/feature/slimbody/holder/FeatureHolder;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/slimbody/holder/FeatureHolder;-><init>(Landroid/view/View;I)V

    return-object p0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 22
    instance-of v1, v0, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    if-eqz v1, :cond_0

    .line 23
    check-cast v0, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    .line 24
    iget p0, v0, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;->layoutId:I

    return p0

    .line 26
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p0

    return p0
.end method

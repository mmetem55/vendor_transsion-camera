.class public Lcom/transsion/camera/feature/slimbody/adapter/PresetAdapter;
.super Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;
.source "PresetAdapter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/slimbody/listener/RvListener;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/slimbody/listener/RvListener;)V

    return-void
.end method


# virtual methods
.method protected getHolder(Landroid/view/View;I)Lcom/transsion/camera/feature/slimbody/holder/RvHolder;
    .locals 0

    .line 32
    new-instance p0, Lcom/transsion/camera/feature/slimbody/holder/PresetHolder;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/slimbody/holder/PresetHolder;-><init>(Landroid/view/View;I)V

    return-object p0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 23
    instance-of v1, v0, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;

    if-eqz v1, :cond_0

    .line 24
    check-cast v0, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;

    .line 25
    iget p0, v0, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;->layoutId:I

    return p0

    .line 27
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p0

    return p0
.end method

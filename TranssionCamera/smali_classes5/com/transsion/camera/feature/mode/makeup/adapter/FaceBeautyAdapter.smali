.class public Lcom/transsion/camera/feature/mode/makeup/adapter/FaceBeautyAdapter;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;
.source "FaceBeautyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter<",
        "Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/mode/makeup/listener/RvListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;",
            ">;",
            "Lcom/transsion/camera/feature/mode/makeup/listener/RvListener<",
            "Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/mode/makeup/listener/RvListener;)V

    return-void
.end method


# virtual methods
.method protected getHolder(Landroid/view/View;I)Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;
    .locals 0

    .line 28
    new-instance p0, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method protected bridge synthetic getHolder(Landroid/view/View;I)Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/FaceBeautyAdapter;->getHolder(Landroid/view/View;I)Lcom/transsion/camera/feature/mode/makeup/holder/FaceBeautyHolder;

    move-result-object p0

    return-object p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;

    .line 23
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;->layoutId:I

    return p0
.end method

.method public updateSelectedItemById(I)V
    .locals 2

    const/4 v0, 0x0

    .line 33
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 34
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;

    .line 35
    iget v1, v1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;->featureId:I

    if-ne p1, v1, :cond_0

    .line 36
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->updateSelectedItemByPosition(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.class final Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;
.super Ljava/lang/Object;
.source "TopBarUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewStore"
.end annotation


# instance fields
.field mStateMap:Lcom/transsion/camera/utils/MultiValueMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/utils/MultiValueMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mViewMap:Ljava/util/Map;

    .line 363
    new-instance v0, Lcom/transsion/camera/utils/MultiValueHashMap;

    invoke-direct {v0}, Lcom/transsion/camera/utils/MultiValueHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    return-void
.end method


# virtual methods
.method cacheView(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .line 436
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 437
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mViewMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method getValue(Ljava/lang/String;I)I
    .locals 0

    .line 432
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/utils/MultiValueMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method getView(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mViewMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 442
    invoke-static {}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mViewMap don\'t contain view: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 445
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mViewMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_1

    .line 447
    invoke-static {}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "mViewRefs is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 450
    :cond_1
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method removeView(Ljava/lang/String;)V
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mViewMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    invoke-static {}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mViewMap don\'t contain view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 458
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mViewMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method update(Ljava/lang/String;III)V
    .locals 4

    .line 383
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-interface {v0, p1}, Lcom/transsion/camera/utils/MultiValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/utils/MultiValueMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 385
    iget-object v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    const/4 v2, 0x3

    invoke-interface {v1, p1, v2}, Lcom/transsion/camera/utils/MultiValueMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 391
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 392
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-interface {p0, p1, v2}, Lcom/transsion/camera/utils/MultiValueMap;->set(Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method updateEnd()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 408
    iget-object v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-interface {v1}, Lcom/transsion/camera/utils/MultiValueMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    invoke-static {}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v1, "mStateMap is empty"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-interface {v1}, Lcom/transsion/camera/utils/MultiValueMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 413
    iget-object v3, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    const/4 v4, 0x4

    invoke-interface {v3, v2, v4}, Lcom/transsion/camera/utils/MultiValueMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 414
    iget-object v3, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    const/4 v5, 0x1

    invoke-interface {v3, v2, v5}, Lcom/transsion/camera/utils/MultiValueMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-interface {v3, v2, v7, v6}, Lcom/transsion/camera/utils/MultiValueMap;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 415
    iget-object v3, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v2, v5, v6}, Lcom/transsion/camera/utils/MultiValueMap;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 416
    iget-object v3, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-interface {v3, v2, v4}, Lcom/transsion/camera/utils/MultiValueMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const/4 v6, 0x2

    invoke-interface {v3, v2, v6, v5}, Lcom/transsion/camera/utils/MultiValueMap;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 417
    iget-object v3, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v2, v4, v5}, Lcom/transsion/camera/utils/MultiValueMap;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 419
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    .line 421
    invoke-static {}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    const-string v3, "cached view is null"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 424
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->removeView(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method updateStart()V
    .locals 5

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-interface {v0}, Lcom/transsion/camera/utils/MultiValueMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    invoke-interface {v0}, Lcom/transsion/camera/utils/MultiValueMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 372
    iget-object v2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->mStateMap:Lcom/transsion/camera/utils/MultiValueMap;

    const/4 v3, 0x4

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v1, v3, v4}, Lcom/transsion/camera/utils/MultiValueMap;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

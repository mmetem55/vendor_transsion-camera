.class Lcom/faceunity/FURenderer$FUItemHandler$6;
.super Ljava/lang/Object;
.source "FURenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/FURenderer$FUItemHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/faceunity/FURenderer$FUItemHandler;

.field final synthetic val$finalItemMakeup:I

.field final synthetic val$makeupEntity:Lcom/faceunity/entity/MakeupEntity;

.field final synthetic val$makeupItemHandleMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer$FUItemHandler;ILcom/faceunity/entity/MakeupEntity;Ljava/util/Map;)V
    .locals 0

    .line 2564
    iput-object p1, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iput p2, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->val$finalItemMakeup:I

    iput-object p3, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->val$makeupEntity:Lcom/faceunity/entity/MakeupEntity;

    iput-object p4, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->val$makeupItemHandleMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 2568
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$2000(Lcom/faceunity/FURenderer;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 2570
    new-array v2, v0, [I

    .line 2571
    iget-object v3, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v3, v3, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v3}, Lcom/faceunity/FURenderer;->access$2000(Lcom/faceunity/FURenderer;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    .line 2572
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v5, v4, 0x1

    .line 2573
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v2, v4

    move v4, v5

    goto :goto_0

    .line 2575
    :cond_0
    iget v3, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->val$finalItemMakeup:I

    invoke-static {v3, v2}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_1

    .line 2576
    aget v4, v2, v3

    .line 2577
    invoke-static {v4}, Lcom/faceunity/wrapper/faceunity;->fuDestroyItem(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2579
    :cond_1
    invoke-static {}, Lcom/faceunity/FURenderer;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeup: unbind and destroy old child item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$2000(Lcom/faceunity/FURenderer;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2582
    :cond_2
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$5300(Lcom/faceunity/FURenderer;)Lcom/faceunity/entity/MakeupEntity;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 2583
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$5300(Lcom/faceunity/FURenderer;)Lcom/faceunity/entity/MakeupEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/faceunity/entity/MakeupEntity;->getItemHandle()I

    move-result v0

    if-lez v0, :cond_3

    .line 2585
    iget v3, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->val$finalItemMakeup:I

    new-array v4, v2, [I

    aput v0, v4, v1

    invoke-static {v3, v4}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    .line 2586
    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuDestroyItem(I)V

    .line 2587
    invoke-static {}, Lcom/faceunity/FURenderer;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeup: unbind and destroy old parent item: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$5300(Lcom/faceunity/FURenderer;)Lcom/faceunity/entity/MakeupEntity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/faceunity/entity/MakeupEntity;->setItemHandle(I)V

    .line 2593
    :cond_3
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->val$makeupEntity:Lcom/faceunity/entity/MakeupEntity;

    invoke-virtual {v0}, Lcom/faceunity/entity/MakeupEntity;->getItemHandle()I

    move-result v0

    if-lez v0, :cond_4

    .line 2594
    iget v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->val$finalItemMakeup:I

    new-array v3, v2, [I

    iget-object v4, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->val$makeupEntity:Lcom/faceunity/entity/MakeupEntity;

    invoke-virtual {v4}, Lcom/faceunity/entity/MakeupEntity;->getItemHandle()I

    move-result v4

    aput v4, v3, v1

    invoke-static {v0, v3}, Lcom/faceunity/wrapper/faceunity;->fuBindItems(I[I)I

    .line 2595
    invoke-static {}, Lcom/faceunity/FURenderer;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeup: bind new parent item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->val$makeupEntity:Lcom/faceunity/entity/MakeupEntity;

    invoke-virtual {v4}, Lcom/faceunity/entity/MakeupEntity;->getItemHandle()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    :cond_4
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->val$makeupItemHandleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 2599
    new-array v0, v0, [I

    .line 2600
    iget-object v3, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->val$makeupItemHandleMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2601
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v4, v1, 0x1

    .line 2602
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v1

    move v1, v4

    goto :goto_2

    .line 2604
    :cond_5
    iget v1, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->val$finalItemMakeup:I

    invoke-static {v1, v0}, Lcom/faceunity/wrapper/faceunity;->fuBindItems(I[I)I

    .line 2605
    invoke-static {}, Lcom/faceunity/FURenderer;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeup: bind new child item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$2000(Lcom/faceunity/FURenderer;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->val$makeupItemHandleMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2609
    :cond_6
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$5200(Lcom/faceunity/FURenderer;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 2610
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2611
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 2612
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2613
    instance-of v4, v3, [D

    const-string v5, ", value: "

    const-string v6, "makeup: set param key: "

    if-eqz v4, :cond_8

    .line 2614
    check-cast v3, [D

    .line 2615
    iget v4, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->val$finalItemMakeup:I

    invoke-static {v4, v1, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;[D)I

    .line 2616
    invoke-static {}, Lcom/faceunity/FURenderer;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2617
    :cond_8
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_7

    .line 2618
    check-cast v3, Ljava/lang/Double;

    .line 2619
    iget v4, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->val$finalItemMakeup:I

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v4, v1, v7, v8}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 2620
    invoke-static {}, Lcom/faceunity/FURenderer;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2624
    :cond_9
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$4200(Lcom/faceunity/FURenderer;)I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$4200(Lcom/faceunity/FURenderer;)I

    move-result v0

    if-ne v0, v2, :cond_b

    .line 2625
    :cond_a
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$5400(Lcom/faceunity/FURenderer;)Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$5402(Lcom/faceunity/FURenderer;Z)Z

    .line 2627
    :cond_b
    invoke-static {}, Lcom/faceunity/FURenderer;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeup: flip points: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v2, v2, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$5400(Lcom/faceunity/FURenderer;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2628
    iget v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->val$finalItemMakeup:I

    iget-object v1, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v1, v1, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v1}, Lcom/faceunity/FURenderer;->access$5400(Lcom/faceunity/FURenderer;)Z

    move-result v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-eqz v1, :cond_c

    move-wide v4, v2

    goto :goto_4

    :cond_c
    const-wide/16 v4, 0x0

    :goto_4
    const-string v1, "is_flip_points"

    invoke-static {v0, v1, v4, v5}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 2629
    iget v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->val$finalItemMakeup:I

    const-string v1, "makeup_lip_mask"

    invoke-static {v0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 2630
    iget v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->val$finalItemMakeup:I

    const-string v1, "makeup_intensity"

    invoke-static {v0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 2631
    iget v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->val$finalItemMakeup:I

    const-string v1, "is_clear_makeup"

    invoke-static {v0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 2632
    invoke-static {}, Lcom/faceunity/FURenderer;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind makeup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->val$makeupEntity:Lcom/faceunity/entity/MakeupEntity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", unbind makeup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v2, v2, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$5300(Lcom/faceunity/FURenderer;)Lcom/faceunity/entity/MakeupEntity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    iget-object p0, p0, Lcom/faceunity/FURenderer$FUItemHandler$6;->val$makeupEntity:Lcom/faceunity/entity/MakeupEntity;

    invoke-static {v0, p0}, Lcom/faceunity/FURenderer;->access$5302(Lcom/faceunity/FURenderer;Lcom/faceunity/entity/MakeupEntity;)Lcom/faceunity/entity/MakeupEntity;

    return-void
.end method

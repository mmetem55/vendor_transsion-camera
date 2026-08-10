.class Lcom/faceunity/FURenderer$FUItemHandler;
.super Landroid/os/Handler;
.source "FURenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/faceunity/FURenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FUItemHandler"
.end annotation


# instance fields
.field bundlePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/faceunity/FURenderer;


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer;Landroid/os/Looper;)V
    .locals 0

    .line 2384
    iput-object p1, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    .line 2385
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 2390
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2391
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1e

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_18

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_12

    const/4 v4, 0x3

    if-eq v0, v4, :cond_10

    const/4 v4, 0x4

    if-eq v0, v4, :cond_c

    const/4 v1, 0x6

    if-eq v0, v1, :cond_a

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto/16 :goto_6

    .line 2686
    :cond_0
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$100(Lcom/faceunity/FURenderer;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "graphics/body_slim.bundle"

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$1900(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 2688
    invoke-static {}, Lcom/faceunity/FURenderer;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create beautify body item failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2691
    :cond_1
    iget-object v1, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    new-instance v2, Lcom/faceunity/FURenderer$FUItemHandler$9;

    invoke-direct {v2, p0, v0}, Lcom/faceunity/FURenderer$FUItemHandler$9;-><init>(Lcom/faceunity/FURenderer$FUItemHandler;I)V

    invoke-virtual {v1, v2}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 2531
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_3

    return-void

    .line 2535
    :cond_3
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    aget v0, v0, v1

    if-gtz v0, :cond_5

    .line 2536
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$100(Lcom/faceunity/FURenderer;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "graphics/face_makeup.bundle"

    invoke-static {v0, v2}, Lcom/faceunity/FURenderer;->access$1900(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_4

    .line 2538
    invoke-static {}, Lcom/faceunity/FURenderer;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create face makeup item failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2541
    :cond_4
    iget-object v2, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v2

    aput v0, v2, v1

    goto :goto_0

    .line 2543
    :cond_5
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    aget v0, v0, v1

    .line 2546
    :goto_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v1, Lcom/faceunity/entity/MakeupEntity;

    if-eqz v2, :cond_6

    move-object v3, v1

    check-cast v3, Lcom/faceunity/entity/MakeupEntity;

    :cond_6
    if-nez v3, :cond_7

    return-void

    .line 2550
    :cond_7
    new-instance v1, Lcom/faceunity/entity/MakeupEntity;

    invoke-direct {v1, v3}, Lcom/faceunity/entity/MakeupEntity;-><init>(Lcom/faceunity/entity/MakeupEntity;)V

    .line 2551
    iget-object v2, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$100(Lcom/faceunity/FURenderer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/faceunity/entity/MakeupEntity;->getBundlePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/faceunity/FURenderer;->access$1900(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/faceunity/entity/MakeupEntity;->setItemHandle(I)V

    .line 2552
    iget-object v2, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$5200(Lcom/faceunity/FURenderer;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 2553
    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 2554
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2555
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 2556
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_8

    check-cast v5, Ljava/lang/String;

    const-string v6, ".bundle"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2557
    iget-object v6, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v6}, Lcom/faceunity/FURenderer;->access$100(Lcom/faceunity/FURenderer;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/faceunity/FURenderer;->access$1900(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_8

    .line 2559
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2564
    :cond_9
    iget-object v2, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    new-instance v4, Lcom/faceunity/FURenderer$FUItemHandler$6;

    invoke-direct {v4, p0, v0, v1, v3}, Lcom/faceunity/FURenderer$FUItemHandler$6;-><init>(Lcom/faceunity/FURenderer$FUItemHandler;ILcom/faceunity/entity/MakeupEntity;Ljava/util/Map;)V

    invoke-virtual {v2, v4}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 2667
    :cond_a
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$100(Lcom/faceunity/FURenderer;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "graphics/fuzzytoonfilter.bundle"

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$1900(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_b

    .line 2669
    invoke-static {}, Lcom/faceunity/FURenderer;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create cartoon filter item failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2672
    :cond_b
    iget-object v1, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    new-instance v2, Lcom/faceunity/FURenderer$FUItemHandler$8;

    invoke-direct {v2, p0, v0}, Lcom/faceunity/FURenderer$FUItemHandler$8;-><init>(Lcom/faceunity/FURenderer$FUItemHandler;I)V

    invoke-virtual {v1, v2}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 2641
    :cond_c
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$5500(Lcom/faceunity/FURenderer;)I

    move-result v0

    if-nez v0, :cond_d

    .line 2642
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$100(Lcom/faceunity/FURenderer;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "effect/hair_seg/hair_normal.bundle"

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$1900(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 2643
    :cond_d
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$5500(Lcom/faceunity/FURenderer;)I

    move-result v0

    if-ne v0, v2, :cond_e

    .line 2644
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$100(Lcom/faceunity/FURenderer;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "effect/hair_seg/hair_gradient.bundle"

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$1900(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    :cond_e
    :goto_2
    if-gtz v1, :cond_f

    .line 2648
    invoke-static {}, Lcom/faceunity/FURenderer;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create hair item failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2651
    :cond_f
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    new-instance v2, Lcom/faceunity/FURenderer$FUItemHandler$7;

    invoke-direct {v2, p0, v1}, Lcom/faceunity/FURenderer$FUItemHandler$7;-><init>(Lcom/faceunity/FURenderer$FUItemHandler;I)V

    invoke-virtual {v0, v2}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 2714
    :cond_10
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$100(Lcom/faceunity/FURenderer;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "graphics/fxaa.bundle"

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$1900(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_11

    .line 2716
    invoke-static {}, Lcom/faceunity/FURenderer;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create Animoji3D item failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2719
    :cond_11
    iget-object v1, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    new-instance v2, Lcom/faceunity/FURenderer$FUItemHandler$10;

    invoke-direct {v2, p0, v0}, Lcom/faceunity/FURenderer$FUItemHandler$10;-><init>(Lcom/faceunity/FURenderer$FUItemHandler;I)V

    invoke-virtual {v1, v2}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 2469
    :cond_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/faceunity/entity/LightMakeupItem;

    if-nez v1, :cond_13

    return-void

    .line 2472
    :cond_13
    check-cast v0, Lcom/faceunity/entity/LightMakeupItem;

    .line 2473
    invoke-virtual {v0}, Lcom/faceunity/entity/LightMakeupItem;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2474
    iget-object v2, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v2

    aget v2, v2, v4

    if-gtz v2, :cond_15

    .line 2475
    iget-object v2, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$100(Lcom/faceunity/FURenderer;)Landroid/content/Context;

    move-result-object v2

    const-string v5, "light_makeup/light_makeup.bundle"

    invoke-static {v2, v5}, Lcom/faceunity/FURenderer;->access$1900(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_14

    .line 2477
    invoke-static {}, Lcom/faceunity/FURenderer;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create light makeup item failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2480
    :cond_14
    iget-object v5, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v5}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v5

    aput v2, v5, v4

    .line 2482
    :cond_15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 2485
    invoke-virtual {v0}, Lcom/faceunity/entity/LightMakeupItem;->getType()I

    move-result v2

    if-nez v2, :cond_16

    .line 2486
    iget-object v2, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$100(Lcom/faceunity/FURenderer;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/faceunity/param/MakeupParamHelper;->readRgbaColor(Landroid/content/Context;Ljava/lang/String;)[D

    move-result-object v1

    goto :goto_3

    .line 2488
    :cond_16
    iget-object v2, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$100(Lcom/faceunity/FURenderer;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/faceunity/param/MakeupParamHelper;->createTextureImage(Landroid/content/Context;Ljava/lang/String;)Lcom/faceunity/param/MakeupParamHelper$TextureImage;

    move-result-object v1

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    .line 2490
    :goto_3
    invoke-static {}, Lcom/faceunity/FURenderer;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "light makeup. textureImage:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", lipStick:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    iget-object v2, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    new-instance v4, Lcom/faceunity/FURenderer$FUItemHandler$4;

    invoke-direct {v4, p0, v0, v1, v3}, Lcom/faceunity/FURenderer$FUItemHandler$4;-><init>(Lcom/faceunity/FURenderer$FUItemHandler;Lcom/faceunity/entity/LightMakeupItem;[DLcom/faceunity/param/MakeupParamHelper$TextureImage;)V

    invoke-virtual {v2, v4}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 2517
    :cond_17
    iget-object v1, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    new-instance v2, Lcom/faceunity/FURenderer$FUItemHandler$5;

    invoke-direct {v2, p0, v0}, Lcom/faceunity/FURenderer$FUItemHandler$5;-><init>(Lcom/faceunity/FURenderer$FUItemHandler;Lcom/faceunity/entity/LightMakeupItem;)V

    invoke-virtual {v1, v2}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 2394
    :cond_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/faceunity/entity/Effect;

    if-nez v0, :cond_19

    return-void

    .line 2398
    :cond_19
    invoke-virtual {v0}, Lcom/faceunity/entity/Effect;->getBundleName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/faceunity/FURenderer$FUItemHandler;->bundlePath:Ljava/lang/String;

    .line 2399
    invoke-virtual {v0}, Lcom/faceunity/entity/Effect;->effectType()I

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_4

    :cond_1a
    move v2, v1

    .line 2400
    :goto_4
    iget-object v3, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v3}, Lcom/faceunity/FURenderer;->access$4800(Lcom/faceunity/FURenderer;)Lcom/vskit/arsdk/portal/ARCallback;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 2401
    iget-object v3, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v3}, Lcom/faceunity/FURenderer;->access$4800(Lcom/faceunity/FURenderer;)Lcom/vskit/arsdk/portal/ARCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/vskit/arsdk/portal/ARCallback;->onBundleLoadStart()V

    .line 2403
    :cond_1b
    iget-object v3, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    new-instance v4, Lcom/faceunity/FURenderer$FUItemHandler$1;

    invoke-direct {v4, p0}, Lcom/faceunity/FURenderer$FUItemHandler$1;-><init>(Lcom/faceunity/FURenderer$FUItemHandler;)V

    invoke-virtual {v3, v4}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    if-eqz v2, :cond_1c

    goto :goto_5

    .line 2412
    :cond_1c
    iget-object v1, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v1}, Lcom/faceunity/FURenderer;->access$100(Lcom/faceunity/FURenderer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/faceunity/entity/Effect;->path()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/faceunity/FURenderer;->access$1900(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    :goto_5
    if-nez v2, :cond_1d

    if-gtz v1, :cond_1d

    .line 2414
    invoke-static {}, Lcom/faceunity/FURenderer;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create effect item failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2417
    :cond_1d
    iget-object v2, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    new-instance v3, Lcom/faceunity/FURenderer$FUItemHandler$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/faceunity/FURenderer$FUItemHandler$2;-><init>(Lcom/faceunity/FURenderer$FUItemHandler;ILcom/faceunity/entity/Effect;)V

    invoke-virtual {v2, v3}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 2449
    :cond_1e
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$100(Lcom/faceunity/FURenderer;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "graphics/face_beautification.bundle"

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$1900(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1f

    .line 2451
    invoke-static {}, Lcom/faceunity/FURenderer;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load face beauty item failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/vskit/arsdk/utils/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2454
    :cond_1f
    iget-object v1, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    new-instance v2, Lcom/faceunity/FURenderer$FUItemHandler$3;

    invoke-direct {v2, p0, v0}, Lcom/faceunity/FURenderer$FUItemHandler$3;-><init>(Lcom/faceunity/FURenderer$FUItemHandler;I)V

    invoke-virtual {v1, v2}, Lcom/faceunity/FURenderer;->queueEvent(Ljava/lang/Runnable;)V

    .line 2733
    :goto_6
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$4800(Lcom/faceunity/FURenderer;)Lcom/vskit/arsdk/portal/ARCallback;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 2734
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$4800(Lcom/faceunity/FURenderer;)Lcom/vskit/arsdk/portal/ARCallback;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/faceunity/FURenderer$FUItemHandler;->bundlePath:Ljava/lang/String;

    invoke-interface {v0, p1, p0}, Lcom/vskit/arsdk/portal/ARCallback;->onBundleLoadComplete(ILjava/lang/String;)V

    :cond_20
    return-void
.end method

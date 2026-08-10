.class Lcom/faceunity/FURenderer$FUItemHandler$2;
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

.field final synthetic val$effect:Lcom/faceunity/entity/Effect;

.field final synthetic val$itemEffect:I


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer$FUItemHandler;ILcom/faceunity/entity/Effect;)V
    .locals 0

    .line 2417
    iput-object p1, p0, Lcom/faceunity/FURenderer$FUItemHandler$2;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iput p2, p0, Lcom/faceunity/FURenderer$FUItemHandler$2;->val$itemEffect:I

    iput-object p3, p0, Lcom/faceunity/FURenderer$FUItemHandler$2;->val$effect:Lcom/faceunity/entity/Effect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2420
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$2;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    if-lez v0, :cond_0

    .line 2421
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$2;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    aget v0, v0, v1

    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuDestroyItem(I)V

    .line 2422
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$2;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 2424
    :cond_0
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$2;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    iget v2, p0, Lcom/faceunity/FURenderer$FUItemHandler$2;->val$itemEffect:I

    aput v2, v0, v1

    .line 2426
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$2;->val$effect:Lcom/faceunity/entity/Effect;

    invoke-virtual {v0}, Lcom/faceunity/entity/Effect;->effectType()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 2427
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$2;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    iget v1, p0, Lcom/faceunity/FURenderer$FUItemHandler$2;->val$itemEffect:I

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$3902(Lcom/faceunity/FURenderer;I)I

    .line 2428
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$2;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$3000(Lcom/faceunity/FURenderer;)[D

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/faceunity/FURenderer;->setKeyColor([D)V

    .line 2429
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$2;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$3100(Lcom/faceunity/FURenderer;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/faceunity/FURenderer;->setChromaThres(F)V

    .line 2430
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$2;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$3200(Lcom/faceunity/FURenderer;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/faceunity/FURenderer;->setChromaThresT(F)V

    .line 2431
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$2;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$3300(Lcom/faceunity/FURenderer;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/faceunity/FURenderer;->setAlphaL(F)V

    .line 2432
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$2;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$3400(Lcom/faceunity/FURenderer;)F

    move-result v1

    iget-object v2, p0, Lcom/faceunity/FURenderer$FUItemHandler$2;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v2, v2, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$3500(Lcom/faceunity/FURenderer;)F

    move-result v2

    iget-object v3, p0, Lcom/faceunity/FURenderer$FUItemHandler$2;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v3, v3, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v3}, Lcom/faceunity/FURenderer;->access$3600(Lcom/faceunity/FURenderer;)F

    move-result v3

    iget-object v4, p0, Lcom/faceunity/FURenderer$FUItemHandler$2;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v4, v4, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v4}, Lcom/faceunity/FURenderer;->access$3700(Lcom/faceunity/FURenderer;)F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/faceunity/FURenderer;->setTransform(FFFF)V

    .line 2433
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$2;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$3800(Lcom/faceunity/FURenderer;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/faceunity/FURenderer;->setRunBgSegGreen(Z)V

    .line 2436
    :cond_1
    iget v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$2;->val$itemEffect:I

    if-lez v0, :cond_2

    .line 2437
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$2;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$4800(Lcom/faceunity/FURenderer;)Lcom/vskit/arsdk/portal/ARCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2438
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$2;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$4800(Lcom/faceunity/FURenderer;)Lcom/vskit/arsdk/portal/ARCallback;

    move-result-object v0

    iget v1, p0, Lcom/faceunity/FURenderer$FUItemHandler$2;->val$itemEffect:I

    invoke-interface {v0, v1}, Lcom/vskit/arsdk/portal/ARCallback;->onBundleItemEffect(I)V

    .line 2442
    :cond_2
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$2;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    iget-object v1, p0, Lcom/faceunity/FURenderer$FUItemHandler$2;->val$effect:Lcom/faceunity/entity/Effect;

    iget p0, p0, Lcom/faceunity/FURenderer$FUItemHandler$2;->val$itemEffect:I

    invoke-virtual {v0, v1, p0}, Lcom/faceunity/FURenderer;->updateEffectItemParams(Lcom/faceunity/entity/Effect;I)V

    return-void
.end method

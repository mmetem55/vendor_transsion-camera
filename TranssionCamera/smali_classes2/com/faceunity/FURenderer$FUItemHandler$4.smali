.class Lcom/faceunity/FURenderer$FUItemHandler$4;
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

.field final synthetic val$finalLipStickColor:[D

.field final synthetic val$finalTextureImage:Lcom/faceunity/param/MakeupParamHelper$TextureImage;

.field final synthetic val$makeupItem:Lcom/faceunity/entity/LightMakeupItem;


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer$FUItemHandler;Lcom/faceunity/entity/LightMakeupItem;[DLcom/faceunity/param/MakeupParamHelper$TextureImage;)V
    .locals 0

    .line 2493
    iput-object p1, p0, Lcom/faceunity/FURenderer$FUItemHandler$4;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iput-object p2, p0, Lcom/faceunity/FURenderer$FUItemHandler$4;->val$makeupItem:Lcom/faceunity/entity/LightMakeupItem;

    iput-object p3, p0, Lcom/faceunity/FURenderer$FUItemHandler$4;->val$finalLipStickColor:[D

    iput-object p4, p0, Lcom/faceunity/FURenderer$FUItemHandler$4;->val$finalTextureImage:Lcom/faceunity/param/MakeupParamHelper$TextureImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 2496
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$4;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    const-string v1, "is_makeup_on"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 2497
    invoke-static {v0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v1, "makeup_intensity"

    .line 2498
    invoke-static {v0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v1, "reverse_alpha"

    .line 2499
    invoke-static {v0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 2500
    iget-object v1, p0, Lcom/faceunity/FURenderer$FUItemHandler$4;->val$makeupItem:Lcom/faceunity/entity/LightMakeupItem;

    invoke-virtual {v1}, Lcom/faceunity/entity/LightMakeupItem;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/faceunity/param/MakeupParamHelper;->getMakeupIntensityKeyByType(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/faceunity/FURenderer$FUItemHandler$4;->val$makeupItem:Lcom/faceunity/entity/LightMakeupItem;

    invoke-virtual {v4}, Lcom/faceunity/entity/LightMakeupItem;->getLevel()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v0, v1, v4, v5}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 2501
    iget-object v1, p0, Lcom/faceunity/FURenderer$FUItemHandler$4;->val$finalLipStickColor:[D

    if-eqz v1, :cond_0

    .line 2502
    iget-object v1, p0, Lcom/faceunity/FURenderer$FUItemHandler$4;->val$makeupItem:Lcom/faceunity/entity/LightMakeupItem;

    invoke-virtual {v1}, Lcom/faceunity/entity/LightMakeupItem;->getType()I

    move-result v1

    if-nez v1, :cond_1

    .line 2503
    iget-object v1, p0, Lcom/faceunity/FURenderer$FUItemHandler$4;->val$finalLipStickColor:[D

    const-string v4, "makeup_lip_color"

    invoke-static {v0, v4, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;[D)I

    const-string v1, "makeup_lip_mask"

    .line 2504
    invoke-static {v0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    const-string v3, "makeup_intensity_lip"

    .line 2507
    invoke-static {v0, v3, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 2509
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/faceunity/FURenderer$FUItemHandler$4;->val$finalTextureImage:Lcom/faceunity/param/MakeupParamHelper$TextureImage;

    if-eqz v1, :cond_2

    .line 2510
    iget-object v1, p0, Lcom/faceunity/FURenderer$FUItemHandler$4;->val$makeupItem:Lcom/faceunity/entity/LightMakeupItem;

    invoke-virtual {v1}, Lcom/faceunity/entity/LightMakeupItem;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/faceunity/param/MakeupParamHelper;->getMakeupTextureKeyByType(I)Ljava/lang/String;

    move-result-object v1

    .line 2511
    iget-object v2, p0, Lcom/faceunity/FURenderer$FUItemHandler$4;->val$finalTextureImage:Lcom/faceunity/param/MakeupParamHelper$TextureImage;

    invoke-virtual {v2}, Lcom/faceunity/param/MakeupParamHelper$TextureImage;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lcom/faceunity/FURenderer$FUItemHandler$4;->val$finalTextureImage:Lcom/faceunity/param/MakeupParamHelper$TextureImage;

    invoke-virtual {v3}, Lcom/faceunity/param/MakeupParamHelper$TextureImage;->getWidth()I

    move-result v3

    iget-object p0, p0, Lcom/faceunity/FURenderer$FUItemHandler$4;->val$finalTextureImage:Lcom/faceunity/param/MakeupParamHelper$TextureImage;

    invoke-virtual {p0}, Lcom/faceunity/param/MakeupParamHelper$TextureImage;->getHeight()I

    move-result p0

    invoke-static {v0, v1, v2, v3, p0}, Lcom/faceunity/wrapper/faceunity;->fuCreateTexForItem(ILjava/lang/String;[BII)I

    :cond_2
    return-void
.end method

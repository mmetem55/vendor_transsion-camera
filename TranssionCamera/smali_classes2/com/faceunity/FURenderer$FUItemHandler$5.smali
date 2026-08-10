.class Lcom/faceunity/FURenderer$FUItemHandler$5;
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

.field final synthetic val$makeupItem:Lcom/faceunity/entity/LightMakeupItem;


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer$FUItemHandler;Lcom/faceunity/entity/LightMakeupItem;)V
    .locals 0

    .line 2517
    iput-object p1, p0, Lcom/faceunity/FURenderer$FUItemHandler$5;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iput-object p2, p0, Lcom/faceunity/FURenderer$FUItemHandler$5;->val$makeupItem:Lcom/faceunity/entity/LightMakeupItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2520
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$5;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    if-lez v0, :cond_0

    .line 2521
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$5;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    aget v0, v0, v1

    iget-object p0, p0, Lcom/faceunity/FURenderer$FUItemHandler$5;->val$makeupItem:Lcom/faceunity/entity/LightMakeupItem;

    .line 2522
    invoke-virtual {p0}, Lcom/faceunity/entity/LightMakeupItem;->getType()I

    move-result p0

    invoke-static {p0}, Lcom/faceunity/param/MakeupParamHelper;->getMakeupIntensityKeyByType(I)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v1, 0x0

    .line 2521
    invoke-static {v0, p0, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    :cond_0
    return-void
.end method

.class Lcom/faceunity/FURenderer$FUItemHandler$7;
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

.field final synthetic val$itemHair:I


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer$FUItemHandler;I)V
    .locals 0

    .line 2651
    iput-object p1, p0, Lcom/faceunity/FURenderer$FUItemHandler$7;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iput p2, p0, Lcom/faceunity/FURenderer$FUItemHandler$7;->val$itemHair:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2654
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$7;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    const/4 v1, 0x4

    aget v0, v0, v1

    if-lez v0, :cond_0

    .line 2655
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$7;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    aget v0, v0, v1

    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuDestroyItem(I)V

    .line 2656
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$7;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 2658
    :cond_0
    iget v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$7;->val$itemHair:I

    iget-object v2, p0, Lcom/faceunity/FURenderer$FUItemHandler$7;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v2, v2, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$1700(Lcom/faceunity/FURenderer;)I

    move-result v2

    int-to-double v2, v2

    const-string v4, "Index"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 2659
    iget v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$7;->val$itemHair:I

    iget-object v2, p0, Lcom/faceunity/FURenderer$FUItemHandler$7;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v2, v2, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$1800(Lcom/faceunity/FURenderer;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "Strength"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 2660
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$7;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    iget p0, p0, Lcom/faceunity/FURenderer$FUItemHandler$7;->val$itemHair:I

    aput p0, v0, v1

    return-void
.end method

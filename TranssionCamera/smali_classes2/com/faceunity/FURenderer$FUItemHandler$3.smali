.class Lcom/faceunity/FURenderer$FUItemHandler$3;
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

.field final synthetic val$itemBeauty:I


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer$FUItemHandler;I)V
    .locals 0

    .line 2454
    iput-object p1, p0, Lcom/faceunity/FURenderer$FUItemHandler$3;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iput p2, p0, Lcom/faceunity/FURenderer$FUItemHandler$3;->val$itemBeauty:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2457
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$3;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    if-lez v0, :cond_0

    .line 2458
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$3;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    aget v0, v0, v1

    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuDestroyItem(I)V

    .line 2459
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$3;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    aput v1, v0, v1

    .line 2461
    :cond_0
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$3;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    iget v2, p0, Lcom/faceunity/FURenderer$FUItemHandler$3;->val$itemBeauty:I

    aput v2, v0, v1

    .line 2462
    iget-object p0, p0, Lcom/faceunity/FURenderer$FUItemHandler$3;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object p0, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/faceunity/FURenderer;->access$5102(Lcom/faceunity/FURenderer;Z)Z

    return-void
.end method

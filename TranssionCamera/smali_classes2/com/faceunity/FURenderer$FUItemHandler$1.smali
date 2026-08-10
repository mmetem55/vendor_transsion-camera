.class Lcom/faceunity/FURenderer$FUItemHandler$1;
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


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer$FUItemHandler;)V
    .locals 0

    .line 2403
    iput-object p1, p0, Lcom/faceunity/FURenderer$FUItemHandler$1;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2406
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$1;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    if-lez v0, :cond_0

    .line 2407
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$1;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    aget v0, v0, v1

    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuDestroyItem(I)V

    .line 2408
    iget-object p0, p0, Lcom/faceunity/FURenderer$FUItemHandler$1;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object p0, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {p0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object p0

    const/4 v0, 0x0

    aput v0, p0, v1

    :cond_0
    return-void
.end method

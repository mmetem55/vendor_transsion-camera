.class Lcom/faceunity/FURenderer$FUItemHandler$9;
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

.field final synthetic val$itemBeautifyBody:I


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer$FUItemHandler;I)V
    .locals 0

    .line 2691
    iput-object p1, p0, Lcom/faceunity/FURenderer$FUItemHandler$9;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iput p2, p0, Lcom/faceunity/FURenderer$FUItemHandler$9;->val$itemBeautifyBody:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2694
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$9;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    const/16 v1, 0xa

    aget v0, v0, v1

    if-lez v0, :cond_0

    .line 2695
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$9;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    aget v0, v0, v1

    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuDestroyItem(I)V

    .line 2696
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$9;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 2698
    :cond_0
    iget v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$9;->val$itemBeautifyBody:I

    iget-object v2, p0, Lcom/faceunity/FURenderer$FUItemHandler$9;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v2, v2, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$2300(Lcom/faceunity/FURenderer;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "BodySlimStrength"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 2699
    iget v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$9;->val$itemBeautifyBody:I

    iget-object v2, p0, Lcom/faceunity/FURenderer$FUItemHandler$9;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v2, v2, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$2400(Lcom/faceunity/FURenderer;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "LegSlimStrength"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 2700
    iget v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$9;->val$itemBeautifyBody:I

    iget-object v2, p0, Lcom/faceunity/FURenderer$FUItemHandler$9;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v2, v2, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$2500(Lcom/faceunity/FURenderer;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "WaistSlimStrength"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 2701
    iget v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$9;->val$itemBeautifyBody:I

    iget-object v2, p0, Lcom/faceunity/FURenderer$FUItemHandler$9;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v2, v2, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$2600(Lcom/faceunity/FURenderer;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "ShoulderSlimStrength"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 2702
    iget v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$9;->val$itemBeautifyBody:I

    iget-object v2, p0, Lcom/faceunity/FURenderer$FUItemHandler$9;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v2, v2, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$2700(Lcom/faceunity/FURenderer;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "HipSlimStrength"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 2703
    iget v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$9;->val$itemBeautifyBody:I

    iget-object v2, p0, Lcom/faceunity/FURenderer$FUItemHandler$9;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v2, v2, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$2800(Lcom/faceunity/FURenderer;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "HeadSlim"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 2704
    iget v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$9;->val$itemBeautifyBody:I

    iget-object v2, p0, Lcom/faceunity/FURenderer$FUItemHandler$9;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v2, v2, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$2900(Lcom/faceunity/FURenderer;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "LegSlim"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 2705
    iget v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$9;->val$itemBeautifyBody:I

    const-wide/16 v2, 0x0

    const-string v4, "Debug"

    invoke-static {v0, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 2706
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$9;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    iget v2, p0, Lcom/faceunity/FURenderer$FUItemHandler$9;->val$itemBeautifyBody:I

    aput v2, v0, v1

    .line 2707
    iget-object p0, p0, Lcom/faceunity/FURenderer$FUItemHandler$9;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object p0, p0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {p0}, Lcom/faceunity/FURenderer;->access$1200(Lcom/faceunity/FURenderer;)V

    return-void
.end method

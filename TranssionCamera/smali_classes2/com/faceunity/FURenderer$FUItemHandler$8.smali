.class Lcom/faceunity/FURenderer$FUItemHandler$8;
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

.field final synthetic val$itemCartoonFilter:I


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer$FUItemHandler;I)V
    .locals 0

    .line 2672
    iput-object p1, p0, Lcom/faceunity/FURenderer$FUItemHandler$8;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iput p2, p0, Lcom/faceunity/FURenderer$FUItemHandler$8;->val$itemCartoonFilter:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2675
    iget v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$8;->val$itemCartoonFilter:I

    iget-object v1, p0, Lcom/faceunity/FURenderer$FUItemHandler$8;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v1, v1, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v1}, Lcom/faceunity/FURenderer;->access$2200(Lcom/faceunity/FURenderer;)I

    move-result v1

    int-to-double v1, v1

    const-string v3, "style"

    invoke-static {v0, v3, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 2676
    invoke-static {}, Lcom/faceunity/gles/core/GlUtil;->getGlMajorVersion()I

    move-result v0

    .line 2677
    invoke-static {}, Lcom/faceunity/FURenderer;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cartoon filter. glMajorVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    iget v1, p0, Lcom/faceunity/FURenderer$FUItemHandler$8;->val$itemCartoonFilter:I

    int-to-double v2, v0

    const-string v0, "glVer"

    invoke-static {v1, v0, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 2679
    iget-object v0, p0, Lcom/faceunity/FURenderer$FUItemHandler$8;->this$1:Lcom/faceunity/FURenderer$FUItemHandler;

    iget-object v0, v0, Lcom/faceunity/FURenderer$FUItemHandler;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    iget p0, p0, Lcom/faceunity/FURenderer$FUItemHandler$8;->val$itemCartoonFilter:I

    const/4 v1, 0x6

    aput p0, v0, v1

    return-void
.end method

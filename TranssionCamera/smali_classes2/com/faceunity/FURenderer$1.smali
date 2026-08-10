.class Lcom/faceunity/FURenderer$1;
.super Ljava/lang/Object;
.source "FURenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/FURenderer;->setMaxHumans(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/faceunity/FURenderer;

.field final synthetic val$maxHumans:I


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer;I)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/faceunity/FURenderer$1;->this$0:Lcom/faceunity/FURenderer;

    iput p2, p0, Lcom/faceunity/FURenderer$1;->val$maxHumans:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 427
    invoke-static {}, Lcom/faceunity/FURenderer;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxHumans() called with: maxHumans = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/faceunity/FURenderer$1;->val$maxHumans:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget p0, p0, Lcom/faceunity/FURenderer$1;->val$maxHumans:I

    invoke-static {p0}, Lcom/faceunity/wrapper/faceunity;->fuHumanProcessorSetMaxHumans(I)V

    return-void
.end method

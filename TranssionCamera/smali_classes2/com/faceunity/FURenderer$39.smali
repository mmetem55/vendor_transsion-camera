.class Lcom/faceunity/FURenderer$39;
.super Ljava/lang/Object;
.source "FURenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/FURenderer;->setKeyColor([D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/faceunity/FURenderer;

.field final synthetic val$rgb:[D


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer;[D)V
    .locals 0

    .line 2051
    iput-object p1, p0, Lcom/faceunity/FURenderer$39;->this$0:Lcom/faceunity/FURenderer;

    iput-object p2, p0, Lcom/faceunity/FURenderer$39;->val$rgb:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2054
    iget-object v0, p0, Lcom/faceunity/FURenderer$39;->this$0:Lcom/faceunity/FURenderer;

    iget-object v1, p0, Lcom/faceunity/FURenderer$39;->val$rgb:[D

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$3002(Lcom/faceunity/FURenderer;[D)[D

    .line 2055
    iget-object v0, p0, Lcom/faceunity/FURenderer$39;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    if-lez v0, :cond_0

    .line 2057
    iget-object p0, p0, Lcom/faceunity/FURenderer$39;->val$rgb:[D

    const-string v1, "key_color"

    invoke-static {v0, v1, p0}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;[D)I

    :cond_0
    return-void
.end method

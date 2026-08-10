.class Lcom/faceunity/FURenderer$43;
.super Ljava/lang/Object;
.source "FURenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/FURenderer;->setTransform(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/faceunity/FURenderer;

.field final synthetic val$endX:F

.field final synthetic val$endY:F

.field final synthetic val$startX:F

.field final synthetic val$startY:F


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer;FFFF)V
    .locals 0

    .line 2113
    iput-object p1, p0, Lcom/faceunity/FURenderer$43;->this$0:Lcom/faceunity/FURenderer;

    iput p2, p0, Lcom/faceunity/FURenderer$43;->val$startX:F

    iput p3, p0, Lcom/faceunity/FURenderer$43;->val$startY:F

    iput p4, p0, Lcom/faceunity/FURenderer$43;->val$endX:F

    iput p5, p0, Lcom/faceunity/FURenderer$43;->val$endY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2116
    iget-object v0, p0, Lcom/faceunity/FURenderer$43;->this$0:Lcom/faceunity/FURenderer;

    iget v1, p0, Lcom/faceunity/FURenderer$43;->val$startX:F

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$3402(Lcom/faceunity/FURenderer;F)F

    .line 2117
    iget-object v0, p0, Lcom/faceunity/FURenderer$43;->this$0:Lcom/faceunity/FURenderer;

    iget v1, p0, Lcom/faceunity/FURenderer$43;->val$startY:F

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$3502(Lcom/faceunity/FURenderer;F)F

    .line 2118
    iget-object v0, p0, Lcom/faceunity/FURenderer$43;->this$0:Lcom/faceunity/FURenderer;

    iget v1, p0, Lcom/faceunity/FURenderer$43;->val$endX:F

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$3602(Lcom/faceunity/FURenderer;F)F

    .line 2119
    iget-object v0, p0, Lcom/faceunity/FURenderer$43;->this$0:Lcom/faceunity/FURenderer;

    iget v1, p0, Lcom/faceunity/FURenderer$43;->val$endY:F

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$3702(Lcom/faceunity/FURenderer;F)F

    .line 2120
    iget-object v0, p0, Lcom/faceunity/FURenderer$43;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    if-lez v0, :cond_0

    .line 2122
    iget v1, p0, Lcom/faceunity/FURenderer$43;->val$startX:F

    float-to-double v1, v1

    const-string v3, "start_x"

    invoke-static {v0, v3, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 2123
    iget v1, p0, Lcom/faceunity/FURenderer$43;->val$startY:F

    float-to-double v1, v1

    const-string v3, "start_y"

    invoke-static {v0, v3, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 2124
    iget v1, p0, Lcom/faceunity/FURenderer$43;->val$endX:F

    float-to-double v1, v1

    const-string v3, "end_x"

    invoke-static {v0, v3, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 2125
    iget p0, p0, Lcom/faceunity/FURenderer$43;->val$endY:F

    float-to-double v1, p0

    const-string p0, "end_y"

    invoke-static {v0, p0, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    :cond_0
    return-void
.end method

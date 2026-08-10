.class Lcom/faceunity/FURenderer$44;
.super Ljava/lang/Object;
.source "FURenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/FURenderer;->setRunBgSegGreen(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/faceunity/FURenderer;

.field final synthetic val$run:Z


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer;Z)V
    .locals 0

    .line 2136
    iput-object p1, p0, Lcom/faceunity/FURenderer$44;->this$0:Lcom/faceunity/FURenderer;

    iput-boolean p2, p0, Lcom/faceunity/FURenderer$44;->val$run:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2139
    iget-object v0, p0, Lcom/faceunity/FURenderer$44;->this$0:Lcom/faceunity/FURenderer;

    iget-boolean v1, p0, Lcom/faceunity/FURenderer$44;->val$run:Z

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$3802(Lcom/faceunity/FURenderer;Z)Z

    .line 2140
    iget-object v0, p0, Lcom/faceunity/FURenderer$44;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    iget-boolean v1, p0, Lcom/faceunity/FURenderer$44;->val$run:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/faceunity/FURenderer$44;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {p0}, Lcom/faceunity/FURenderer;->access$3900(Lcom/faceunity/FURenderer;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v1, 0x1

    aput p0, v0, v1

    return-void
.end method

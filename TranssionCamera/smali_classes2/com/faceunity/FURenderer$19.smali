.class Lcom/faceunity/FURenderer$19;
.super Ljava/lang/Object;
.source "FURenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/FURenderer;->onEffectSelected(Lcom/faceunity/entity/Effect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/faceunity/FURenderer;


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer;)V
    .locals 0

    .line 1330
    iput-object p1, p0, Lcom/faceunity/FURenderer$19;->this$0:Lcom/faceunity/FURenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1333
    iget-object v0, p0, Lcom/faceunity/FURenderer$19;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$1600(Lcom/faceunity/FURenderer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1334
    iget-object v0, p0, Lcom/faceunity/FURenderer$19;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$1600(Lcom/faceunity/FURenderer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/faceunity/FURenderer$19;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$1600(Lcom/faceunity/FURenderer;)Landroid/os/Handler;

    move-result-object v2

    iget-object p0, p0, Lcom/faceunity/FURenderer$19;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {p0}, Lcom/faceunity/FURenderer;->access$1300(Lcom/faceunity/FURenderer;)Lcom/faceunity/entity/Effect;

    move-result-object p0

    invoke-static {v2, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

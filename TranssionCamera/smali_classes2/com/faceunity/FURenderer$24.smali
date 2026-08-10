.class Lcom/faceunity/FURenderer$24;
.super Ljava/lang/Object;
.source "FURenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/FURenderer;->onLightMakeupSelected(Lcom/faceunity/entity/LightMakeupItem;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/faceunity/FURenderer;

.field final synthetic val$makeupItem:Lcom/faceunity/entity/LightMakeupItem;


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer;Lcom/faceunity/entity/LightMakeupItem;)V
    .locals 0

    .line 1634
    iput-object p1, p0, Lcom/faceunity/FURenderer$24;->this$0:Lcom/faceunity/FURenderer;

    iput-object p2, p0, Lcom/faceunity/FURenderer$24;->val$makeupItem:Lcom/faceunity/entity/LightMakeupItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1637
    iget-object v0, p0, Lcom/faceunity/FURenderer$24;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$1600(Lcom/faceunity/FURenderer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/faceunity/FURenderer$24;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v1}, Lcom/faceunity/FURenderer;->access$1600(Lcom/faceunity/FURenderer;)Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/faceunity/FURenderer$24;->val$makeupItem:Lcom/faceunity/entity/LightMakeupItem;

    const/4 v2, 0x2

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

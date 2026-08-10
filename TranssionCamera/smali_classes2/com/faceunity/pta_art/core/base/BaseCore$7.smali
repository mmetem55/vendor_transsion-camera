.class Lcom/faceunity/pta_art/core/base/BaseCore$7;
.super Ljava/lang/Object;
.source "BaseCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/pta_art/core/base/BaseCore;->itemGetParam(Ljava/lang/String;)D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/faceunity/pta_art/core/base/BaseCore;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/faceunity/pta_art/core/base/BaseCore;Ljava/lang/String;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/faceunity/pta_art/core/base/BaseCore$7;->this$0:Lcom/faceunity/pta_art/core/base/BaseCore;

    iput-object p2, p0, Lcom/faceunity/pta_art/core/base/BaseCore$7;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 412
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore$7;->val$key:Ljava/lang/String;

    const-string v1, "controller_item_index"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore$7;->this$0:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {v0}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemsArray()[I

    move-result-object v2

    aget v1, v2, v1

    int-to-double v1, v1

    invoke-static {v0, v1, v2}, Lcom/faceunity/pta_art/core/base/BaseCore;->access$702(Lcom/faceunity/pta_art/core/base/BaseCore;D)D

    goto :goto_0

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore$7;->this$0:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {v0}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemsArray()[I

    move-result-object v2

    aget v1, v2, v1

    iget-object v2, p0, Lcom/faceunity/pta_art/core/base/BaseCore$7;->val$key:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemGetParam(ILjava/lang/String;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/faceunity/pta_art/core/base/BaseCore;->access$702(Lcom/faceunity/pta_art/core/base/BaseCore;D)D

    .line 417
    :goto_0
    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore$7;->this$0:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-static {p0}, Lcom/faceunity/pta_art/core/base/BaseCore;->access$800(Lcom/faceunity/pta_art/core/base/BaseCore;)Lcom/transsion/camera/utils/StateWait;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    return-void
.end method

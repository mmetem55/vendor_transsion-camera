.class Lcom/faceunity/pta_art/core/base/BasePTAHandle$1;
.super Lcom/faceunity/pta_art/core/base/Task;
.source "BasePTAHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/pta_art/core/base/BasePTAHandle;->setAvatarColor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/faceunity/pta_art/core/base/BasePTAHandle;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/faceunity/pta_art/core/base/BasePTAHandle;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle$1;->this$0:Lcom/faceunity/pta_art/core/base/BasePTAHandle;

    iput-object p3, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle$1;->val$list:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/faceunity/pta_art/core/base/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle$1;->val$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParams;

    .line 136
    iget-object v2, p0, Lcom/faceunity/pta_art/core/base/BasePTAHandle$1;->this$0:Lcom/faceunity/pta_art/core/base/BasePTAHandle;

    iget-object v2, v2, Lcom/faceunity/pta_art/core/base/BaseHandle;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {v2}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemsArray()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParams;->key:Ljava/lang/String;

    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParams;->values:[D

    invoke-static {v2, v3, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;[D)I

    goto :goto_0

    :cond_0
    return-void
.end method

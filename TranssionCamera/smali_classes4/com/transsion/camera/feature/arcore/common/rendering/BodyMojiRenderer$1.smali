.class Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer$1;
.super Lcom/faceunity/pta_art/core/base/Task;
.source "BodyMojiRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer;->entryBodyMojiParam()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer;Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer$1;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer;

    invoke-direct {p0, p2}, Lcom/faceunity/pta_art/core/base/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    const-string v2, "close_face_capture"

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    .line 49
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer$1;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer;

    iget-object v2, v2, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {v2}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemsArray()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;->key:Ljava/lang/String;

    iget-wide v4, v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;->value:D

    invoke-static {v2, v3, v4, v5}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    goto :goto_0

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer$1;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer;->access$000(Lcom/transsion/camera/feature/arcore/common/rendering/BodyMojiRenderer;)D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/faceunity/pta_art/core/base/BaseCore;->resetForBodyMoji(ZD)V

    return-void
.end method

.class Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$8;
.super Lcom/faceunity/pta_art/core/base/Task;
.source "ARCoreRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->onDrawFrameARCore(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;Ljava/lang/String;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$8;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

    invoke-direct {p0, p2}, Lcom/faceunity/pta_art/core/base/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 506
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$8;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {v0}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemsArray()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$8;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

    invoke-static {v2}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->access$900(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)[F

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->getFromFloat([F)[D

    move-result-object v2

    const-string v3, "mat_model_override"

    invoke-static {v0, v3, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;[D)I

    .line 507
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$8;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {v0}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemsArray()[I

    move-result-object v0

    aget v0, v0, v1

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$8;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

    invoke-static {v2}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->access$1000(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)[F

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->getFromFloat([F)[D

    move-result-object v2

    const-string v3, "mat_view_override"

    invoke-static {v0, v3, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;[D)I

    .line 508
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$8;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {v0}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemsArray()[I

    move-result-object v0

    aget v0, v0, v1

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$8;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->access$1100(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)[F

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->getFromFloat([F)[D

    move-result-object p0

    const-string v1, "mat_proj_override"

    invoke-static {v0, v1, p0}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;[D)I

    return-void
.end method

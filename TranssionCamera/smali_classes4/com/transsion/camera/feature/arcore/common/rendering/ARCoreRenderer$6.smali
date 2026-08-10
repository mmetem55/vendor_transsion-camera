.class Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$6;
.super Ljava/lang/Object;
.source "ARCoreRenderer.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$6;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActive()V
    .locals 2

    .line 271
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "lily onActive"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 272
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$6;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->access$700(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)V

    return-void
.end method

.method public onClosed()V
    .locals 0

    return-void
.end method

.method public onConfigured()V
    .locals 2

    .line 260
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "lily onConfigured"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 261
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$6;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->access$600(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)V

    return-void
.end method

.method public onReady()V
    .locals 0

    return-void
.end method

.class Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3;
.super Ljava/lang/Object;
.source "ARCoreRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->takePicture(Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;Landroid/os/Handler;Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3;->val$listener:Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->getFBOId()I

    move-result v0

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->access$100(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;Z)V

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->access$200(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

    invoke-static {v3}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->access$300(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->createBitmapFromFBO(IIII)[I

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3$1;

    invoke-direct {v2, p0, v0}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3$1;-><init>(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3;[I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

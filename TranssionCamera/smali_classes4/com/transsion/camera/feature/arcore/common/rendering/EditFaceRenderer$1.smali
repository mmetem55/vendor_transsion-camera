.class Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer$1;
.super Ljava/lang/Object;
.source "EditFaceRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->takePicture(Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;Landroid/os/Handler;Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer$1;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer$1;->val$listener:Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 46
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer$1;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->getFBOId()I

    move-result v0

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v0, 0x3f6ac083    # 0.917f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 47
    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    .line 48
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 49
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer$1;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->access$000(Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;)I

    move-result v5

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer$1;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->access$100(Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;)I

    move-result v6

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->onDrawFrame([BIIIII[F)I

    .line 50
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer$1;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->access$000(Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer$1;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;

    invoke-static {v2}, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->access$100(Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->createBitmapFromFBO(IIII)[I

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer$1;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer$1$1;

    invoke-direct {v2, p0, v0}, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer$1$1;-><init>(Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer$1;[I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

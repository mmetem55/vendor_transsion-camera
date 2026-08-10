.class Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$5;
.super Ljava/lang/Object;
.source "CameraRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->snapSurface(II)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;II)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$5;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;

    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$5;->val$width:I

    iput p3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$5;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 369
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$5;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->getFBOId()I

    move-result v0

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 370
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$5;->val$width:I

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$5;->val$height:I

    const/4 v3, 0x0

    invoke-static {v3, v3, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$5;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$5;->val$width:I

    iget v4, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$5;->val$height:I

    invoke-static {v0, v2, v4}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->access$500(Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;II)[I

    move-result-object v0

    .line 372
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 373
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$5;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$5;->val$width:I

    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$5;->val$height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mSurfaceBitmap:Landroid/graphics/Bitmap;

    .line 374
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$5;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    return-void
.end method

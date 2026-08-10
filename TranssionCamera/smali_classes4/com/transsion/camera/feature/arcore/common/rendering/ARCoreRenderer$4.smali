.class Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$4;
.super Ljava/lang/Object;
.source "ARCoreRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->snapSurface(II)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;II)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$4;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$4;->val$width:I

    iput p3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$4;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$4;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->getFBOId()I

    move-result v0

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 216
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$4;->val$width:I

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$4;->val$height:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$4;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

    invoke-static {v0, v2}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->access$100(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;Z)V

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$4;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$4;->val$width:I

    invoke-virtual {v0, v2, v2, v1, v1}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->createBitmapFromFBO(IIII)[I

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$4;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$4;->val$width:I

    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$4;->val$height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mSurfaceBitmap:Landroid/graphics/Bitmap;

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$4;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    return-void
.end method

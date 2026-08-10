.class Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$4;
.super Ljava/lang/Object;
.source "CameraRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->takePicture(Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;Landroid/os/Handler;Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$4;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$4;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$4;->val$listener:Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 344
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    const-string v3, "handleTakePicture begin"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 345
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$4;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->getFBOId()I

    move-result v2

    const v3, 0x8d40

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 346
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$4;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;

    iget v4, v2, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mSurfaceTextureHeight:I

    iget v5, v2, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mSurfaceTextureWidth:I

    invoke-static {v2, v4, v5}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->access$500(Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;II)[I

    move-result-object v2

    const/4 v4, 0x0

    .line 347
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 348
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$4;->val$handler:Landroid/os/Handler;

    new-instance v4, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$4$1;

    invoke-direct {v4, p0, v2}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$4$1;-><init>(Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$4;[I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 354
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTakePicture end cost = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

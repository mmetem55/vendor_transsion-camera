.class Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$4$1;
.super Ljava/lang/Object;
.source "CameraRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$4;

.field final synthetic val$bitmap:[I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$4;[I)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$4$1;->this$1:Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$4;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$4$1;->val$bitmap:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$4$1;->this$1:Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$4;

    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$4;->val$listener:Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$4$1;->val$bitmap:[I

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$4;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;

    iget v2, v0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mSurfaceTextureHeight:I

    iget v0, v0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mSurfaceTextureWidth:I

    invoke-interface {v1, p0, v2, v0}, Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;->onPixelReadFinished([III)V

    return-void
.end method

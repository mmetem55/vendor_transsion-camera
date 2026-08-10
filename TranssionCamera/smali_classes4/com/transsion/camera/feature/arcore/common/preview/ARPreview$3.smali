.class Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$3;
.super Ljava/lang/Object;
.source "ARPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->onSurfaceDestroyCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$3;->this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$3;->this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->mIGLSurfaceStateCallback:Lcom/transsion/camera/feature/arcore/common/preview/IGLSurfaceStateCallback;

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/preview/IGLSurfaceStateCallback;->onSurfaceDestroyed()V

    return-void
.end method

.class Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3$1;
.super Ljava/lang/Object;
.source "ARCoreRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3;

.field final synthetic val$rgba:[I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3;[I)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3$1;->this$1:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3$1;->val$rgba:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3$1;->this$1:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3;

    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3;->val$listener:Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3$1;->val$rgba:[I

    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->access$200(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3$1;->this$1:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->access$300(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)I

    move-result p0

    invoke-interface {v1, v2, v0, p0}, Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;->onPixelReadFinished([III)V

    return-void
.end method

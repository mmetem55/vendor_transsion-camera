.class Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$1;
.super Ljava/lang/Object;
.source "CameraRenderer.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$1;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onOpened(Ljava/lang/String;)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$1;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->access$000(Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;)V

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$1;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->access$100(Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

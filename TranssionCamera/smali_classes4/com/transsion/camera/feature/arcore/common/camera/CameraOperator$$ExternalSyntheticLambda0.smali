.class public final synthetic Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

.field public final synthetic f$1:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$3:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;

    iput-object p3, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->$r8$lambda$ULyvngeDFy8i7tU1tc_fNzvN5HA(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

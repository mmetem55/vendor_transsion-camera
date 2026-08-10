.class Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1$1;
.super Ljava/lang/Object;
.source "CameraOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->onError(Landroid/hardware/camera2/CameraDevice;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1$1;->this$1:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1$1;->this$1:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$1000(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$1300(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;)V

    return-void
.end method

.class Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$5;
.super Ljava/lang/Object;
.source "CameraOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->doOpenCamera(Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

.field final synthetic val$cameraInfo:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$5;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$5;->val$cameraInfo:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$5;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$5;->val$cameraInfo:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$1300(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;)V

    return-void
.end method

.class Lcom/transsion/camera/feature/common/CameraHingeStateManager$1;
.super Ljava/lang/Object;
.source "CameraHingeStateManager.java"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/common/CameraHingeStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/common/CameraHingeStateManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/common/CameraHingeStateManager;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/transsion/camera/feature/common/CameraHingeStateManager$1;->this$0:Lcom/transsion/camera/feature/common/CameraHingeStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 3

    .line 77
    invoke-static {}, Lcom/transsion/camera/feature/common/CameraHingeStateManager;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FoldUIForm]system DeviceStateCallback onStateChanged, state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/feature/common/CameraHingeStateManager$1;->this$0:Lcom/transsion/camera/feature/common/CameraHingeStateManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/common/CameraHingeStateManager;->access$100(Lcom/transsion/camera/feature/common/CameraHingeStateManager;)Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager$DeviceStateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/feature/common/CameraHingeStateManager$1;->this$0:Lcom/transsion/camera/feature/common/CameraHingeStateManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/common/CameraHingeStateManager;->access$100(Lcom/transsion/camera/feature/common/CameraHingeStateManager;)Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager$DeviceStateCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractHingeStateManager$DeviceStateCallback;->onStateChanged(I)V

    :cond_0
    return-void
.end method

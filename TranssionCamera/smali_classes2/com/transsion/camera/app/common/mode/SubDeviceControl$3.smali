.class Lcom/transsion/camera/app/common/mode/SubDeviceControl$3;
.super Ljava/lang/Object;
.source "SubDeviceControl.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/SubDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)V
    .locals 0

    .line 1505
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstSteadyFrame(Ljava/lang/String;)V
    .locals 2

    .line 1508
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2102(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Z)Z

    .line 1511
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1512
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$3;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;->notifyFirstSteadyFrame(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

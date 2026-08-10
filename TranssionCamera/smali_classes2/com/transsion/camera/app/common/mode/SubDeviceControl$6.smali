.class Lcom/transsion/camera/app/common/mode/SubDeviceControl$6;
.super Ljava/lang/Object;
.source "SubDeviceControl.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;


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

    .line 1560
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$6;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutterStarted(Ljava/lang/String;Z)V
    .locals 0

    .line 1567
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$6;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "[CapturePerformance] Continuous onShutterStarted in device controller."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1568
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$6;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onContinueShutterStart()V

    return-void
.end method

.method public onThumbNailTypeConfirmed(I[I)V
    .locals 0

    return-void
.end method

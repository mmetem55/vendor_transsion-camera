.class Lcom/transsion/camera/app/common/mode/SubDeviceControl$4;
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

    .line 1517
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$4;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutterStarted(Ljava/lang/String;Z)V
    .locals 0

    .line 1525
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$4;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onShutterStart(Z)V

    return-void
.end method

.method public onThumbNailTypeConfirmed(I[I)V
    .locals 0

    .line 1520
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$4;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$2000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onThumbNailTypeConfirmed(I[I)V

    return-void
.end method

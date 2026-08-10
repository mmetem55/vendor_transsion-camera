.class Lcom/transsion/camera/app/common/mode/CameraDeviceControl$1;
.super Ljava/lang/Object;
.source "CameraDeviceControl.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 0

    .line 1538
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$1;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IsCanRetryOpenCamera()Z
    .locals 1

    .line 1562
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$1;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4200(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$1;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$300(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getActionSoundInfo()Lcom/transsion/camera/utils/sound/IActionSound;
    .locals 0

    .line 1542
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$1;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getActionSound()Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object p0

    return-object p0
.end method

.method public getOrientationInfo(Ljava/lang/String;)I
    .locals 1

    .line 1547
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$1;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getOrientation()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOrientation(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getPreviewSurfaceType()I
    .locals 0

    .line 1557
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$1;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4000(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewSurfaceType()I

    move-result p0

    return p0
.end method

.method public getVideoOrientationInfo(Ljava/lang/String;)I
    .locals 1

    .line 1552
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$1;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->access$4100(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->getVideoRecodingOrientation()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOrientation(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

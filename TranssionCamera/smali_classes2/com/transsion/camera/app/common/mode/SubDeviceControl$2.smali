.class Lcom/transsion/camera/app/common/mode/SubDeviceControl$2;
.super Ljava/lang/Object;
.source "SubDeviceControl.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;


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

    .line 1494
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreview(Ljava/lang/String;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 1498
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$200(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->previewStarted()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p1, p2, :cond_1

    .line 1500
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$2;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x66

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method

.class Lcom/transsion/camera/app/common/mode/SubDeviceControl$1;
.super Lcom/transsion/camera/adapter/CameraAgent$Customer;
.source "SubDeviceControl.java"


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
.method constructor <init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;J)V
    .locals 0

    .line 552
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$1;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/adapter/CameraAgent$Customer;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onDeviceClosed(Ljava/lang/String;)V
    .locals 3

    .line 562
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$1;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDeviceClosed] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 563
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$1;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$200(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$1;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$300(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$1;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$400(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 564
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$1;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$300(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->enter()V

    :cond_0
    return-void
.end method

.method public onDeviceDisconnected(Ljava/lang/String;)V
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$1;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 571
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$1;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;->notifyDeviceDisconnected(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDeviceError(Ljava/lang/String;I)V
    .locals 1

    .line 577
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$1;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 578
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x65

    .line 579
    iput v0, p1, Landroid/os/Message;->what:I

    .line 580
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 581
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$1;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onDeviceOpened(Lcom/transsion/camera/adapter/CameraProxy;Ljava/lang/String;)V
    .locals 0

    .line 555
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$1;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 556
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$1;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/os/Handler;

    move-result-object p0

    const/16 p2, 0x64

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

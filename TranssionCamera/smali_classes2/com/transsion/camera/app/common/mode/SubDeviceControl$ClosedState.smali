.class final Lcom/transsion/camera/app/common/mode/SubDeviceControl$ClosedState;
.super Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;
.source "SubDeviceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/SubDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClosedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V
    .locals 0

    .line 866
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$ClosedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 867
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method closeCamera()V
    .locals 1

    .line 889
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$ClosedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "ClosedState ---> closeCamera wrong status"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method openCamera(Ljava/lang/String;)V
    .locals 2

    .line 872
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$ClosedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1102(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)Ljava/lang/String;

    .line 875
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$ClosedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 876
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$ClosedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$ClosedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$ClosedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1200(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraAgent$Customer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/adapter/CameraAgent;->openCamera(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    .line 877
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$ClosedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1400(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->enter()V

    goto :goto_0

    .line 879
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$ClosedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "openCamera mCameraAgent is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method releaseCamera()V
    .locals 0

    return-void
.end method

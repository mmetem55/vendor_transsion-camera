.class final Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;
.super Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;
.source "SubDeviceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/SubDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OpeningState"
.end annotation


# instance fields
.field private mRetryCount:I

.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V
    .locals 0

    .line 898
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 899
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 894
    iput p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->mRetryCount:I

    return-void
.end method

.method private needRetryOpenCamera()Z
    .locals 3

    .line 954
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1700(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1700(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;->IsCanRetryOpenCamera()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 957
    :cond_0
    iget v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->mRetryCount:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 958
    iput v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->mRetryCount:I

    return v1

    .line 961
    :cond_1
    iput v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->mRetryCount:I

    return v1
.end method

.method private retryOpenCamera()V
    .locals 3

    .line 966
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "retryOpenCamera+"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v0, 0xc8

    .line 968
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 970
    :catch_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Do not sleep 200 ms."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 972
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1000(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1200(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraAgent$Customer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/adapter/CameraAgent;->openCamera(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    .line 975
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "retryOpenCamera-"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onCameraError(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    .line 943
    iput v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->mRetryCount:I

    .line 944
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$902(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Lcom/transsion/camera/adapter/CameraProxy;)Lcom/transsion/camera/adapter/CameraProxy;

    .line 945
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$300(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->enter()V

    .line 946
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 947
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;->notifyDeviceError(Ljava/lang/String;I)V

    goto :goto_0

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onCameraError, camera id is unknow."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 935
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 936
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;->notifyDeviceError(Ljava/lang/String;I)V

    goto :goto_0

    .line 925
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->needRetryOpenCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 926
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->retryOpenCamera()V

    goto :goto_0

    .line 929
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 930
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;->notifyDeviceError(Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method onCameraOpened(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 3

    const/4 v0, 0x0

    .line 904
    iput v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->mRetryCount:I

    .line 905
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "handle camera opened msg, but camera proxy has released"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraOpened, cur id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1100(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 913
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$902(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Lcom/transsion/camera/adapter/CameraProxy;)Lcom/transsion/camera/adapter/CameraProxy;

    .line 914
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1500(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->dirty()V

    .line 915
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$1600(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->enter()V

    .line 916
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->access$200(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->cameraOpened()V

    return-void
.end method

.class Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;
.super Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;
.source "CameraAgent2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraAgent2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Camera2ProxyCreatorImpl"
.end annotation


# instance fields
.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

.field private mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

.field private mDeviceInfoError:Z

.field private final mRequestTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private final mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final mStateWait:Lcom/transsion/camera/utils/StateWait;

.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/adapter/CameraAgent2Impl;Ljava/lang/String;)V
    .locals 2

    .line 160
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;-><init>(Lcom/transsion/camera/adapter/CameraAgent;Ljava/lang/String;)V

    .line 156
    new-instance p1, Lcom/transsion/camera/utils/StateWait;

    invoke-direct {p1}, Lcom/transsion/camera/utils/StateWait;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    const/4 p1, 0x0

    .line 157
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mDeviceInfoError:Z

    .line 295
    new-instance p1, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;-><init>(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)V

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 162
    new-instance p1, Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraAPI2_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mRequestTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Lcom/transsion/camera/adapter/CameraProxy2Impl;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy2Impl;
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Z)Z
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mDeviceInfoError:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Lcom/transsion/camera/utils/StateWait;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->doCloseCurrent()V

    return-void
.end method

.method static synthetic access$1600(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Lcom/transsion/camera/adapter/CameraAgent$Customer;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic access$902(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method private doCloseCurrent()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-boolean v1, v0, Lcom/transsion/camera/adapter/CameraAgent;->mOpenDoubleDevice:Z

    if-eqz v1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->doCloseCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->doCloseCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method doCloseCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .locals 7

    .line 265
    const-class v0, Lcom/transsion/camera/adapter/CameraAgent;

    monitor-enter v0

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$102(Lcom/transsion/camera/adapter/CameraAgent2Impl;Lcom/transsion/camera/adapter/CameraAgent$Customer;)Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 267
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-boolean v3, v1, Lcom/transsion/camera/adapter/CameraAgent;->mOpenDoubleDevice:Z

    if-nez v3, :cond_0

    iget-object v1, v1, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    if-eq v1, p1, :cond_0

    .line 269
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "doCloseCamera only the user can close"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 270
    monitor-exit v0

    return-void

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    if-eqz p1, :cond_1

    .line 275
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->release()V

    .line 276
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    .line 278
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mRequestTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doCloseCamera] device close start, mCameraId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 279
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 280
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz p1, :cond_2

    .line 281
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 282
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 283
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iput-object v2, p1, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 285
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 286
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mRequestTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doCloseCamera] device close end, process time = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 288
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    if-eqz p1, :cond_3

    .line 289
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/transsion/camera/adapter/CameraAgent$DeviceStateCallback;->onDeviceClosed(Ljava/lang/String;)V

    .line 290
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 292
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method doOpenCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 172
    const-class v0, Lcom/transsion/camera/adapter/CameraAgent;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-boolean v2, v1, Lcom/transsion/camera/adapter/CameraAgent;->mOpenDoubleDevice:Z

    if-nez v2, :cond_0

    iget-object v1, v1, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->isPriority(Lcom/transsion/camera/adapter/CameraAgent$Customer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentUser.isPriority(user), mCurrentUser Priority:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->getDynamicPriority()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", open user Priority:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->getDynamicPriority()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 174
    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->getCameraId()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x6

    invoke-interface {p1, p0, v1}, Lcom/transsion/camera/adapter/CameraAgent$DeviceStateCallback;->onDeviceError(Ljava/lang/String;I)V

    .line 177
    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "doOpenCamera"

    .line 180
    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 181
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->doCloseCurrent()V

    .line 182
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 184
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$600(Lcom/transsion/camera/adapter/CameraAgent2Impl;Ljava/lang/String;)Z

    move-result v1

    .line 185
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doOpenCamera checkCameraAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v1, p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$102(Lcom/transsion/camera/adapter/CameraAgent2Impl;Lcom/transsion/camera/adapter/CameraAgent$Customer;)Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 188
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$100(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraAgent$Customer;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->setCameraId(Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$400(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$300(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$400(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$300(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 191
    monitor-exit v0

    return-void

    .line 194
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/16 v1, 0x9

    if-nez p1, :cond_2

    .line 195
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v2, "mCameraProxy == null"

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :try_start_1
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p1}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 198
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v2, "doOpenCamera"

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$700(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Landroid/hardware/camera2/CameraManager;

    move-result-object p1

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object v4, v4, Lcom/transsion/camera/adapter/CameraAgent;->mResponseHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 202
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v2, "doOpenCamera waitState."

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 203
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mStateWait:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p1}, Lcom/transsion/camera/utils/StateWait;->waitState()V

    .line 204
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v2, "doOpenCamera waitState done."

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 210
    :try_start_2
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mRequestTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[openCamera] error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 211
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$800(I)I

    move-result v3

    invoke-interface {p1, v2, v3}, Lcom/transsion/camera/adapter/CameraAgent$DeviceStateCallback;->onDeviceError(Ljava/lang/String;I)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 208
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 206
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mRequestTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[openCamera] error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 214
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mDeviceInfoError:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 215
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mDeviceInfoError:Z

    .line 216
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    if-eqz p1, :cond_3

    .line 217
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    iput-object p0, p1, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 218
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->getCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Lcom/transsion/camera/adapter/CameraAgent$DeviceStateCallback;->onDeviceError(Ljava/lang/String;I)V

    .line 220
    :cond_3
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 221
    monitor-exit v0

    return-void

    .line 224
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    if-eqz p1, :cond_5

    .line 225
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/transsion/camera/adapter/CameraAgent$DeviceStateCallback;->onDeviceOpened(Lcom/transsion/camera/adapter/CameraProxy;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v1, " mCurrentUser. update"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    iput-object p0, p1, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 229
    :cond_5
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 230
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method doReleaseCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .locals 4

    .line 235
    const-class v0, Lcom/transsion/camera/adapter/CameraAgent;

    monitor-enter v0

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$102(Lcom/transsion/camera/adapter/CameraAgent2Impl;Lcom/transsion/camera/adapter/CameraAgent$Customer;)Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 237
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-boolean v3, v1, Lcom/transsion/camera/adapter/CameraAgent;->mOpenDoubleDevice:Z

    if-nez v3, :cond_0

    iget-object v1, v1, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    if-eq v1, p1, :cond_0

    .line 239
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "doReleaseCamera only the user can close"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 240
    monitor-exit v0

    return-void

    .line 242
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mRequestTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doReleaseCamera, mCameraId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 243
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    if-eqz p1, :cond_1

    .line 244
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->release()V

    .line 245
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    .line 247
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

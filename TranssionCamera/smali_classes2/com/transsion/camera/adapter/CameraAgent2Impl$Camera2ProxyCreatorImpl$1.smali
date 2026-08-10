.class Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CameraAgent2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    .line 336
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClosed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v1, v0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object v1, v1, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 338
    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$900(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$900(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-ne v0, p1, :cond_1

    if-eqz v1, :cond_0

    .line 341
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/transsion/camera/adapter/CameraAgent$DeviceStateCallback;->onDeviceClosed(Ljava/lang/String;)V

    .line 343
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$902(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$1002(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy2Impl;

    :cond_1
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .line 350
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onDisconnected"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v1, v0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object v1, v1, Lcom/transsion/camera/adapter/CameraAgent;->mCurrentUser:Lcom/transsion/camera/adapter/CameraAgent$Customer;

    .line 352
    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$900(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$900(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-ne v0, p1, :cond_1

    if-eqz v1, :cond_0

    .line 355
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/transsion/camera/adapter/CameraAgent$DeviceStateCallback;->onDeviceDisconnected(Ljava/lang/String;)V

    .line 357
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$902(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 358
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$1500(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)V

    :cond_1
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3

    .line 364
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$1400(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Lcom/transsion/camera/utils/StateWait;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    .line 367
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$1600(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Lcom/transsion/camera/adapter/CameraAgent$Customer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$800(I)I

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/adapter/CameraAgent$DeviceStateCallback;->onDeviceError(Ljava/lang/String;I)V

    .line 371
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$902(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 372
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {p1, p2}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$1002(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy2Impl;

    .line 373
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$1500(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 6

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$900(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {v0, p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$902(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    const/4 v0, 0x1

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$900(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CameraDevice;->setCameraAudioRestriction(I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 305
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 307
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    new-instance v2, Lcom/transsion/camera/adapter/CameraProxy2Impl;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v4, v3, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    iget-object v3, v3, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-object v5, v3, Lcom/transsion/camera/adapter/CameraAgent;->mRequestHandler:Landroid/os/Handler;

    iget-object v3, v3, Lcom/transsion/camera/adapter/CameraAgent;->mResponseHandler:Landroid/os/Handler;

    invoke-direct {v2, v4, p1, v5, v3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-static {v1, v2}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$1002(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy2Impl;

    .line 309
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onOpened] mCameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v2, v2, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCameraProxy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {v2}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$1000(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Lcom/transsion/camera/adapter/CameraProxy2Impl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TranMemoryFlow] available memory when opened :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailMemory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 311
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$1100(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 312
    :try_start_1
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v1, v1, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$1200(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 314
    :try_start_2
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v1, v1, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$1100(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    .line 316
    :try_start_3
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onOpened] error Msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 319
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v1, v1, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$1200(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v2, v2, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 320
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onOpened] props:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 321
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v2, v2, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v2}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$1200(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v3, v3, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getPlatformCamera(Ljava/lang/String;)Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    move-result-object v2

    .line 322
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v3, v3, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v3}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$1200(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    iget-object v4, v4, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object v3

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$1000(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Lcom/transsion/camera/adapter/CameraProxy2Impl;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->init(Landroid/hardware/camera2/CameraCharacteristics;Lcom/transsion/camera/adapter/CameraCapabilities2Impl;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    goto :goto_2

    .line 326
    :cond_1
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    const-string v2, "[onOpened] CameraDeviceInfo is error."

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {v1, v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$1302(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;Z)Z

    .line 329
    :goto_2
    monitor-exit p1

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    .line 331
    :cond_2
    :goto_3
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl$1;->this$1:Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;->access$1400(Lcom/transsion/camera/adapter/CameraAgent2Impl$Camera2ProxyCreatorImpl;)Lcom/transsion/camera/utils/StateWait;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    return-void
.end method

.class Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CameraOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    .line 180
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera device ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$600(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$600(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceStateListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceStateListener;->onClosed(Ljava/lang/String;)V

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$300(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 186
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$402(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;I)I

    .line 187
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$900(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 188
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$300(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$102(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    .line 195
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera device ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " disconnected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$600(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$600(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceStateListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceStateListener;->onError(Ljava/lang/String;I)V

    .line 199
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 200
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$102(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 4

    .line 205
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera device ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", error  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mReopenCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    .line 207
    invoke-static {v3}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$200(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mCurrCameraDeviceInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {v3}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$1000(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$102(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 210
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$300(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 211
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$402(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;I)I

    .line 214
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$1100(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)V

    .line 215
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$300(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 217
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$1000(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p0, v0, p2}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$1200(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Ljava/lang/String;I)V

    return-void

    .line 221
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$200(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)I

    move-result p1

    const/4 v2, 0x3

    if-lt p1, v2, :cond_1

    .line 222
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p1, v0, p2}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$1200(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Ljava/lang/String;I)V

    .line 223
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$202(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;I)I

    return-void

    .line 226
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$1400(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1$1;-><init>(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;)V

    invoke-interface {p1, p2}, Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;->queueEvent(Ljava/lang/Runnable;)V

    .line 232
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$208(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)I

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    .line 161
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera device ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " opened."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {v1, p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$102(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 164
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$202(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;I)I

    .line 165
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$300(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 166
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$402(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;I)I

    .line 167
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$500(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 168
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$300(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 169
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$600(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceStateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 170
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$600(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceStateListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceStateListener;->onOpened(Ljava/lang/String;)V

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$700(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 173
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$700(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    .line 174
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$800(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->setFacing(I)V

    :cond_1
    return-void
.end method

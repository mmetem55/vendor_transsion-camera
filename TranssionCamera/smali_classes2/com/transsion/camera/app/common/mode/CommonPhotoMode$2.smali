.class Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;
.super Ljava/lang/Object;
.source "CommonPhotoMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->checkCaptureResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)V
    .locals 0

    .line 1058
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1061
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$200(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$200(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$200(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1067
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$200(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1068
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v2, v2, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkCaptureResult] mCapturingNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; mShot2ShotLeftNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    .line 1069
    invoke-static {v4}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$100(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , mResumed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v4}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$900(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1068
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v0, :cond_3

    .line 1071
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[checkCaptureResult] all of the captures were finished, all ui can be enable"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1072
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$1000(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Lcom/transsion/camera/app/common/IApp$ModeBgCaptureListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$900(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1073
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$1000(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Lcom/transsion/camera/app/common/IApp$ModeBgCaptureListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IApp$ModeBgCaptureListener;->onBgCaptureDone()V

    .line 1075
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isTpPictureToVideoSupport()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1076
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0xe

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1078
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string v2, "capture_state"

    const-string v3, "capture_end"

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1079
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$100(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    .line 1081
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$100(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_5

    .line 1082
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[checkCaptureResult] all of shot2shot callback were finished. enable shutter "

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1083
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x1e

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1084
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-boolean v2, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mPhotosSupportProcessingApi:Z

    if-eqz v2, :cond_4

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$500(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$600(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)I

    move-result v1

    if-eqz v1, :cond_4

    .line 1085
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x97

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1088
    :cond_4
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v2, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v2, :cond_5

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$700(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)I

    move-result v1

    if-gt v0, v1, :cond_5

    .line 1089
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isTpPictureToVideoSupport()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1090
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$2;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x9c

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_5
    :goto_1
    return-void
.end method

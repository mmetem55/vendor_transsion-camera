.class Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;
.super Ljava/lang/Object;
.source "CommonPhotoMode.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
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

    .line 170
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNextReady()V
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$000(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$100(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$200(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 176
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QuickCapture][CapturePerformance] onNextReady mCapturingNumber.get() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v2, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$300(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)I

    move-result v1

    if-gt v0, v1, :cond_1

    if-lez v0, :cond_1

    .line 178
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "It\'s a project under 4G,force close shot 2 shot in monkey scenarios."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isTpPictureToVideoSupport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x1e

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 184
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-boolean v2, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mPhotosSupportProcessingApi:Z

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$500(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$600(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x97

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v2, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$700(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)I

    move-result v1

    if-gt v0, v1, :cond_3

    if-lez v0, :cond_3

    .line 191
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "It\'s a project under 4G,force close continuous in monkey scenarios."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isTpPictureToVideoSupport()Z

    move-result v0

    if-nez v0, :cond_3

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$1;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x9c

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_3
    return-void
.end method

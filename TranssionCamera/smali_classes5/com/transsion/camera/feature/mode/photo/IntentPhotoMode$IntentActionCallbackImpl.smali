.class Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;
.super Ljava/lang/Object;
.source "IntentPhotoMode.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IIntentReviewUI$IActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentActionCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$1;)V
    .locals 0

    .line 377
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;-><init>(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 3

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$1200(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/ui/IIntentReviewUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->hideReviewView()Z

    .line 383
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$1300(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mKeyFlashValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$1400(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$1400(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$1500(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "Battery"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result v0

    .line 386
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$1600(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v1

    const-string v2, "Temperature"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$1400(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$1700(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;Ljava/lang/String;Z)V

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$1402(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;Ljava/lang/String;)Ljava/lang/String;

    .line 393
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$1800(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0x85

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 394
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$1900(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 395
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$2000(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "capture_state"

    const-string v1, "capture_end"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onConfirmed()V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$1200(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/ui/IIntentReviewUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->updateReviewViewState(Z)V

    .line 401
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$2100(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)V

    return-void
.end method

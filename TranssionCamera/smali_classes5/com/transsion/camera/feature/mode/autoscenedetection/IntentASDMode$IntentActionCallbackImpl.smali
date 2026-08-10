.class Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$IntentActionCallbackImpl;
.super Ljava/lang/Object;
.source "IntentASDMode.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IIntentReviewUI$IActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentActionCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$1;)V
    .locals 0

    .line 266
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$IntentActionCallbackImpl;-><init>(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->access$1400(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/app/ui/IIntentReviewUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->hideReviewView()Z

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->access$1500(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->access$1600(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "capture_state"

    const-string v1, "capture_end"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onConfirmed()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->access$1400(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/app/ui/IIntentReviewUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->updateReviewViewState(Z)V

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->access$1700(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)V

    return-void
.end method

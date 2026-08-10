.class Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;
.super Ljava/lang/Object;
.source "IntentVideoMode.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IIntentReviewUI$IActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/IntentVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentActionCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/video/IntentVideoMode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/video/IntentVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;Lcom/transsion/camera/feature/mode/video/IntentVideoMode$1;)V
    .locals 0

    .line 354
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;-><init>(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/video/IntentVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->access$100(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)Lcom/transsion/camera/app/ui/IIntentReviewUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IIntentReviewUI;->hideReviewView()Z

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/video/IntentVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->access$200(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/video/IntentVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->access$300(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/video/IntentVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->access$400(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0x86

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/video/IntentVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->access$500(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/video/IntentVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->access$600(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "Battery"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result v0

    .line 364
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/video/IntentVideoMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->access$700(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v1

    const-string v2, "Temperature"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryExtStatus(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/video/IntentVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->access$500(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->access$800(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;Ljava/lang/String;)V

    .line 369
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/video/IntentVideoMode;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->access$502(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public onConfirmed()V
    .locals 0

    .line 375
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$IntentActionCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/video/IntentVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/IntentVideoMode;->access$900(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)V

    return-void
.end method

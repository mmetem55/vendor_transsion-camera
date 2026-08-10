.class Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;
.super Ljava/lang/Object;
.source "AnimalEyeDetectionUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EyeResultCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$1;)V
    .locals 0

    .line 215
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .locals 2

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 231
    :pswitch_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->access$500(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;)Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;

    move-result-object p0

    const/16 p1, 0x66

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 228
    :pswitch_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->access$500(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;)Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;

    move-result-object p0

    const/16 p1, 0x65

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 220
    :pswitch_2
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->access$500(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;)Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;

    move-result-object p2

    const/16 v1, 0x64

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 221
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->access$600(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->access$500(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;)Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 224
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->access$500(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;)Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

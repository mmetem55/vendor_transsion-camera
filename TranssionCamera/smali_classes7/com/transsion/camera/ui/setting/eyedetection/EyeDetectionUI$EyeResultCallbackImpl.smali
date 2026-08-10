.class Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;
.super Ljava/lang/Object;
.source "EyeDetectionUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EyeResultCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$1;)V
    .locals 0

    .line 204
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x65

    const/16 v2, 0x66

    if-eq p2, v1, :cond_1

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->access$600(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->access$600(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 209
    :cond_1
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->access$500(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 210
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->access$600(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->access$600(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 213
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->access$600(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$EyeResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->access$600(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

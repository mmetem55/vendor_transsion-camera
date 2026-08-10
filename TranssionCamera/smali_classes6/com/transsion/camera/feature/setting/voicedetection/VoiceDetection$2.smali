.class Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;
.super Ljava/lang/Object;
.source "VoiceDetection.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 3

    .line 290
    sget-object v0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$300(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$400(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$500(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$200(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetectionParametersConfigure;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$200(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetectionParametersConfigure;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetectionParametersConfigure;->sendSettingChangeRequest()V

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$100(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$100(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$100(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Landroid/os/Handler;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$100(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 303
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$100(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Landroid/os/Handler;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$100(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 306
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$100(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$200(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetectionParametersConfigure;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$200(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetectionParametersConfigure;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetectionParametersConfigure;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method

.class Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$3;
.super Ljava/lang/Object;
.source "VoiceDetection.java"

# interfaces
.implements Lcom/transsion/voicecamera/sdk/TVCResultListener;


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

    .line 439
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2

    .line 447
    sget-object p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onExit()V
    .locals 1

    .line 469
    sget-object p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onExit"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onReady(Ljava/lang/String;)V
    .locals 2

    .line 442
    sget-object p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReady: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 452
    sget-object v0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResult str: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", feedbackData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 453
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$500(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$1200(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$1100(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$1400(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    const-string p2, "capture"

    .line 457
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 458
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCaptureType(I)V

    goto :goto_0

    :cond_1
    const-string p2, "shoot"

    .line 459
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 460
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCaptureType(I)V

    goto :goto_0

    :cond_2
    const-string p2, "cheese"

    .line 461
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 462
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCaptureType(I)V

    .line 464
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$1500(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string p1, "key_voice_state"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p2, "voice_capture_state"

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 454
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " mResumed = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$1200(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mSupportCapture = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$1100(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mIsTakePicture = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$1400(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

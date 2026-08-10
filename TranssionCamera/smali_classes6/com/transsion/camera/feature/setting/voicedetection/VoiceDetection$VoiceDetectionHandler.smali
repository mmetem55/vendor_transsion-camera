.class Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;
.super Landroid/os/Handler;
.source "VoiceDetection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceDetectionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Landroid/os/Looper;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    .line 370
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Landroid/os/Looper;Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$1;)V
    .locals 0

    .line 367
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;-><init>(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 375
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 422
    :pswitch_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$1300(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string p1, "key_voice_state"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "voice_capture_state"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 423
    sget-object p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mTriggerTakePicture"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 426
    :pswitch_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$1402(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Z)Z

    .line 427
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 428
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->getKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 429
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$1400(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 428
    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 431
    :cond_1
    sget-object p1, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsTakePicture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$1400(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 418
    :pswitch_2
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p1, v2}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$1202(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Z)Z

    .line 419
    sget-object p1, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_PAUSE_VOICE mSupportCapture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$1100(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 411
    :pswitch_3
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$1200(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 414
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$1202(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Z)Z

    .line 415
    sget-object p1, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_RESUME_VOICE mSupportCapture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$1100(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 407
    :pswitch_4
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$1102(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Z)Z

    .line 408
    sget-object p1, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_CHECK_VOICE mSupportCapture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$1100(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 395
    :pswitch_5
    invoke-static {}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$600()Z

    move-result p0

    if-nez p0, :cond_3

    .line 396
    sget-object p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "already uninit, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 399
    :cond_3
    sget-object p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "uninit start"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 400
    invoke-static {}, Lcom/transsion/voicecamera/sdk/TransVCamera;->deInit()I

    move-result p1

    .line 401
    invoke-static {v2}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$602(Z)Z

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uninit result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 404
    invoke-static {v2}, Lcom/transsion/voicecamera/sdk/TransVCamera;->setSaveAudioData(Z)V

    goto :goto_1

    .line 377
    :pswitch_6
    invoke-static {}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$600()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 378
    sget-object p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "already init, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 381
    :cond_4
    sget-object p1, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "init start"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 382
    new-instance v0, Lcom/transsion/voicecamera/sdk/TransVCConfig;

    invoke-direct {v0}, Lcom/transsion/voicecamera/sdk/TransVCConfig;-><init>()V

    .line 383
    invoke-virtual {v0, v1}, Lcom/transsion/voicecamera/sdk/TransVCConfig;->setResultPublishSwitch(Z)V

    .line 384
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$700(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {v4}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$800(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/voicecamera/sdk/TVCResultListener;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/transsion/voicecamera/sdk/TransVCamera;->init(Landroid/content/Context;Lcom/transsion/voicecamera/sdk/TransVCConfig;Lcom/transsion/voicecamera/sdk/TVCResultListener;)I

    move-result v0

    if-nez v0, :cond_5

    move v2, v1

    .line 385
    :cond_5
    invoke-static {v2}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$602(Z)Z

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init result:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$600()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 388
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$1000(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection$VoiceDetectionHandler;->this$0:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->access$900(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string v0, "key_dump_voice"

    const-string v2, "off"

    invoke-virtual {p1, v0, v2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "on"

    .line 389
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 391
    invoke-static {v1}, Lcom/transsion/voicecamera/sdk/TransVCamera;->setSaveAudioData(Z)V

    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

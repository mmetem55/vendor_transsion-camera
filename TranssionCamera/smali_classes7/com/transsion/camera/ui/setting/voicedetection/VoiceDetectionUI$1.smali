.class Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$1;
.super Ljava/lang/Object;
.source "VoiceDetectionUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->access$000(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-static {}, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "abort capture when capture task is excusing."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->access$300(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->access$300(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 160
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->access$400(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;)Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    move-result-object p0

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->triggerShutterClick(I)V

    return-void
.end method

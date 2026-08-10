.class Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$VoiceDetSettingCallBack;
.super Ljava/lang/Object;
.source "VoiceDetectionUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceDetSettingCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$VoiceDetSettingCallBack;->this$0:Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$1;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$VoiceDetSettingCallBack;-><init>(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$VoiceDetSettingCallBack;->this$0:Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;

    const-string p1, "1"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->access$002(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;Z)Z

    return-void
.end method

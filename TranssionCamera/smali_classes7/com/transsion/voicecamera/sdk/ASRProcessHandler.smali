.class public Lcom/transsion/voicecamera/sdk/ASRProcessHandler;
.super Ljava/lang/Object;
.source "ASRProcessHandler.java"

# interfaces
.implements Lcom/transsion/voicecamera/sdk/asr/ASRModelResultListener;


# instance fields
.field private tvcResultListener:Lcom/transsion/voicecamera/sdk/TVCResultListener;


# direct methods
.method public constructor <init>(Lcom/transsion/voicecamera/sdk/TVCResultListener;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/transsion/voicecamera/sdk/ASRProcessHandler;->tvcResultListener:Lcom/transsion/voicecamera/sdk/TVCResultListener;

    return-void
.end method


# virtual methods
.method public onAsrData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/ASRProcessHandler;->tvcResultListener:Lcom/transsion/voicecamera/sdk/TVCResultListener;

    if-eqz p0, :cond_0

    .line 27
    invoke-interface {p0, p1, p2}, Lcom/transsion/voicecamera/sdk/TVCResultListener;->onResult(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onError(I)V
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/ASRProcessHandler;->tvcResultListener:Lcom/transsion/voicecamera/sdk/TVCResultListener;

    if-eqz p0, :cond_0

    .line 34
    invoke-interface {p0, p1}, Lcom/transsion/voicecamera/sdk/TVCResultListener;->onError(I)V

    .line 36
    :cond_0
    invoke-static {}, Lcom/transsion/voicecamera/sdk/TransVCamera;->getAudioRecordHelper()Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 37
    invoke-static {}, Lcom/transsion/voicecamera/sdk/TransVCamera;->getAudioRecordHelper()Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->stopRecording()V

    :cond_1
    return-void
.end method

.method public onExit()V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/ASRProcessHandler;->tvcResultListener:Lcom/transsion/voicecamera/sdk/TVCResultListener;

    if-eqz p0, :cond_0

    .line 44
    invoke-interface {p0}, Lcom/transsion/voicecamera/sdk/TVCResultListener;->onExit()V

    :cond_0
    return-void
.end method

.method public onReady(Ljava/lang/String;)V
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/ASRProcessHandler;->tvcResultListener:Lcom/transsion/voicecamera/sdk/TVCResultListener;

    if-eqz p0, :cond_0

    .line 20
    invoke-interface {p0, p1}, Lcom/transsion/voicecamera/sdk/TVCResultListener;->onReady(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.class public Lcom/transsion/voicecamera/sdk/VADProcessHandler;
.super Ljava/lang/Object;
.source "VADProcessHandler.java"

# interfaces
.implements Lcom/transsion/voicecamera/sdk/vad/VADResultListener;


# instance fields
.field private asrProcessThread:Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;


# direct methods
.method public constructor <init>(Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/transsion/voicecamera/sdk/VADProcessHandler;->asrProcessThread:Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;

    return-void
.end method


# virtual methods
.method public onDataFrame(Lcom/transsion/voicecamera/sdk/vad/VADResultFrame;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 26
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/VADProcessHandler;->asrProcessThread:Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;

    invoke-virtual {p0, p1}, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->addAudioToExecuteQueue(Lcom/transsion/voicecamera/sdk/vad/VADResultFrame;)V

    return-void
.end method

.method public onError(I)V
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/VADProcessHandler;->asrProcessThread:Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;

    invoke-virtual {p0, p1}, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->sendError(I)V

    return-void
.end method

.method public onExit()V
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/VADProcessHandler;->asrProcessThread:Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;

    invoke-virtual {p0}, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->sendExit()V

    return-void
.end method

.method public onReady(Ljava/lang/String;)V
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/VADProcessHandler;->asrProcessThread:Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;

    invoke-virtual {p0, p1}, Lcom/transsion/voicecamera/sdk/asr/ASRProcessThread;->onReady(Ljava/lang/String;)V

    return-void
.end method

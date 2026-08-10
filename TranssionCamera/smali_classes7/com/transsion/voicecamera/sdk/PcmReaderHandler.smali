.class public Lcom/transsion/voicecamera/sdk/PcmReaderHandler;
.super Ljava/lang/Object;
.source "PcmReaderHandler.java"

# interfaces
.implements Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "VCSDK-PcmReaderHandler"


# instance fields
.field private mVADThreadCallBack:Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;


# direct methods
.method public constructor <init>(Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/transsion/voicecamera/sdk/PcmReaderHandler;->mVADThreadCallBack:Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

    return-void
.end method


# virtual methods
.method public onFileLoaded(Ljava/lang/String;)V
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/PcmReaderHandler;->mVADThreadCallBack:Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

    invoke-virtual {p0, p1}, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->onReady(Ljava/lang/String;)V

    return-void
.end method

.method public onReadData([FI)V
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/PcmReaderHandler;->mVADThreadCallBack:Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->storeData([FI)V

    return-void
.end method

.method public onReadEnd()V
    .locals 2

    const-string v0, "VCSDK-PcmReaderHandler"

    const-string v1, "onReadEnd"

    .line 43
    invoke-static {v0, v1}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/PcmReaderHandler;->mVADThreadCallBack:Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

    invoke-virtual {p0}, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->recorderEnd()V

    return-void
.end method

.method public onReadError(I)V
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/PcmReaderHandler;->mVADThreadCallBack:Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

    invoke-virtual {p0, p1}, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->sendErrorStatus(I)V

    return-void
.end method

.class public Lcom/transsion/voicecamera/sdk/asr/ASRResult;
.super Ljava/lang/Object;
.source "ASRResult.java"


# instance fields
.field private result:Ljava/lang/String;

.field private rid:Ljava/lang/String;

.field private threshold:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FLjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/transsion/voicecamera/sdk/asr/ASRResult;->result:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/transsion/voicecamera/sdk/asr/ASRResult;->threshold:F

    .line 16
    iput-object p3, p0, Lcom/transsion/voicecamera/sdk/asr/ASRResult;->rid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRResult;->result:Ljava/lang/String;

    return-object p0
.end method

.method public getRid()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRResult;->rid:Ljava/lang/String;

    return-object p0
.end method

.method public getThreshold()F
    .locals 0

    .line 20
    iget p0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRResult;->threshold:F

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{result=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/voicecamera/sdk/asr/ASRResult;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", threshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/voicecamera/sdk/asr/ASRResult;->threshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/asr/ASRResult;->rid:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

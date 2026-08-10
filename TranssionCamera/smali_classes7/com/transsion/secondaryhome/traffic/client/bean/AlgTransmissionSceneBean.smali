.class public Lcom/transsion/secondaryhome/traffic/client/bean/AlgTransmissionSceneBean;
.super Ljava/lang/Object;
.source "AlgTransmissionSceneBean.java"


# annotations
.annotation runtime Lcom/transsion/secondaryhome/common/KolunKeep;
.end annotation


# static fields
.field public static final DATA_VER:I = 0x1

.field public static final STATE_IN:I = 0x0

.field public static final STATE_OUT:I = 0x1


# instance fields
.field from:Ljava/lang/String;

.field reason:Ljava/lang/String;

.field size:J

.field state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setFrom(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/transsion/secondaryhome/traffic/client/bean/AlgTransmissionSceneBean;->from:Ljava/lang/String;

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/transsion/secondaryhome/traffic/client/bean/AlgTransmissionSceneBean;->reason:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/transsion/secondaryhome/traffic/client/bean/AlgTransmissionSceneBean;->size:J

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/transsion/secondaryhome/traffic/client/bean/AlgTransmissionSceneBean;->state:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "state"

    .line 48
    iget v2, p0, Lcom/transsion/secondaryhome/traffic/client/bean/AlgTransmissionSceneBean;->state:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "reason"

    .line 49
    iget-object v2, p0, Lcom/transsion/secondaryhome/traffic/client/bean/AlgTransmissionSceneBean;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "from"

    .line 50
    iget-object v2, p0, Lcom/transsion/secondaryhome/traffic/client/bean/AlgTransmissionSceneBean;->from:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "size"

    .line 51
    iget-wide v2, p0, Lcom/transsion/secondaryhome/traffic/client/bean/AlgTransmissionSceneBean;->size:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ATSB"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

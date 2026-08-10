.class public Lcom/transsion/athena/data/Track;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lorg/json/JSONObject;

.field private c:J

.field private d:I

.field private e:J

.field private f:J

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBootId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/athena/data/Track;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/athena/data/Track;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getJsonData()Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/athena/data/Track;->b:Lorg/json/JSONObject;

    return-object p0
.end method

.method public getTid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/athena/data/Track;->c:J

    return-wide v0
.end method

.method public getTrackErTs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/athena/data/Track;->f:J

    return-wide v0
.end method

.method public getTrackFlag()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/athena/data/Track;->d:I

    return p0
.end method

.method public getTrackTs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/athena/data/Track;->e:J

    return-wide v0
.end method

.method public setBootId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/athena/data/Track;->g:Ljava/lang/String;

    return-void
.end method

.method public setEventName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/athena/data/Track;->a:Ljava/lang/String;

    return-void
.end method

.method public setJsonData(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/athena/data/Track;->b:Lorg/json/JSONObject;

    return-void
.end method

.method public setTid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/athena/data/Track;->c:J

    return-void
.end method

.method public setTrackErTs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/athena/data/Track;->f:J

    return-void
.end method

.method public setTrackFlag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/athena/data/Track;->d:I

    return-void
.end method

.method public setTrackTs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/athena/data/Track;->e:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/athena/data/Track;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/athena/data/Track;->b:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

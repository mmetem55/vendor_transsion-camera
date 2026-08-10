.class public Lcom/faceunity/entity/LightMakeupItem;
.super Ljava/lang/Object;
.source "LightMakeupItem.java"


# instance fields
.field private defaultLevel:F

.field private iconId:I

.field private level:F

.field private name:Ljava/lang/String;

.field private nameId:I

.field private path:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIF)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p6

    .line 35
    invoke-direct/range {v0 .. v7}, Lcom/faceunity/entity/LightMakeupItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIIFF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIFF)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/faceunity/entity/LightMakeupItem;->name:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/faceunity/entity/LightMakeupItem;->path:Ljava/lang/String;

    .line 41
    iput p3, p0, Lcom/faceunity/entity/LightMakeupItem;->type:I

    .line 42
    iput p4, p0, Lcom/faceunity/entity/LightMakeupItem;->nameId:I

    .line 43
    iput p5, p0, Lcom/faceunity/entity/LightMakeupItem;->iconId:I

    .line 44
    iput p6, p0, Lcom/faceunity/entity/LightMakeupItem;->level:F

    .line 45
    iput p7, p0, Lcom/faceunity/entity/LightMakeupItem;->defaultLevel:F

    return-void
.end method


# virtual methods
.method public cloneSelf()Lcom/faceunity/entity/LightMakeupItem;
    .locals 8

    .line 49
    new-instance v7, Lcom/faceunity/entity/LightMakeupItem;

    iget-object v1, p0, Lcom/faceunity/entity/LightMakeupItem;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/faceunity/entity/LightMakeupItem;->path:Ljava/lang/String;

    iget v3, p0, Lcom/faceunity/entity/LightMakeupItem;->type:I

    iget v4, p0, Lcom/faceunity/entity/LightMakeupItem;->nameId:I

    iget v5, p0, Lcom/faceunity/entity/LightMakeupItem;->iconId:I

    iget v6, p0, Lcom/faceunity/entity/LightMakeupItem;->level:F

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/faceunity/entity/LightMakeupItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIIF)V

    return-object v7
.end method

.method public getLevel()F
    .locals 0

    .line 93
    iget p0, p0, Lcom/faceunity/entity/LightMakeupItem;->level:F

    return p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/faceunity/entity/LightMakeupItem;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 69
    iget p0, p0, Lcom/faceunity/entity/LightMakeupItem;->type:I

    return p0
.end method

.method public setLevel(F)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/faceunity/entity/LightMakeupItem;->level:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LightMakeupItem{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/faceunity/entity/LightMakeupItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", path=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/faceunity/entity/LightMakeupItem;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/faceunity/entity/LightMakeupItem;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/faceunity/entity/LightMakeupItem;->iconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nameId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/faceunity/entity/LightMakeupItem;->nameId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/faceunity/entity/LightMakeupItem;->level:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", defaultLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/faceunity/entity/LightMakeupItem;->defaultLevel:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

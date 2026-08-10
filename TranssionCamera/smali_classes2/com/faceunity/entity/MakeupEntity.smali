.class public Lcom/faceunity/entity/MakeupEntity;
.super Ljava/lang/Object;
.source "MakeupEntity.java"


# instance fields
.field private bundlePath:Ljava/lang/String;

.field private isNeedFlipPoints:Z

.field private itemHandle:I


# direct methods
.method public constructor <init>(Lcom/faceunity/entity/MakeupEntity;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iget-object v0, p1, Lcom/faceunity/entity/MakeupEntity;->bundlePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/faceunity/entity/MakeupEntity;->bundlePath:Ljava/lang/String;

    .line 15
    iget v0, p1, Lcom/faceunity/entity/MakeupEntity;->itemHandle:I

    iput v0, p0, Lcom/faceunity/entity/MakeupEntity;->itemHandle:I

    .line 16
    iget-boolean p1, p1, Lcom/faceunity/entity/MakeupEntity;->isNeedFlipPoints:Z

    iput-boolean p1, p0, Lcom/faceunity/entity/MakeupEntity;->isNeedFlipPoints:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 59
    :cond_1
    check-cast p1, Lcom/faceunity/entity/MakeupEntity;

    .line 61
    iget-boolean v2, p0, Lcom/faceunity/entity/MakeupEntity;->isNeedFlipPoints:Z

    iget-boolean v3, p1, Lcom/faceunity/entity/MakeupEntity;->isNeedFlipPoints:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 63
    :cond_2
    iget-object p0, p0, Lcom/faceunity/entity/MakeupEntity;->bundlePath:Ljava/lang/String;

    if-eqz p0, :cond_3

    iget-object p1, p1, Lcom/faceunity/entity/MakeupEntity;->bundlePath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object p0, p1, Lcom/faceunity/entity/MakeupEntity;->bundlePath:Ljava/lang/String;

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public getBundlePath()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/faceunity/entity/MakeupEntity;->bundlePath:Ljava/lang/String;

    return-object p0
.end method

.method public getItemHandle()I
    .locals 0

    .line 37
    iget p0, p0, Lcom/faceunity/entity/MakeupEntity;->itemHandle:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/faceunity/entity/MakeupEntity;->bundlePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget-boolean p0, p0, Lcom/faceunity/entity/MakeupEntity;->isNeedFlipPoints:Z

    add-int/2addr v0, p0

    return v0
.end method

.method public setItemHandle(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/faceunity/entity/MakeupEntity;->itemHandle:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MakeupEntity{bundlePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/faceunity/entity/MakeupEntity;->bundlePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", itemHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/faceunity/entity/MakeupEntity;->itemHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isNeedFlipPoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/faceunity/entity/MakeupEntity;->isNeedFlipPoints:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

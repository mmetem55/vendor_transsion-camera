.class public Lcom/faceunity/entity/Effect;
.super Ljava/lang/Object;
.source "Effect.java"


# instance fields
.field private bundleName:Ljava/lang/String;

.field private coverPath:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private effectType:I

.field private filterName:Ljava/lang/String;

.field private imgUrl:Ljava/lang/String;

.field private maxFace:I

.field public musicPath:Ljava/lang/String;

.field private needForground:Z

.field private path:Ljava/lang/String;

.field private splitType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/faceunity/entity/Effect;->effectType:I

    return-void
.end method


# virtual methods
.method public effectType()I
    .locals 0

    .line 78
    iget p0, p0, Lcom/faceunity/entity/Effect;->effectType:I

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 89
    :cond_1
    check-cast p1, Lcom/faceunity/entity/Effect;

    .line 90
    iget-object v2, p0, Lcom/faceunity/entity/Effect;->path:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object p0, p0, Lcom/faceunity/entity/Effect;->path:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->path()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getBundleName()Ljava/lang/String;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/faceunity/entity/Effect;->bundleName:Ljava/lang/String;

    return-object p0
.end method

.method public getCoverPath()Ljava/lang/String;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/faceunity/entity/Effect;->coverPath:Ljava/lang/String;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/faceunity/entity/Effect;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getEffectType()I
    .locals 0

    .line 151
    iget p0, p0, Lcom/faceunity/entity/Effect;->effectType:I

    return p0
.end method

.method public getFilterName()Ljava/lang/String;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/faceunity/entity/Effect;->filterName:Ljava/lang/String;

    return-object p0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/faceunity/entity/Effect;->imgUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxFace()I
    .locals 0

    .line 147
    iget p0, p0, Lcom/faceunity/entity/Effect;->maxFace:I

    return p0
.end method

.method public getMusicPath()Ljava/lang/String;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/faceunity/entity/Effect;->musicPath:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/faceunity/entity/Effect;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getSplitType()I
    .locals 0

    .line 175
    iget p0, p0, Lcom/faceunity/entity/Effect;->splitType:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/faceunity/entity/Effect;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/faceunity/entity/Effect;->path:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public path()Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/faceunity/entity/Effect;->path:Ljava/lang/String;

    return-object p0
.end method

.method public setBundleName(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/faceunity/entity/Effect;->bundleName:Ljava/lang/String;

    return-void
.end method

.method public setCoverPath(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/faceunity/entity/Effect;->coverPath:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/faceunity/entity/Effect;->description:Ljava/lang/String;

    return-void
.end method

.method public setEffectType(I)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/faceunity/entity/Effect;->effectType:I

    return-void
.end method

.method public setFilterName(Ljava/lang/String;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/faceunity/entity/Effect;->filterName:Ljava/lang/String;

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/faceunity/entity/Effect;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setMaxFace(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/faceunity/entity/Effect;->maxFace:I

    return-void
.end method

.method public setMusicPath(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/faceunity/entity/Effect;->musicPath:Ljava/lang/String;

    return-void
.end method

.method public setNeedForground(Z)V
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/faceunity/entity/Effect;->needForground:Z

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/faceunity/entity/Effect;->path:Ljava/lang/String;

    return-void
.end method

.method public setSplitType(I)V
    .locals 0

    .line 179
    iput p1, p0, Lcom/faceunity/entity/Effect;->splitType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Effect{bundleName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/faceunity/entity/Effect;->bundleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", path=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/faceunity/entity/Effect;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", maxFace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/faceunity/entity/Effect;->maxFace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", effectType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/faceunity/entity/Effect;->effectType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/faceunity/entity/Effect;->description:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

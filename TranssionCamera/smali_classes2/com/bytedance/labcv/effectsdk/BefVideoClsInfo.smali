.class public Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo;
.super Ljava/lang/Object;
.source "BefVideoClsInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;
    }
.end annotation


# instance fields
.field classes:[Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;

.field n_classes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClasses()[Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo;->classes:[Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;

    return-object p0
.end method

.method public getN_classes()I
    .locals 0

    .line 16
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo;->n_classes:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefVideoClsInfo{n_classes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo;->n_classes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", classes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo;->classes:[Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;

    .line 50
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public topN(I)[Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;
    .locals 6

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo;->classes:[Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;

    new-instance v2, Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo$1;

    invoke-direct {v2, p0}, Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo$1;-><init>(Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo;)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    .line 38
    iget-object v3, p0, Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo;->classes:[Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 39
    aget-object v3, v3, v2

    iget v4, v3, Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;->confidence:F

    iget v5, v3, Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;->thres:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 40
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array p0, v1, [Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;

    .line 43
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;

    return-object p0
.end method

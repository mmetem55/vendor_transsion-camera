.class public Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo;
.super Ljava/lang/Object;
.source "BefGeneralObjectInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectRect;,
        Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectInfo;
    }
.end annotation


# instance fields
.field private infos:[Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectInfo;

.field private num:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfos()[Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectInfo;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo;->infos:[Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectInfo;

    return-object p0
.end method

.method public getNum()I
    .locals 0

    .line 15
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo;->num:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefGeneralObjectInfo{num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo;->num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", infos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo;->infos:[Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectInfo;

    .line 26
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectInfo;
.super Ljava/lang/Object;
.source "BefGeneralObjectInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectInfo"
.end annotation


# instance fields
.field private box:Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectRect;

.field private label:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBox()Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectRect;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectInfo;->box:Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectRect;

    return-object p0
.end method

.method public getLabel()I
    .locals 0

    .line 34
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectInfo;->label:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectInfo{label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectInfo;->label:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", box="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectInfo;->box:Lcom/bytedance/labcv/effectsdk/BefGeneralObjectInfo$ObjectRect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

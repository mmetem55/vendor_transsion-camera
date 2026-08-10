.class public Lcom/bytedance/labcv/effectsdk/BefLightclsInfo;
.super Ljava/lang/Object;
.source "BefLightclsInfo.java"


# instance fields
.field private prob:F

.field private selectedIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProb()F
    .locals 0

    .line 16
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefLightclsInfo;->prob:F

    return p0
.end method

.method public getSelectedIndex()I
    .locals 0

    .line 12
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefLightclsInfo;->selectedIndex:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefLightclsInfo{selectedIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefLightclsInfo;->selectedIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", prob="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefLightclsInfo;->prob:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

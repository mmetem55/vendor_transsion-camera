.class public Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo;
.super Ljava/lang/Object;
.source "BefLicenseCakeInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo$LicenseCakeInfo;,
        Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo$BBoxRect;
    }
.end annotation


# instance fields
.field private licenseCakeInfos:[Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo$LicenseCakeInfo;

.field private licenseCakeNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLicenseCakeInfos()[Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo$LicenseCakeInfo;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo;->licenseCakeInfos:[Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo$LicenseCakeInfo;

    return-object p0
.end method

.method public getLicenseCakeNum()I
    .locals 0

    .line 32
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo;->licenseCakeNum:I

    return p0
.end method

.method public setLicenseCakeInfos([Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo$LicenseCakeInfo;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo;->licenseCakeInfos:[Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo$LicenseCakeInfo;

    return-void
.end method

.method public setLicenseCakeNum(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo;->licenseCakeNum:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefLicenseCakeInfo{licenseCakeInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo;->licenseCakeInfos:[Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo$LicenseCakeInfo;

    .line 152
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", licenseCakeNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefLicenseCakeInfo;->licenseCakeNum:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

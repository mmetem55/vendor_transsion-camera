.class public Lcom/bytedance/labcv/effectsdk/BefChromaKeyingInfo;
.super Ljava/lang/Object;
.source "BefChromaKeyingInfo.java"


# instance fields
.field private color_b:B

.field private color_g:B

.field private color_r:B

.field private height:I

.field private mask:[B

.field private outputTexture:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor_b()B
    .locals 0

    .line 16
    iget-byte p0, p0, Lcom/bytedance/labcv/effectsdk/BefChromaKeyingInfo;->color_b:B

    return p0
.end method

.method public getColor_g()B
    .locals 0

    .line 20
    iget-byte p0, p0, Lcom/bytedance/labcv/effectsdk/BefChromaKeyingInfo;->color_g:B

    return p0
.end method

.method public getColor_r()B
    .locals 0

    .line 24
    iget-byte p0, p0, Lcom/bytedance/labcv/effectsdk/BefChromaKeyingInfo;->color_r:B

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 36
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefChromaKeyingInfo;->height:I

    return p0
.end method

.method public getMask()[B
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefChromaKeyingInfo;->mask:[B

    return-object p0
.end method

.method public getOutputTexture()I
    .locals 0

    .line 39
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefChromaKeyingInfo;->outputTexture:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 32
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefChromaKeyingInfo;->width:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 43
    iget-object v1, p0, Lcom/bytedance/labcv/effectsdk/BefChromaKeyingInfo;->mask:[B

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefChromaKeyingInfo;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefChromaKeyingInfo;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, "l: %d w:%d, h:%d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

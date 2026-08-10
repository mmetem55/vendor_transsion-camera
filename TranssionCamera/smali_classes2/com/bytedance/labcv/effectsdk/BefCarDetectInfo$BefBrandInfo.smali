.class public Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo$BefBrandInfo;
.super Ljava/lang/Object;
.source "BefCarDetectInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BefBrandInfo"
.end annotation


# instance fields
.field brandId:I

.field brandOcr:[I

.field private ocrTable:[Ljava/lang/String;

.field points:[Lcom/bytedance/labcv/effectsdk/BefPublicDefine$BefPointF;


# direct methods
.method public constructor <init>()V
    .locals 66

    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    const-string v1, "0"

    const-string v2, "1"

    const-string v3, "2"

    const-string v4, "3"

    const-string v5, "4"

    const-string v6, "5"

    const-string v7, "6"

    const-string v8, "7"

    const-string v9, "8"

    const-string v10, "9"

    const-string v11, "A"

    const-string v12, "B"

    const-string v13, "C"

    const-string v14, "D"

    const-string v15, "E"

    const-string v16, "F"

    const-string v17, "G"

    const-string v18, "H"

    const-string v19, "J"

    const-string v20, "K"

    const-string v21, "L"

    const-string v22, "M"

    const-string v23, "N"

    const-string v24, "P"

    const-string v25, "Q"

    const-string v26, "R"

    const-string v27, "S"

    const-string v28, "T"

    const-string v29, "U"

    const-string v30, "V"

    const-string v31, "W"

    const-string v32, "X"

    const-string v33, "Y"

    const-string v34, "Z"

    const-string v35, "\u4e91"

    const-string v36, "\u4eac"

    const-string v37, "\u5180"

    const-string v38, "\u5409"

    const-string v39, "\u5b81"

    const-string v40, "\u5ddd"

    const-string v41, "\u65b0"

    const-string v42, "\u664b"

    const-string v43, "\u6842"

    const-string v44, "\u6caa"

    const-string v45, "\u6d25"

    const-string v46, "\u6d59"

    const-string v47, "\u6e1d"

    const-string v48, "\u6e58"

    const-string v49, "\u743c"

    const-string v50, "\u7518"

    const-string v51, "\u7696"

    const-string v52, "\u7ca4"

    const-string v53, "\u82cf"

    const-string v54, "\u8499"

    const-string v55, "\u85cf"

    const-string v56, "\u8c6b"

    const-string v57, "\u8d35"

    const-string v58, "\u8d63"

    const-string v59, "\u8fbd"

    const-string v60, "\u9102"

    const-string v61, "\u95fd"

    const-string v62, "\u9655"

    const-string v63, "\u9752"

    const-string v64, "\u9c81"

    const-string v65, "\u9ed1"

    .line 76
    filled-new-array/range {v0 .. v65}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo$BefBrandInfo;->ocrTable:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBrandId()I
    .locals 0

    .line 95
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo$BefBrandInfo;->brandId:I

    return p0
.end method

.method public getBrandOcr()[I
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo$BefBrandInfo;->brandOcr:[I

    return-object p0
.end method

.method public getBrandOcrString()Ljava/lang/String;
    .locals 6

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    iget-object v1, p0, Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo$BefBrandInfo;->brandOcr:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 108
    iget-object v5, p0, Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo$BefBrandInfo;->ocrTable:[Ljava/lang/String;

    aget-object v4, v5, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPoints()[Lcom/bytedance/labcv/effectsdk/BefPublicDefine$BefPointF;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo$BefBrandInfo;->points:[Lcom/bytedance/labcv/effectsdk/BefPublicDefine$BefPointF;

    return-object p0
.end method

.method public setBrandId(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo$BefBrandInfo;->brandId:I

    return-void
.end method

.method public setPoints([Lcom/bytedance/labcv/effectsdk/BefPublicDefine$BefPointF;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo$BefBrandInfo;->points:[Lcom/bytedance/labcv/effectsdk/BefPublicDefine$BefPointF;

    return-void
.end method

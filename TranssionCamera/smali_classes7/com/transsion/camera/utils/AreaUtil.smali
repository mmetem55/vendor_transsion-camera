.class public final Lcom/transsion/camera/utils/AreaUtil;
.super Ljava/lang/Object;
.source "AreaUtil.java"


# static fields
.field private static final AFRICA:[Ljava/lang/String;

.field public static final AREA_CODE:I

.field private static final COUNTRY_CODE:Ljava/lang/String;

.field private static final SOUTH_ASIA:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 44

    const-string v0, "persist.sys.oobe_country"

    const-string v1, ""

    .line 11
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/AreaUtil;->COUNTRY_CODE:Ljava/lang/String;

    const-string v0, "IN"

    const-string v1, "PK"

    .line 18
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/AreaUtil;->SOUTH_ASIA:[Ljava/lang/String;

    const-string v1, "NG"

    const-string v2, "GH"

    const-string v3, "CI"

    const-string v4, "KE"

    const-string v5, "CM"

    const-string v6, "SN"

    const-string v7, "ZM"

    const-string v8, "MU"

    const-string v9, "BJ"

    const-string v10, "CD"

    const-string v11, "CG"

    const-string v12, "GN"

    const-string v13, "ML"

    const-string v14, "BF"

    const-string v15, "SO"

    const-string v16, "TG"

    const-string v17, "AO"

    const-string v18, "UG"

    const-string v19, "RW"

    const-string v20, "TZ"

    const-string v21, "SD"

    const-string v22, "SS"

    const-string v23, "ET"

    const-string v24, "ZA"

    const-string v25, "MZ"

    const-string v26, "TD"

    const-string v27, "MR"

    const-string v28, "NE"

    const-string v29, "GA"

    const-string v30, "NA"

    const-string v31, "BW"

    const-string v32, "MG"

    const-string v33, "MW"

    const-string v34, "BI"

    const-string v35, "LR"

    const-string v36, "ZW"

    const-string v37, "GM"

    const-string v38, "CF"

    const-string v39, "GQ"

    const-string v40, "SL"

    const-string v41, "GW"

    const-string v42, "DJ"

    const-string v43, "NS"

    .line 24
    filled-new-array/range {v1 .. v43}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/AreaUtil;->AFRICA:[Ljava/lang/String;

    .line 75
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->parseAreaCode()I

    move-result v0

    sput v0, Lcom/transsion/camera/utils/AreaUtil;->AREA_CODE:I

    return-void
.end method

.method public static getMakeUpDefaultValueByCounty(Z)Ljava/lang/String;
    .locals 1

    .line 115
    sget p0, Lcom/transsion/camera/utils/AreaUtil;->AREA_CODE:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "{\"intensityArray\":[0.6,0.6],\"isContrast\":false,\"keyArray\":[\"Filter_ALL\",\"Makeup_ALL\"],\"path\":\"style_makeup/firstlove\",\"styleNumber\":9}"

    goto :goto_0

    :cond_0
    const-string p0, "{\"intensityArray\":[0.6,0.6],\"isContrast\":false,\"keyArray\":[\"Filter_ALL\",\"Makeup_ALL\"],\"path\":\"style_makeup/nude\",\"styleNumber\":1}"

    goto :goto_0

    :cond_1
    const-string p0, "{\"intensityArray\":[0.6,0.6],\"isContrast\":false,\"keyArray\":[\"Filter_ALL\",\"Makeup_ALL\"],\"path\":\"style_makeup/nativemuscle\",\"styleNumber\":4}"

    :goto_0
    return-object p0
.end method

.method public static isSouthAsia()Z
    .locals 2

    .line 77
    sget v0, Lcom/transsion/camera/utils/AreaUtil;->AREA_CODE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static parseAreaCode()I
    .locals 4

    .line 96
    sget-object v0, Lcom/transsion/camera/utils/AreaUtil;->COUNTRY_CODE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 99
    :cond_0
    sget-object v1, Lcom/transsion/camera/utils/AreaUtil;->AFRICA:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 100
    sget-object v3, Lcom/transsion/camera/utils/AreaUtil;->SOUTH_ASIA:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 101
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    .line 103
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    const-string v1, "area_full"

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    return v0

    :cond_3
    return v2
.end method

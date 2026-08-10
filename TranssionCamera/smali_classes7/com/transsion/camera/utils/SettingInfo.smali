.class public Lcom/transsion/camera/utils/SettingInfo;
.super Ljava/lang/Object;
.source "SettingInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;,
        Lcom/transsion/camera/utils/SettingInfo$Pattern;,
        Lcom/transsion/camera/utils/SettingInfo$CameraFace;,
        Lcom/transsion/camera/utils/SettingInfo$Area;,
        Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;
    }
.end annotation


# static fields
.field public static AREA_A_DARK:[Ljava/lang/String;

.field public static AREA_C_LIGHT:[Ljava/lang/String;

.field public static final BACK_VP_DEFAULT_VALUE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final BACK_VP_LEVEL_GROUP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final BLUR_LEVEL_DATA:[Ljava/lang/String;

.field public static final CAM_MODE_SUPPORT_VALUES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXPOSURE_ZERO:Ljava/lang/String;

.field public static final FRONT_VP_DEFAULT_VALUE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FRONT_VP_LEVEL_GROUP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ITDV2LIST:[Ljava/lang/String;

.field public static final VIDEO_PORTRAIT_DATA:[Ljava/lang/String;

.field public static final mFlashFacadeValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 40

    .line 370
    sget-object v0, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo;->EXPOSURE_ZERO:Ljava/lang/String;

    const-string v0, "five_senses"

    .line 507
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo;->ITDV2LIST:[Ljava/lang/String;

    const-string v0, "off"

    const-string v1, "on"

    const-string v2, "auto"

    const-string v3, "torch"

    const-string v4, "ringscreenlight"

    .line 628
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo;->mFlashFacadeValues:Ljava/util/List;

    const-string v1, "NG"

    const-string v2, "GH"

    const-string v3, "KE"

    const-string v4, "TZ"

    const-string v5, "SN"

    const-string v6, "CM"

    const-string v7, "UG"

    const-string v8, "ET"

    const-string v9, "ZM"

    const-string v10, "ML"

    const-string v11, "RW"

    const-string v12, "CD"

    const-string v13, "CG"

    const-string v14, "TD"

    const-string v15, "GA"

    const-string v16, "NE"

    const-string v17, "TG"

    const-string v18, "BJ"

    const-string v19, "BF"

    const-string v20, "SO"

    const-string v21, "AO"

    const-string v22, "CF"

    const-string v23, "NS"

    const-string v24, "MU"

    const-string v25, "GQ"

    const-string v26, "SD"

    const-string v27, "SS"

    const-string v28, "ZA"

    const-string v29, "MZ"

    const-string v30, "MR"

    const-string v31, "NA"

    const-string v32, "BW"

    const-string v33, "MG"

    const-string v34, "MW"

    const-string v35, "BI"

    const-string v36, "LR"

    const-string v37, "ZW"

    const-string v38, "SL"

    const-string v39, "GW"

    .line 1147
    filled-new-array/range {v1 .. v39}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo;->AREA_A_DARK:[Ljava/lang/String;

    const-string v1, "IN"

    const-string v2, "LK"

    const-string v3, "NP"

    const-string v4, "BT"

    const-string v5, "ID"

    const-string v6, "PH"

    const-string v7, "TH"

    const-string v8, "VN"

    const-string v9, "LA"

    const-string v10, "KH"

    const-string v11, "MY"

    const-string v12, "BN"

    .line 1150
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo;->AREA_C_LIGHT:[Ljava/lang/String;

    .line 1551
    new-instance v0, Lcom/transsion/camera/utils/SettingInfo$1;

    invoke-direct {v0}, Lcom/transsion/camera/utils/SettingInfo$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo;->BACK_VP_DEFAULT_VALUE:Ljava/util/HashMap;

    .line 1559
    new-instance v0, Lcom/transsion/camera/utils/SettingInfo$2;

    invoke-direct {v0}, Lcom/transsion/camera/utils/SettingInfo$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo;->FRONT_VP_DEFAULT_VALUE:Ljava/util/HashMap;

    .line 1566
    new-instance v0, Lcom/transsion/camera/utils/SettingInfo$3;

    invoke-direct {v0}, Lcom/transsion/camera/utils/SettingInfo$3;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo;->BACK_VP_LEVEL_GROUP:Ljava/util/HashMap;

    .line 1574
    new-instance v0, Lcom/transsion/camera/utils/SettingInfo$4;

    invoke-direct {v0}, Lcom/transsion/camera/utils/SettingInfo$4;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo;->FRONT_VP_LEVEL_GROUP:Ljava/util/HashMap;

    .line 1716
    new-instance v0, Lcom/transsion/camera/utils/SettingInfo$5;

    invoke-direct {v0}, Lcom/transsion/camera/utils/SettingInfo$5;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo;->CAM_MODE_SUPPORT_VALUES:Ljava/util/List;

    const-string v1, "f1.0"

    const-string v2, "f1.4"

    const-string v3, "f2.0"

    const-string v4, "f2.8"

    const-string v5, "f4.0"

    const-string v6, "f5.6"

    const-string v7, "f8.0"

    const-string v8, "f11"

    const-string v9, "f16"

    .line 1823
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo;->BLUR_LEVEL_DATA:[Ljava/lang/String;

    const-string v1, "90"

    const-string v2, "80"

    const-string v3, "70"

    const-string v4, "60"

    const-string v5, "50"

    const-string v6, "40"

    const-string v7, "30"

    const-string v8, "20"

    const-string v9, "10"

    .line 1824
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo;->VIDEO_PORTRAIT_DATA:[Ljava/lang/String;

    return-void
.end method

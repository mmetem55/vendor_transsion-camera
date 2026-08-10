.class public Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo;
.super Ljava/lang/Object;
.source "SuperNightFilterInfo.java"


# static fields
.field private static final FILTER_ID_FILTER_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILTER_ID_INFO_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILTER_NAME_ABAO:Ljava/lang/String; = "abao"

.field private static final FILTER_NAME_BLACK_GOLD:Ljava/lang/String; = "black_gold"

.field private static final FILTER_NAME_BLUES:Ljava/lang/String; = "blues"

.field private static final FILTER_NAME_CYBERPUNK:Ljava/lang/String; = "cybepunk"

.field private static final FILTER_NAME_GREEN_ORANGE:Ljava/lang/String; = "green_orange"

.field private static final FILTER_NAME_ORIGIN:Ljava/lang/String; = "supernight_filter_off"

.field private static final FILTER_NAME_PARIS:Ljava/lang/String; = "paris"

.field private static final SUPERNIGHT_FILTER_STR_IDS:[Ljava/lang/String;

.field private static final VALUE_FILTER_ABAO:I = 0x5

.field private static final VALUE_FILTER_BLACK_GOLD:I = 0x2

.field private static final VALUE_FILTER_BLUES:I = 0x3

.field private static final VALUE_FILTER_CYBERPUNK:I = 0x4

.field private static final VALUE_FILTER_GREEN_ORANGE:I = 0x1

.field private static final VALUE_FILTER_OIL:I = 0x7

.field private static final VALUE_FILTER_ORIGIN:I = 0x0

.field private static final VALUE_FILTER_PARIS:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "supernight_filter_off"

    const-string v1, "black_gold"

    const-string v2, "green_orange"

    const-string v3, "blues"

    const-string v4, "cybepunk"

    const-string v5, "paris"

    const-string v6, "abao"

    .line 32
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo;->SUPERNIGHT_FILTER_STR_IDS:[Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo;->FILTER_ID_INFO_MAP:Ljava/util/HashMap;

    .line 51
    new-instance v0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo$2;

    invoke-direct {v0}, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo;->FILTER_ID_FILTER_NAME_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCaptureFilterIdByFilterName(Ljava/lang/String;)I
    .locals 2

    .line 66
    sget-object v0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo;->FILTER_ID_FILTER_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getItemInfoByFilterId(Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;
    .locals 2

    .line 74
    sget-object v0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo;->FILTER_ID_INFO_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getSupportFilterIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    sget-object v0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo;->SUPERNIGHT_FILTER_STR_IDS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

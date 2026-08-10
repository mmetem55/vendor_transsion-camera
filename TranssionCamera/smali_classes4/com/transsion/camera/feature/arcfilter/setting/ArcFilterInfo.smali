.class public Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;
.super Ljava/lang/Object;
.source "ArcFilterInfo.java"


# static fields
.field private static final BACK_CAMERA_SUPPORT_FILTER_IDS:[I

.field private static final FILTER_ID_INFO_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final FRONT_CAMERA_SUPPORT_FILTER_IDS:[I

.field private static final PREVIEW_CAPTURE_FILTER_ID_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->PREVIEW_CAPTURE_FILTER_ID_MAP:Ljava/util/HashMap;

    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 37
    fill-array-data v1, :array_0

    sput-object v1, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->BACK_CAMERA_SUPPORT_FILTER_IDS:[I

    new-array v0, v0, [I

    .line 50
    fill-array-data v0, :array_1

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->FRONT_CAMERA_SUPPORT_FILTER_IDS:[I

    .line 63
    new-instance v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo$2;

    invoke-direct {v0}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->FILTER_ID_INFO_MAP:Ljava/util/Map;

    return-void

    nop

    :array_0
    .array-data 4
        0x10000301
        0x10000306
        0x10000307
        0x10000304
        0x10000305
        0x10000302
        0x10000303
        0x10000308
        0x1000030b
        0x1000030c
    .end array-data

    :array_1
    .array-data 4
        0x10000301
        0x10000306
        0x10000307
        0x10000304
        0x10000305
        0x10000302
        0x10000303
        0x10000308
        0x1000030b
        0x1000030c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFilterSupportList(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 116
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 119
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 121
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 122
    sget-object v3, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->PREVIEW_CAPTURE_FILTER_ID_MAP:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 123
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCaptureFilterIdByPreviewId(Ljava/lang/String;)I
    .locals 1

    .line 104
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 105
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->PREVIEW_CAPTURE_FILTER_ID_MAP:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 107
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getItemInfoByFilterId(Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;
    .locals 2

    .line 141
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->FILTER_ID_INFO_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getSupportFilterIds(Ljava/lang/String;)[I
    .locals 0

    .line 132
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 133
    sget-object p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->BACK_CAMERA_SUPPORT_FILTER_IDS:[I

    return-object p0

    .line 135
    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->FRONT_CAMERA_SUPPORT_FILTER_IDS:[I

    return-object p0
.end method

.class public Lcom/transsion/camera/utils/PictureSizeHelper;
.super Ljava/lang/Object;
.source "PictureSizeHelper.java"


# static fields
.field private static final INVALID_RATIO:Ljava/lang/Double;

.field private static final RATIO_16_9_D:Ljava/lang/Double;

.field private static final RATIO_1_1_D:Ljava/lang/Double;

.field private static final RATIO_4_3_D:Ljava/lang/Double;

.field private static final RATIO_FULL_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RATIO_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final mCount:I

.field private static final mLock:Ljava/lang/Object;

.field private static final sMaxCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Double;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/utils/PictureSizeHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/PictureSizeHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-wide v0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_16_9_D:Ljava/lang/Double;

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_4_3_D:Ljava/lang/Double;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_1_1_D:Ljava/lang/Double;

    const-wide/16 v0, 0x0

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/PictureSizeHelper;->INVALID_RATIO:Ljava/lang/Double;

    const/4 v0, 0x1

    .line 33
    sput v0, Lcom/transsion/camera/utils/PictureSizeHelper;->mCount:I

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/PictureSizeHelper$1;

    invoke-direct {v0}, Lcom/transsion/camera/utils/PictureSizeHelper$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_MAP:Ljava/util/HashMap;

    .line 61
    new-instance v0, Lcom/transsion/camera/utils/PictureSizeHelper$2;

    invoke-direct {v0}, Lcom/transsion/camera/utils/PictureSizeHelper$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_FULL_MAP:Ljava/util/HashMap;

    .line 68
    new-instance v0, Lcom/transsion/camera/utils/PictureSizeHelper$3;

    invoke-direct {v0}, Lcom/transsion/camera/utils/PictureSizeHelper$3;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/PictureSizeHelper;->sMaxCountMap:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/PictureSizeHelper;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Double;
    .locals 1

    .line 16
    sget-object v0, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_16_9_D:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Double;
    .locals 1

    .line 16
    sget-object v0, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_4_3_D:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Double;
    .locals 1

    .line 16
    sget-object v0, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_1_1_D:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 16
    sget v0, Lcom/transsion/camera/utils/PictureSizeHelper;->mCount:I

    return v0
.end method

.method private static area(Landroid/util/Size;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 232
    :cond_0
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method

.method private static filterSizes(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    sget-object v1, Lcom/transsion/camera/utils/PictureSizeHelper;->sMaxCountMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 87
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 91
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    invoke-static {v1}, Lcom/transsion/camera/utils/PictureSizeHelper;->valueToSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 95
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 96
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 97
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    sub-double v7, v2, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDumpToleranceSupport()Z

    move-result v5

    if-eqz v5, :cond_3

    const-wide v9, 0x3f947ae147ae147bL    # 0.02

    goto :goto_2

    :cond_3
    const-wide v9, 0x3f8cac083126e979L    # 0.014

    :goto_2
    cmpg-double v5, v7, v9

    if-gez v5, :cond_2

    .line 98
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 106
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    .line 107
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 108
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    .line 111
    :cond_6
    sget-object v3, Lcom/transsion/camera/utils/PictureSizeHelper;->sMaxCountMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 113
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/PictureSizeHelper;->pickUpToMaxCount(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 114
    invoke-interface {p0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 117
    :cond_7
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->sortSizeInDescending(Ljava/util/List;)V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 121
    invoke-static {v1}, Lcom/transsion/camera/utils/PictureSizeHelper;->sizeToStr(Landroid/util/Size;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    return-object v0
.end method

.method public static filterValuesOnShown(Ljava/util/List;Ljava/lang/String;Landroid/util/Size;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/util/Size;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 292
    sget-object v0, Lcom/transsion/camera/utils/PictureSizeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_0
    invoke-static {p2, p3}, Lcom/transsion/camera/utils/PictureSizeHelper;->initScreenRatio(Landroid/util/Size;Z)V

    .line 294
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 295
    invoke-static {p0}, Lcom/transsion/camera/utils/PictureSizeHelper;->filterSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 296
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static findClosestRatio(Ljava/lang/Double;)Ljava/lang/Double;
    .locals 10

    .line 306
    sget-object v0, Lcom/transsion/camera/utils/PictureSizeHelper;->INVALID_RATIO:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 307
    sget-object v2, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_MAP:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    .line 308
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v8, v6, v3

    if-gez v8, :cond_0

    .line 311
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    move-wide v3, v6

    goto :goto_0

    .line 314
    :cond_1
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDumpToleranceSupport()Z

    move-result p0

    if-eqz p0, :cond_2

    const-wide v5, 0x3f947ae147ae147bL    # 0.02

    goto :goto_1

    :cond_2
    const-wide v5, 0x3f8cac083126e979L    # 0.014

    :goto_1
    cmpl-double p0, v3, v5

    if-lez p0, :cond_3

    .line 316
    sget-object p0, Lcom/transsion/camera/utils/PictureSizeHelper;->INVALID_RATIO:Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 318
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static findFullRatioFromString(Ljava/lang/String;)Z
    .locals 3

    .line 172
    sget-object v0, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_FULL_MAP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 173
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    .line 175
    sget-object v0, Lcom/transsion/camera/utils/PictureSizeHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "full ratio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getFullScreenRatio()Ljava/lang/String;
    .locals 3

    .line 254
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenRatio()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 255
    invoke-static {v0}, Lcom/transsion/camera/utils/PictureSizeHelper;->findClosestRatio(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    .line 257
    sget-object v1, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_FULL_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 261
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 144
    invoke-static {p0}, Lcom/transsion/camera/utils/PictureSizeHelper;->valueToSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    .line 145
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-double v2, p0

    div-double/2addr v0, v2

    .line 146
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/PictureSizeHelper;->findClosestRatio(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object p0

    .line 147
    sget-object v0, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 150
    :goto_0
    sget-object v0, Lcom/transsion/camera/utils/PictureSizeHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStandardAspectRatioOfString "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method public static initScreenRatio(Landroid/util/Size;Z)V
    .locals 3

    .line 269
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenRatio()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 270
    invoke-static {v0}, Lcom/transsion/camera/utils/PictureSizeHelper;->findClosestRatio(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    .line 271
    invoke-static {p0}, Lcom/transsion/camera/utils/PictureSizeHelper;->isMaxSensorSize16_9(Landroid/util/Size;)Z

    move-result p0

    .line 273
    sget-object v1, Lcom/transsion/camera/utils/PictureSizeHelper;->sMaxCountMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    if-nez p0, :cond_0

    .line 275
    sget-object p0, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_4_3_D:Ljava/lang/Double;

    sget v2, Lcom/transsion/camera/utils/PictureSizeHelper;->mCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 277
    :cond_0
    sget-object p0, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_16_9_D:Ljava/lang/Double;

    sget v2, Lcom/transsion/camera/utils/PictureSizeHelper;->mCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-eqz p1, :cond_1

    .line 281
    sget-object p0, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_1_1_D:Ljava/lang/Double;

    sget p1, Lcom/transsion/camera/utils/PictureSizeHelper;->mCount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_1
    sget-object p0, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_MAP:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 285
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    .line 286
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public static isFullRatio(D)Z
    .locals 4

    .line 300
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDumpToleranceSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    goto :goto_0

    :cond_0
    const-wide v0, 0x3f8cac083126e979L    # 0.014

    .line 301
    :goto_0
    sget-object v2, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_4_3_D:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v0

    if-ltz v2, :cond_1

    sget-object v2, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_1_1_D:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, v0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static isFullScreenRatioChanged(Ljava/lang/String;)Z
    .locals 4

    .line 236
    invoke-static {p0}, Lcom/transsion/camera/utils/PictureSizeHelper;->findFullRatioFromString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 241
    :cond_0
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenRatio()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 242
    invoke-static {v0}, Lcom/transsion/camera/utils/PictureSizeHelper;->findClosestRatio(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    .line 244
    sget-object v2, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_FULL_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 247
    :goto_0
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static isMaxSensorSize16_9(Landroid/util/Size;)Z
    .locals 6

    .line 127
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-double v2, p0

    div-double/2addr v0, v2

    .line 128
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDumpToleranceSupport()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    goto :goto_0

    :cond_0
    const-wide v2, 0x3f8cac083126e979L    # 0.014

    .line 129
    :goto_0
    sget-object p0, Lcom/transsion/camera/utils/PictureSizeHelper;->RATIO_16_9_D:Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double p0, v0, v2

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static pickUpToMaxCount(Ljava/util/List;I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 187
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 188
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 189
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    return-object v0

    .line 194
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 195
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-static {v1}, Lcom/transsion/camera/utils/PictureSizeHelper;->area(Landroid/util/Size;)I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    .line 196
    invoke-static {v3}, Lcom/transsion/camera/utils/PictureSizeHelper;->area(Landroid/util/Size;)I

    move-result v6

    int-to-double v6, v6

    cmpg-double v6, v6, v4

    if-gez v6, :cond_3

    .line 200
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 201
    invoke-static {v2}, Lcom/transsion/camera/utils/PictureSizeHelper;->area(Landroid/util/Size;)I

    move-result v6

    int-to-double v6, v6

    sub-double/2addr v6, v4

    invoke-static {v3}, Lcom/transsion/camera/utils/PictureSizeHelper;->area(Landroid/util/Size;)I

    move-result v8

    int-to-double v8, v8

    sub-double/2addr v4, v8

    cmpg-double v4, v6, v4

    if-gez v4, :cond_2

    .line 202
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 204
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, p1, :cond_4

    move-object v2, v3

    goto :goto_2

    :cond_4
    move-object v2, v3

    goto :goto_0

    .line 214
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p0, p1, :cond_6

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 215
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method

.method private static sizeToStr(Landroid/util/Size;)Ljava/lang/String;
    .locals 2

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static valueToSize(Ljava/lang/String;)Landroid/util/Size;
    .locals 0

    .line 221
    invoke-static {p0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

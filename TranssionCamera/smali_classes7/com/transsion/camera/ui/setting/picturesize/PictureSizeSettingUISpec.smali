.class public Lcom/transsion/camera/ui/setting/picturesize/PictureSizeSettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/NoPresetListSettingUISpec;
.source "PictureSizeSettingUISpec.java"


# static fields
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


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/camera/ui/setting/picturesize/PictureSizeSettingUISpec;->RATIO_MAP:Ljava/util/HashMap;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 35
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "1:1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v1, 0x3ff5555555555555L    # 1.3333333333333333

    .line 36
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "4:3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v1, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 37
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "16:9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    .line 38
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "18:9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v1, 0x400071c71c71c71cL    # 2.0555555555555554

    .line 39
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "19:9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v3, 0x4000aaaaaaaaaaabL    # 2.0833333333333335

    .line 40
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v3, 0x4000e38e38e38e39L    # 2.111111111111111

    .line 41
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v1, 0x4001333333333334L    # 2.1500000000000004

    .line 42
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "19.4:9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v1, 0x4001555555555555L    # 2.1666666666666665

    .line 43
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "19.5:9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v1, 0x4001c71c71c71c72L    # 2.2222222222222223

    .line 44
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "20:9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v1, 0x400238e38e38e38eL    # 2.2777777777777777

    .line 45
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "20.5:9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v1, 0x40024fa4fa4fa4fbL    # 2.288888888888889

    .line 46
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "20.6:9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    const-string v0, "key_picture_size"

    .line 50
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/NoPresetListSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void
.end method

.method private static convertSizeStringToEntryString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 90
    invoke-static {p0}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p0

    .line 92
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float v2, v0, v1

    float-to-int v2, v2

    .line 94
    sget-object v3, Lcom/transsion/camera/ui/setting/picturesize/PictureSizeSettingUISpec;->RATIO_MAP:Ljava/util/HashMap;

    invoke-static {v3, p0}, Lcom/transsion/camera/ui/setting/picturesize/PictureSizeSettingUISpec;->findRatioString(Ljava/util/HashMap;Landroid/util/Size;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "4:3"

    .line 99
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    const/high16 v4, 0x41200000    # 10.0f

    mul-float v8, v0, v4

    rem-float/2addr v8, v4

    float-to-int v4, v8

    if-lt v4, v5, :cond_0

    const/4 v8, 0x6

    if-ge v4, v8, :cond_0

    float-to-int v0, v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    move v1, v6

    goto :goto_0

    :cond_0
    move v1, v7

    :goto_0
    const/4 v4, 0x3

    const/4 v8, 0x2

    if-nez v3, :cond_2

    if-eqz v1, :cond_1

    .line 110
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v4, [Ljava/lang/Object;

    .line 111
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v8

    const-string p0, "(%.1fM) %dx%d"

    .line 110
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 112
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v4, [Ljava/lang/Object;

    .line 113
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v8

    const-string p0, "(%dM) %dx%d"

    .line 112
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 116
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v3, v2, v7

    .line 117
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v4

    const-string p0, "%s(%.1fM) %dx%d"

    .line 116
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 118
    :cond_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v3, v1, v7

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v4

    const-string p0, "%s(%dM) %dx%d"

    .line 118
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static findRatioString(Ljava/util/HashMap;Landroid/util/Size;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Size;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 135
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 138
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 139
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 140
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 141
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    .line 143
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    .line 144
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v1, v3

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double p1, v2, v4

    if-gez p1, :cond_3

    .line 150
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected createSupportEntries([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 73
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    array-length p1, p1

    .line 74
    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 76
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 77
    invoke-static {v2}, Lcom/transsion/camera/ui/setting/picturesize/PictureSizeSettingUISpec;->convertSizeStringToEntryString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected createSupportEntryDrawables([Ljava/lang/String;)[Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected createSupportEntryValues(Ljava/util/List;)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 65
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    .line 66
    new-array p0, p0, [Ljava/lang/String;

    .line 67
    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const p0, 0x7f0807bb

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f100263

    .line 55
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

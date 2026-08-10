.class public abstract Lcom/faceunity/pta_art/constant/ColorConstant;
.super Ljava/lang/Object;
.source "ColorConstant.java"


# static fields
.field public static beard_color:[[D

.field public static glass_color:[[D

.field public static glass_frame_color:[[D

.field public static hair_color:[[D

.field public static hat_color:[[D

.field public static iris_color:[[D

.field public static lip_color:[[D

.field public static skin_color:[[D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getColor([[DD)[D
    .locals 9

    double-to-int v0, p1

    .line 69
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 70
    array-length p1, p0

    sub-int/2addr p1, v2

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 73
    aget-object p0, p0, v1

    return-object p0

    :cond_1
    int-to-double v3, v0

    sub-double/2addr p1, v3

    .line 76
    aget-object v3, p0, v0

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v3

    .line 77
    aget-object v4, p0, v0

    aget-wide v5, v4, v1

    add-int/2addr v0, v2

    aget-object p0, p0, v0

    aget-wide v7, p0, v1

    sub-double/2addr v7, v5

    mul-double/2addr v7, p1

    add-double/2addr v5, v7

    aput-wide v5, v3, v1

    .line 78
    aget-wide v0, v4, v2

    aget-wide v5, p0, v2

    sub-double/2addr v5, v0

    mul-double/2addr v5, p1

    add-double/2addr v0, v5

    aput-wide v0, v3, v2

    const/4 v0, 0x2

    .line 79
    aget-wide v1, v4, v0

    aget-wide v4, p0, v0

    sub-double/2addr v4, v1

    mul-double/2addr p1, v4

    add-double/2addr v1, p1

    aput-wide v1, v3, v0

    return-object v3
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    const-string v0, "glass_frame_color"

    .line 28
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {}, Lcom/faceunity/pta_art/constant/ResourceJson;->jsonColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    .line 30
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    .line 31
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 32
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-static {p0}, Lcom/faceunity/pta_art/constant/ResourceJson;->jsonSkinColor(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Lorg/json/JSONObject;

    invoke-static {}, Lcom/faceunity/pta_art/constant/ResourceJson;->getAreaType()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/faceunity/pta_art/constant/ColorConstant;->parseJson(Lorg/json/JSONObject;Ljava/lang/String;)[[D

    move-result-object p0

    sput-object p0, Lcom/faceunity/pta_art/constant/ColorConstant;->skin_color:[[D

    const-string p0, "lip_color"

    .line 34
    invoke-static {v2, p0}, Lcom/faceunity/pta_art/constant/ColorConstant;->parseJson(Lorg/json/JSONObject;Ljava/lang/String;)[[D

    move-result-object p0

    sput-object p0, Lcom/faceunity/pta_art/constant/ColorConstant;->lip_color:[[D

    const-string p0, "iris_color"

    .line 35
    invoke-static {v2, p0}, Lcom/faceunity/pta_art/constant/ColorConstant;->parseJson(Lorg/json/JSONObject;Ljava/lang/String;)[[D

    move-result-object p0

    sput-object p0, Lcom/faceunity/pta_art/constant/ColorConstant;->iris_color:[[D

    const-string p0, "hair_color"

    .line 36
    invoke-static {v2, p0}, Lcom/faceunity/pta_art/constant/ColorConstant;->parseJson(Lorg/json/JSONObject;Ljava/lang/String;)[[D

    move-result-object p0

    sput-object p0, Lcom/faceunity/pta_art/constant/ColorConstant;->hair_color:[[D

    const-string p0, "beard_color"

    .line 37
    invoke-static {v2, p0}, Lcom/faceunity/pta_art/constant/ColorConstant;->parseJson(Lorg/json/JSONObject;Ljava/lang/String;)[[D

    move-result-object p0

    sput-object p0, Lcom/faceunity/pta_art/constant/ColorConstant;->beard_color:[[D

    .line 38
    invoke-static {v2, v0}, Lcom/faceunity/pta_art/constant/ColorConstant;->parseJson(Lorg/json/JSONObject;Ljava/lang/String;)[[D

    move-result-object p0

    sput-object p0, Lcom/faceunity/pta_art/constant/ColorConstant;->glass_frame_color:[[D

    .line 39
    invoke-static {v2, v0}, Lcom/faceunity/pta_art/constant/ColorConstant;->parseJson(Lorg/json/JSONObject;Ljava/lang/String;)[[D

    move-result-object p0

    sput-object p0, Lcom/faceunity/pta_art/constant/ColorConstant;->glass_color:[[D

    const-string p0, "hat_color"

    .line 40
    invoke-static {v2, p0}, Lcom/faceunity/pta_art/constant/ColorConstant;->parseJson(Lorg/json/JSONObject;Ljava/lang/String;)[[D

    move-result-object p0

    sput-object p0, Lcom/faceunity/pta_art/constant/ColorConstant;->hat_color:[[D

    .line 41
    sget-object p0, Lcom/faceunity/pta_art/constant/ColorConstant;->skin_color:[[D

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/ColorPickGradient;->init([[D)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_0

    .line 28
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private static parseJson(Lorg/json/JSONObject;Ljava/lang/String;)[[D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    move v1, v0

    .line 50
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "r"

    .line 52
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "g"

    .line 53
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "b"

    .line 54
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "intensity"

    .line 55
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x3

    if-eqz v7, :cond_0

    .line 56
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    const/4 v2, 0x4

    new-array v2, v2, [D

    int-to-double v11, v3

    aput-wide v11, v2, v9

    int-to-double v3, v4

    aput-wide v3, v2, v0

    int-to-double v3, v5

    aput-wide v3, v2, v8

    aput-wide v6, v2, v10

    .line 57
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-array v2, v10, [D

    int-to-double v6, v3

    aput-wide v6, v2, v9

    int-to-double v3, v4

    aput-wide v3, v2, v0

    int-to-double v3, v5

    aput-wide v3, v2, v8

    .line 59
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [[D

    .line 63
    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0
.end method

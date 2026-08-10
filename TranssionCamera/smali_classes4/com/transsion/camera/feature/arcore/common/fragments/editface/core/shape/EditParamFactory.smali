.class public abstract Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;
.super Ljava/lang/Object;
.source "EditParamFactory.java"


# static fields
.field private static final EYE:Ljava/lang/String; = "eye"

.field private static final FACE:Ljava/lang/String; = "face"

.field private static final MOUTH:Ljava/lang/String; = "mouth"

.field private static final NOSE_FEMALE:Ljava/lang/String; = "nose_female"

.field private static final NOSE_MALE:Ljava/lang/String; = "nose_male"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static sEditParamEye:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;",
            ">;"
        }
    .end annotation
.end field

.field public static sEditParamFace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;",
            ">;"
        }
    .end annotation
.end field

.field public static sEditParamFeMaleNose:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;",
            ">;"
        }
    .end annotation
.end field

.field public static sEditParamMaleNose:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;",
            ">;"
        }
    .end annotation
.end field

.field public static sEditParamMouth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;",
            ">;"
        }
    .end annotation
.end field

.field private static sParamEyeRes:[I

.field private static sParamFaceRes:[I

.field private static sParamMouthRes:[I

.field private static sParamNoseRes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "EditParamFactory"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 24
    sget v1, Lcom/transsion/camera/feature/arcore/R$drawable;->edit_face_item_none:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v3, Lcom/transsion/camera/feature/arcore/R$drawable;->f1:I

    const/4 v4, 0x1

    aput v3, v0, v4

    sget v3, Lcom/transsion/camera/feature/arcore/R$drawable;->f2:I

    const/4 v5, 0x2

    aput v3, v0, v5

    sget v3, Lcom/transsion/camera/feature/arcore/R$drawable;->f3:I

    const/4 v6, 0x3

    aput v3, v0, v6

    sget v3, Lcom/transsion/camera/feature/arcore/R$drawable;->f4:I

    const/4 v7, 0x4

    aput v3, v0, v7

    sget v3, Lcom/transsion/camera/feature/arcore/R$drawable;->f5:I

    const/4 v8, 0x5

    aput v3, v0, v8

    sget v3, Lcom/transsion/camera/feature/arcore/R$drawable;->f6:I

    const/4 v9, 0x6

    aput v3, v0, v9

    sget v3, Lcom/transsion/camera/feature/arcore/R$drawable;->f7:I

    const/4 v10, 0x7

    aput v3, v0, v10

    sget v3, Lcom/transsion/camera/feature/arcore/R$drawable;->f8:I

    const/16 v11, 0x8

    aput v3, v0, v11

    sget v3, Lcom/transsion/camera/feature/arcore/R$drawable;->f9:I

    const/16 v12, 0x9

    aput v3, v0, v12

    sget v3, Lcom/transsion/camera/feature/arcore/R$drawable;->f10:I

    const/16 v12, 0xa

    aput v3, v0, v12

    sget v3, Lcom/transsion/camera/feature/arcore/R$drawable;->f11:I

    const/16 v12, 0xb

    aput v3, v0, v12

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sParamFaceRes:[I

    new-array v0, v9, [I

    aput v1, v0, v2

    .line 28
    sget v3, Lcom/transsion/camera/feature/arcore/R$drawable;->eyes_e1:I

    aput v3, v0, v4

    sget v3, Lcom/transsion/camera/feature/arcore/R$drawable;->eyes_e2:I

    aput v3, v0, v5

    sget v3, Lcom/transsion/camera/feature/arcore/R$drawable;->eyes_e3:I

    aput v3, v0, v6

    sget v3, Lcom/transsion/camera/feature/arcore/R$drawable;->eyes_e4:I

    aput v3, v0, v7

    sget v3, Lcom/transsion/camera/feature/arcore/R$drawable;->eyes_e5:I

    aput v3, v0, v8

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sParamEyeRes:[I

    new-array v0, v11, [I

    aput v1, v0, v2

    .line 29
    sget v3, Lcom/transsion/camera/feature/arcore/R$drawable;->m1:I

    aput v3, v0, v4

    sget v3, Lcom/transsion/camera/feature/arcore/R$drawable;->m2:I

    aput v3, v0, v5

    sget v3, Lcom/transsion/camera/feature/arcore/R$drawable;->m3:I

    aput v3, v0, v6

    sget v3, Lcom/transsion/camera/feature/arcore/R$drawable;->m4:I

    aput v3, v0, v7

    sget v3, Lcom/transsion/camera/feature/arcore/R$drawable;->m5:I

    aput v3, v0, v8

    sget v3, Lcom/transsion/camera/feature/arcore/R$drawable;->m6:I

    aput v3, v0, v9

    sget v3, Lcom/transsion/camera/feature/arcore/R$drawable;->m7:I

    aput v3, v0, v10

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sParamMouthRes:[I

    new-array v0, v9, [I

    aput v1, v0, v2

    .line 31
    sget v1, Lcom/transsion/camera/feature/arcore/R$drawable;->nose_n1:I

    aput v1, v0, v4

    sget v1, Lcom/transsion/camera/feature/arcore/R$drawable;->nose_n2:I

    aput v1, v0, v5

    sget v1, Lcom/transsion/camera/feature/arcore/R$drawable;->nose_n3:I

    aput v1, v0, v6

    sget v1, Lcom/transsion/camera/feature/arcore/R$drawable;->nose_n4:I

    aput v1, v0, v7

    sget v1, Lcom/transsion/camera/feature/arcore/R$drawable;->nose_n5:I

    aput v1, v0, v8

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sParamNoseRes:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;

    monitor-enter v0

    .line 46
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-static {}, Lcom/faceunity/pta_art/constant/ResourceJson;->jsonShapeParam()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 47
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 48
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 49
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 50
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    sget-object v2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sEditParamFace:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 52
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 53
    sput-object v3, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sEditParamFace:Ljava/util/List;

    .line 55
    :cond_0
    sget-object v2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sEditParamMouth:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 56
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 57
    sput-object v3, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sEditParamMouth:Ljava/util/List;

    .line 59
    :cond_1
    sget-object v2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sEditParamEye:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 60
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 61
    sput-object v3, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sEditParamEye:Ljava/util/List;

    .line 63
    :cond_2
    sget-object v2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sEditParamMaleNose:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 64
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 65
    sput-object v3, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sEditParamMaleNose:Ljava/util/List;

    .line 67
    :cond_3
    sget-object v2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sEditParamFeMaleNose:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 68
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 69
    sput-object v3, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sEditParamFeMaleNose:Ljava/util/List;

    :cond_4
    const-string v2, "face"

    .line 71
    invoke-static {v1, v2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->parseJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sEditParamFace:Ljava/util/List;

    const-string v2, "mouth"

    .line 72
    invoke-static {v1, v2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->parseJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sEditParamMouth:Ljava/util/List;

    const-string v2, "eye"

    .line 73
    invoke-static {v1, v2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->parseJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sEditParamEye:Ljava/util/List;

    const-string v2, "nose_male"

    .line 74
    invoke-static {v1, v2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->parseJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sEditParamMaleNose:Ljava/util/List;

    const-string v2, "nose_female"

    .line 75
    invoke-static {v1, v2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->parseJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sEditParamFeMaleNose:Ljava/util/List;

    .line 76
    sget-object v1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[EditParamFactory initEditParam]"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz p0, :cond_5

    .line 46
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 78
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 80
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized parseJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;

    monitor-enter v0

    .line 83
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 84
    sget-object v1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,array:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 86
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 87
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 88
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 89
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 90
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 91
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 92
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_0

    goto :goto_1

    .line 95
    :cond_0
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    double-to-float v8, v8

    .line 96
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v5, -0x1

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v6, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v6, "nose_male"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, v8

    goto :goto_2

    :sswitch_1
    const-string v6, "mouth"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, v9

    goto :goto_2

    :sswitch_2
    const-string v6, "face"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, v2

    goto :goto_2

    :sswitch_3
    const-string v6, "eye"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, v10

    goto :goto_2

    :sswitch_4
    const-string v6, "nose_female"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, v7

    :cond_2
    :goto_2
    if-eqz v5, :cond_9

    if-eq v5, v10, :cond_7

    if-eq v5, v9, :cond_5

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_3

    goto :goto_3

    .line 119
    :cond_3
    sget-object v5, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sParamNoseRes:[I

    array-length v6, v5

    if-lt v3, v6, :cond_4

    goto :goto_3

    .line 122
    :cond_4
    new-instance v6, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;

    aget v5, v5, v3

    invoke-direct {v6, v5, v4}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;-><init>(ILjava/util/HashMap;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 112
    :cond_5
    sget-object v5, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sParamMouthRes:[I

    array-length v6, v5

    if-lt v3, v6, :cond_6

    goto :goto_3

    .line 115
    :cond_6
    new-instance v6, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;

    aget v5, v5, v3

    invoke-direct {v6, v5, v4}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;-><init>(ILjava/util/HashMap;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 106
    :cond_7
    sget-object v5, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sParamEyeRes:[I

    array-length v6, v5

    if-lt v3, v6, :cond_8

    goto :goto_3

    .line 109
    :cond_8
    new-instance v6, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;

    aget v5, v5, v3

    invoke-direct {v6, v5, v4}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;-><init>(ILjava/util/HashMap;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 100
    :cond_9
    sget-object v5, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sParamFaceRes:[I

    array-length v6, v5

    if-lt v3, v6, :cond_a

    goto :goto_3

    .line 103
    :cond_a
    new-instance v6, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;

    aget v5, v5, v3

    invoke-direct {v6, v5, v4}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;-><init>(ILjava/util/HashMap;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 126
    :cond_b
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x2e0dfac8 -> :sswitch_4
        0x18a31 -> :sswitch_3
        0x2fd65d -> :sswitch_2
        0x6343cc7 -> :sswitch_1
        0x353dfaf9 -> :sswitch_0
    .end sparse-switch
.end method

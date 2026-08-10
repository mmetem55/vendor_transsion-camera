.class public Lcom/transsion/camera/feature/funvideo/data/EffectItemBuilder;
.super Ljava/lang/Object;
.source "EffectItemBuilder.java"


# static fields
.field private static final BUNDLE:Ljava/lang/String; = "bundle"

.field private static final COVER:Ljava/lang/String; = "cover"

.field private static final DESCRIPTION:Ljava/lang/String; = "description"

.field private static final EFFECT_TYPE_MUSIC:I = 0xb

.field private static final EFFECT_TYPE_NONE:I = 0x0

.field private static final EFFECT_TYPE_NORMAL:I = 0x1

.field private static final FILTERNAME:Ljava/lang/String; = "filtername"

.field private static final JSON:Ljava/lang/String; = "json"

.field private static final MAXFACE:Ljava/lang/String; = "maxface"

.field private static final MP3:Ljava/lang/String; = "mp3"

.field private static final PNG:Ljava/lang/String; = "png"

.field private static final SPLITTYPE:Ljava/lang/String; = "splittype"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateCustomEffectItem(Ljava/lang/String;)Lcom/transsion/camera/feature/funvideo/data/EffectItem;
    .locals 2

    .line 28
    new-instance v0, Lcom/faceunity/entity/Effect;

    invoke-direct {v0}, Lcom/faceunity/entity/Effect;-><init>()V

    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Lcom/faceunity/entity/Effect;->setEffectType(I)V

    const-string v1, ""

    .line 30
    invoke-virtual {v0, v1}, Lcom/faceunity/entity/Effect;->setImgUrl(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, p0}, Lcom/faceunity/entity/Effect;->setBundleName(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, v1}, Lcom/faceunity/entity/Effect;->setMusicPath(Ljava/lang/String;)V

    const-string p0, "origin"

    .line 33
    invoke-virtual {v0, p0}, Lcom/faceunity/entity/Effect;->setFilterName(Ljava/lang/String;)V

    .line 34
    new-instance p0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;

    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;-><init>()V

    .line 35
    invoke-virtual {v0}, Lcom/faceunity/entity/Effect;->getBundleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->setName(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->setEffect(Lcom/faceunity/entity/Effect;)V

    const-string v0, "ready_to_use"

    .line 37
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->setState(Ljava/lang/String;)V

    const-string v0, "none"

    .line 38
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->setType(Ljava/lang/String;)V

    return-object p0
.end method

.method public static generateEffect(Ljava/lang/String;Ljava/io/File;)Lcom/faceunity/entity/Effect;
    .locals 5

    .line 54
    new-instance v0, Lcom/faceunity/entity/Effect;

    invoke-direct {v0}, Lcom/faceunity/entity/Effect;-><init>()V

    .line 55
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/faceunity/entity/Effect;->setBundleName(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "foreground"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_1
    const-string v1, "music"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_2
    const-string v1, "none"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "normal"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_3

    if-eq p0, v4, :cond_2

    if-eq p0, v2, :cond_1

    .line 69
    invoke-virtual {v0, v3}, Lcom/faceunity/entity/Effect;->setEffectType(I)V

    goto :goto_2

    :cond_1
    const/16 p0, 0xb

    .line 65
    invoke-virtual {v0, p0}, Lcom/faceunity/entity/Effect;->setEffectType(I)V

    goto :goto_2

    .line 62
    :cond_2
    invoke-virtual {v0, v4}, Lcom/faceunity/entity/Effect;->setEffectType(I)V

    goto :goto_2

    .line 58
    :cond_3
    invoke-virtual {v0, v4}, Lcom/faceunity/entity/Effect;->setNeedForground(Z)V

    .line 59
    invoke-virtual {v0, v4}, Lcom/faceunity/entity/Effect;->setEffectType(I)V

    .line 72
    :goto_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 73
    array-length p1, p0

    if-lez p1, :cond_9

    .line 74
    array-length p1, p0

    :goto_3
    if-ge v3, p1, :cond_9

    aget-object v1, p0, v3

    .line 75
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_8

    .line 76
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v4, "bundle"

    .line 78
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 79
    invoke-virtual {v0, v1}, Lcom/faceunity/entity/Effect;->setPath(Ljava/lang/String;)V

    :cond_4
    const-string v4, "cover"

    .line 81
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 82
    invoke-virtual {v0, v1}, Lcom/faceunity/entity/Effect;->setCoverPath(Ljava/lang/String;)V

    :cond_5
    const-string v4, "png"

    .line 84
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 85
    invoke-virtual {v0, v1}, Lcom/faceunity/entity/Effect;->setImgUrl(Ljava/lang/String;)V

    :cond_6
    const-string v4, "mp3"

    .line 87
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 88
    invoke-virtual {v0, v1}, Lcom/faceunity/entity/Effect;->setMusicPath(Ljava/lang/String;)V

    :cond_7
    const-string v4, "json"

    .line 90
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 91
    invoke-static {v0, v1}, Lcom/transsion/camera/feature/funvideo/data/EffectItemBuilder;->parseConfig(Lcom/faceunity/entity/Effect;Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3df94319 -> :sswitch_3
        0x33af38 -> :sswitch_2
        0x636ee25 -> :sswitch_1
        0x76486943 -> :sswitch_0
    .end sparse-switch
.end method

.method public static generateEffectItem(Ljava/lang/String;Ljava/io/File;)Lcom/transsion/camera/feature/funvideo/data/EffectItem;
    .locals 2

    .line 44
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/funvideo/data/EffectItemBuilder;->generateEffect(Ljava/lang/String;Ljava/io/File;)Lcom/faceunity/entity/Effect;

    move-result-object v0

    .line 45
    new-instance v1, Lcom/transsion/camera/feature/funvideo/data/EffectItem;

    invoke-direct {v1}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;-><init>()V

    .line 46
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->setName(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->setEffect(Lcom/faceunity/entity/Effect;)V

    const-string p1, "ready_to_use"

    .line 48
    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->setState(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1, p0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->setType(Ljava/lang/String;)V

    return-object v1
.end method

.method private static parseConfig(Lcom/faceunity/entity/Effect;Ljava/lang/String;)V
    .locals 5

    const-string v0, "filtername"

    const-string v1, "splittype"

    const-string v2, "description"

    const-string v3, "maxface"

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 103
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/transsion/camera/utils/FileUtil;->getFileData(Ljava/io/File;)[B

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 107
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    .line 109
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v4, :cond_2

    .line 112
    :try_start_1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/faceunity/entity/Effect;->setMaxFace(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 114
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    :cond_2
    :goto_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v3, :cond_3

    .line 118
    :try_start_3
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/faceunity/entity/Effect;->setDescription(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 120
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    :cond_3
    :goto_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz v2, :cond_4

    .line 124
    :try_start_5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/faceunity/entity/Effect;->setSplitType(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 126
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    :cond_4
    :goto_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    if-eqz v1, :cond_5

    .line 130
    :try_start_7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/faceunity/entity/Effect;->setFilterName(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 132
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_3
    return-void
.end method

.class public Lcom/faceunity/pta_art/utils/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/faceunity/pta_art/utils/JsonUtils;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public readFacePupJson(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    :try_start_0
    iget-object p0, p0, Lcom/faceunity/pta_art/utils/JsonUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    new-array p1, p1, [B

    .line 134
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    .line 135
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 136
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 138
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 132
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 146
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 147
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JSONException"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception p0

    .line 143
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 144
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IOException"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 150
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0
.end method

.class public Lcom/faceunity/param/MakeupParamHelper;
.super Ljava/lang/Object;
.source "MakeupParamHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/faceunity/param/MakeupParamHelper$TextureImage;
    }
.end annotation


# direct methods
.method public static createTextureImage(Landroid/content/Context;Ljava/lang/String;)Lcom/faceunity/param/MakeupParamHelper$TextureImage;
    .locals 2

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 39
    :cond_0
    invoke-static {p0, p1}, Lcom/vskit/arsdk/utils/BitmapUtil;->getImageFromAssetsFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_1

    .line 41
    invoke-static {p1}, Lcom/vskit/arsdk/utils/BitmapUtil;->getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_1
    if-eqz p0, :cond_2

    .line 44
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 45
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 46
    invoke-static {p0}, Lcom/faceunity/utils/GlBitmapUtil;->copyRgbaByteFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    .line 47
    new-instance v1, Lcom/faceunity/param/MakeupParamHelper$TextureImage;

    invoke-direct {v1, p1, v0, p0}, Lcom/faceunity/param/MakeupParamHelper$TextureImage;-><init>(II[B)V

    :cond_2
    return-object v1
.end method

.method public static getMakeupIntensityKeyByType(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    const-string p0, "makeup_intensity_pupil"

    return-object p0

    :pswitch_1
    const-string p0, "makeup_intensity_eyelash"

    return-object p0

    :pswitch_2
    const-string p0, "makeup_intensity_eyeLiner"

    return-object p0

    :pswitch_3
    const-string p0, "makeup_intensity_eye"

    return-object p0

    :pswitch_4
    const-string p0, "makeup_intensity_eyeBrow"

    return-object p0

    :pswitch_5
    const-string p0, "makeup_intensity_blusher"

    return-object p0

    :pswitch_6
    const-string p0, "makeup_intensity_lip"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getMakeupTextureKeyByType(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    const-string p0, "tex_pupil"

    return-object p0

    :pswitch_1
    const-string p0, "tex_eyeLash"

    return-object p0

    :pswitch_2
    const-string p0, "tex_eyeLiner"

    return-object p0

    :pswitch_3
    const-string p0, "tex_eye"

    return-object p0

    :pswitch_4
    const-string p0, "tex_brow"

    return-object p0

    :pswitch_5
    const-string p0, "tex_blusher"

    return-object p0

    :pswitch_6
    const-string p0, "tex_lip"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static readRgbaColor(Landroid/content/Context;Ljava/lang/String;)[D
    .locals 6

    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 118
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    new-array p1, p1, [B

    .line 120
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    .line 121
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "rgba"

    .line 122
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [D

    const/4 v2, 0x0

    .line 124
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    .line 125
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    aput-wide v4, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    .line 118
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "MakeupParamHelper"

    const-string v0, "readMakeupLipColors: "

    .line 129
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.class public Lcom/cdv/utils/NvAndroidThumbnail;
.super Ljava/lang/Object;
.source "NvAndroidThumbnail.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NvAndroidThumbnail"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createThumbnail(Landroid/content/Context;Ljava/lang/String;ZII)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v2, "content://"

    .line 46
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 47
    new-instance v8, Lcom/cdv/utils/NvAndroidBitmap$Size;

    invoke-direct {v8, p3, p4}, Lcom/cdv/utils/NvAndroidBitmap$Size;-><init>(II)V

    const/4 p3, 0x0

    const-string p4, "_id"

    const/4 v9, 0x1

    if-nez v2, :cond_3

    if-eqz p2, :cond_2

    .line 55
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    move-object v3, v2

    filled-new-array {p4}, [Ljava/lang/String;

    move-result-object v4

    new-array v6, v9, [Ljava/lang/String;

    aput-object p1, v6, p3

    const/4 v7, 0x0

    const-string v5, "_data=?"

    move-object v2, v1

    .line 54
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_1

    .line 62
    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    filled-new-array {p4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    .line 61
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_8

    .line 69
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    .line 76
    :cond_4
    invoke-interface {v2, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    if-gez p4, :cond_5

    .line 78
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 79
    invoke-static {p0, p1, p2, v8}, Lcom/cdv/utils/NvAndroidThumbnail;->createThumbnailFromFile(Landroid/content/Context;Ljava/lang/String;ZLcom/cdv/utils/NvAndroidBitmap$Size;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 82
    :cond_5
    invoke-interface {v2, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 83
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    if-eqz p2, :cond_6

    .line 130
    invoke-static {v1, v3, v4, v9, v0}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p4

    goto :goto_2

    .line 132
    :cond_6
    invoke-static {v1, v3, v4, v9, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p4

    :goto_2
    if-eqz p4, :cond_7

    .line 134
    invoke-static {p0, p4, p1, p2}, Lcom/cdv/utils/NvAndroidThumbnail;->transformSystemGeneratedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_7
    new-array p4, v9, [Ljava/lang/Object;

    .line 136
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p4, p3

    const-string p3, "Fail to get thumbnail file for media \'%d\'!"

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "NvAndroidThumbnail"

    invoke-static {p4, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {p0, p1, p2, v8}, Lcom/cdv/utils/NvAndroidThumbnail;->createThumbnailFromFile(Landroid/content/Context;Ljava/lang/String;ZLcom/cdv/utils/NvAndroidBitmap$Size;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_3
    if-eqz v2, :cond_9

    .line 71
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 73
    :cond_9
    invoke-static {p0, p1, p2, v8}, Lcom/cdv/utils/NvAndroidThumbnail;->createThumbnailFromFile(Landroid/content/Context;Ljava/lang/String;ZLcom/cdv/utils/NvAndroidBitmap$Size;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_a
    :goto_4
    return-object v0
.end method

.method private static createThumbnailFromFile(Landroid/content/Context;Ljava/lang/String;ZLcom/cdv/utils/NvAndroidBitmap$Size;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x2

    .line 175
    invoke-static {p0, p1, p3, p2, v0}, Lcom/cdv/utils/NvAndroidBitmap;->createRotatedBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/cdv/utils/NvAndroidBitmap$Size;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    .line 187
    invoke-static {p1, p0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_1

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p1, p0, v0

    const-string p1, "Failed to create video thumbnail bitmap for \'%s\'!"

    .line 189
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "NvAndroidThumbnail"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p2
.end method

.method private static transformSystemGeneratedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object p1
.end method

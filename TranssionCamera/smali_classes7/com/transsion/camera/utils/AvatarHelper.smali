.class public Lcom/transsion/camera/utils/AvatarHelper;
.super Ljava/lang/Object;
.source "AvatarHelper.java"


# direct methods
.method public static saveAvatarThumbnail(Ljava/io/File;Landroid/graphics/Bitmap;Z)V
    .locals 6

    .line 16
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 21
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "bigthumbNail.jpg"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/faceunity/pta_art/utils/FileUtil;->saveBitmapToFile(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    if-eqz p2, :cond_1

    const p2, 0x3f5e353f    # 0.868f

    const/16 v0, 0x141

    const/16 v1, 0x420

    const/16 v2, 0x10b

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const p2, 0x3f50a3d7    # 0.815f

    const/16 v0, 0x26d

    const/16 v1, 0x7c1

    const/16 v2, 0x1cc

    const/16 v3, 0x1e

    :goto_0
    sub-int v4, v0, v2

    .line 45
    div-int/lit8 v4, v4, 0x2

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr p2, v5

    int-to-float v1, v1

    div-float/2addr p2, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v5

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v0, v0

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v2, v2

    mul-float/2addr p2, v2

    float-to-int p2, p2

    .line 56
    invoke-static {p1, v1, v0, p2, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 57
    new-instance p2, Ljava/io/File;

    const-string v0, "smallthumbNail.jpg"

    invoke-direct {p2, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/faceunity/pta_art/utils/FileUtil;->saveBitmapToFile(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

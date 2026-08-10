.class public abstract Lcom/faceunity/pta_art/utils/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BitmapUtil"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/faceunity/pta_art/utils/BitmapUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private static dp2px(Landroid/content/Context;F)I
    .locals 0

    .line 353
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static saveBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;[F)V
    .locals 3

    .line 327
    sget-object p3, Lcom/faceunity/pta_art/utils/BitmapUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReadBitmapListener , bitmap width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 329
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 334
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "bigthumbNail.jpg"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/faceunity/pta_art/utils/FileUtil;->saveBitmapToFile(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 335
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    sub-int/2addr p3, v0

    .line 337
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x401c71c7

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 339
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {p0, v1}, Lcom/faceunity/pta_art/utils/BitmapUtil;->dp2px(Landroid/content/Context;F)I

    move-result p0

    add-int/2addr v0, p0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    div-int/lit8 p0, p0, 0x5

    :goto_0
    sub-int/2addr v0, p0

    goto :goto_1

    :cond_1
    const v1, 0x400aaaab

    cmpl-float v1, v0, v1

    const/high16 v2, 0x40a00000    # 5.0f

    if-nez v1, :cond_2

    .line 341
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {p0, v2}, Lcom/faceunity/pta_art/utils/BitmapUtil;->dp2px(Landroid/content/Context;F)I

    move-result p0

    sub-int/2addr v0, p0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    div-int/lit8 p0, p0, 0x5

    goto :goto_0

    :cond_2
    const v1, 0x400e38e4

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 343
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {p0, v2}, Lcom/faceunity/pta_art/utils/BitmapUtil;->dp2px(Landroid/content/Context;F)I

    move-result p0

    sub-int/2addr v0, p0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    div-int/lit8 p0, p0, 0x5

    goto :goto_0

    .line 345
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x5

    sub-int v0, p0, v0

    :goto_1
    add-int/lit8 p3, p3, -0x14

    add-int/lit8 v0, v0, -0x14

    .line 347
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    div-int/lit8 p0, p0, 0x5

    add-int/lit8 p0, p0, 0x28

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x28

    invoke-static {p2, p3, v0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 348
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "smallthumbNail.jpg"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/faceunity/pta_art/utils/FileUtil;->saveBitmapToFile(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

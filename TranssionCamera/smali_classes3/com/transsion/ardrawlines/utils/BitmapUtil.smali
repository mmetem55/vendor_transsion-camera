.class public Lcom/transsion/ardrawlines/utils/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# static fields
.field public static final ORIGINAL:I = 0x1

.field public static final TEN:I = 0xa


# direct methods
.method public static synthetic $r8$lambda$rXAEffbI6HVosj8rFFcBBh2ZGMA(ILandroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/ardrawlines/utils/BitmapUtil;->lambda$toThumbnail$0(ILandroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$toThumbnail$0(ILandroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 0

    .line 25
    invoke-virtual {p1, p0}, Landroid/graphics/ImageDecoder;->setTargetSampleSize(I)V

    const/4 p0, 0x1

    .line 26
    invoke-virtual {p1, p0}, Landroid/graphics/ImageDecoder;->setMutableRequired(Z)V

    return-void
.end method

.method public static toRoundInCenter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 44
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 45
    div-int/lit8 v2, v0, 0x2

    .line 46
    div-int/lit8 v3, v1, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v0, v1, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v5

    .line 49
    :goto_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 50
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 51
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v4}, Landroid/graphics/Paint;-><init>(I)V

    if-eqz v6, :cond_2

    int-to-float v3, v3

    int-to-float v2, v2

    .line 53
    invoke-virtual {v8, v3, v2, v3, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    int-to-float v3, v3

    int-to-float v2, v2

    .line 55
    invoke-virtual {v8, v3, v2, v2, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 57
    :goto_1
    invoke-virtual {v9}, Landroid/graphics/Paint;->reset()V

    .line 58
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v2, 0x0

    .line 59
    invoke-virtual {v8, p0, v2, v2, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz v6, :cond_3

    sub-int/2addr v0, v1

    .line 62
    div-int/lit8 v0, v0, 0x2

    invoke-static {v7, v5, v0, v1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_2

    :cond_3
    sub-int/2addr v1, v0

    .line 63
    div-int/lit8 v1, v1, 0x2

    invoke-static {v7, v1, v5, v0, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static toRoundInCenter(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 36
    invoke-static {p0, v0}, Lcom/transsion/ardrawlines/utils/BitmapUtil;->toThumbnail(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/ardrawlines/utils/BitmapUtil;->toRoundInCenter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static toRoundThumbnail(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 32
    invoke-static {p0, v0}, Lcom/transsion/ardrawlines/utils/BitmapUtil;->toThumbnail(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/ardrawlines/utils/BitmapUtil;->toRoundInCenter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static toThumbnail(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 19
    invoke-static {p0, v0}, Lcom/transsion/ardrawlines/utils/BitmapUtil;->toThumbnail(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static toThumbnail(Ljava/io/File;I)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-static {p0}, Landroid/graphics/ImageDecoder;->createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    .line 24
    new-instance v0, Lcom/transsion/ardrawlines/utils/BitmapUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/transsion/ardrawlines/utils/BitmapUtil$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p0, v0}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
